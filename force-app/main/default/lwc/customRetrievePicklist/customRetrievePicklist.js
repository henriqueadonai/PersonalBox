import {
    LightningElement,
    track,
    api,
    wire
} from 'lwc';
import {
    getObjectInfo,
    getPicklistValues
} from 'lightning/uiObjectInfoApi';
import {
    getRecord,
    updateRecord
} from 'lightning/uiRecordApi';
import {
    ShowToastEvent
} from 'lightning/platformShowToastEvent';




export default class CustomRetrievePicklist extends LightningElement {

    //Page context
    @api recordId;
    @api objectApiName;

    // App Builder parameters
    @api label;
    @api qualifiedFieldName;

    //To track a private property’s value and rerender a component when it changes, decorate the property with @track. Tracked properties are also called private reactive properties.
    @track recordTypeId;
    @track picklistValue;
    @track buttons = [];
    @track errorMessage;


    hasRecordTypeId;
    defaultRecordTypeId;

    @wire(getObjectInfo, {
        objectApiName: '$objectApiName'
    })
    getObjectInfo({
        error,
        data
    }) {
        if (data) {
            this.defaultRecordTypeId = data.defaultRecordTypeId;
            // Check if we need to override record type with default
            if (this.hasRecordTypeId === false) {
                console.log('Has record type');
                this.recordTypeId = this.defaultRecordTypeId;
            } else if (error) {
                //handle error
                console.log('error');
            }

        }


    }


    // Extract current picklist value for this record
    @wire(getRecord, {
        recordId: '$recordId',
        fields: '$qualifiedFieldName'
    })
    getRecord({
        error,
        data
    }) {
        if (data) {
            console.log('has get Recird', data);
            // Check if record data includes record type
            if (data.recordTypeInfo) {
                this.hasRecordTypeId = true;
                this.recordTypeId = data.recordTypeInfo.recordTypeId;
            } else { // Record type is missing from record data
                this.hasRecordTypeId = false;
                // Use default type if available (it could still be loading)
                if (this.defaultRecordTypeId) {
                    this.recordTypeId = this.defaultRecordTypeId;
                }
            }
            // Get current picklist value
            const fieldName = this.getFieldName();
            console.log('fieldname', data.fields[fieldName])
            this.picklistValue = data.fields[fieldName].value;
        } else if (error) {
            // Handle error
        }
    }
    getFieldName() {
        console.log('get field Name');
        return this.qualifiedFieldName.substring(this.qualifiedFieldName.indexOf('.') + 1);
    }

    @wire(getPicklistValues, {
        recordTypeId: '$recordTypeId',
        fieldApiName: '$qualifiedFieldName'
    })
    getPicklistValues({
        error,
        data
    }) {
        if (data) {

            console.log('Map picklist values to buttons', data.values);
            this.buttons = data.values.map(plValue => {
                return {
                    label: plValue.label,
                    value: plValue.value
                };
            });
        } else if (error) {
            console.log('Error getPicklistValues');
        }
    }

    handleChange(event) {
        const {
            value
        } = event.detail;
        console.log('Update record');
        // Prepare updated record fields
        const fieldName = this.getFieldName();
        const fields = {
            Id: this.recordId
        };
        fields[fieldName] = value;
        const recordInput = {
            fields
        };
        // Update record
        updateRecord(recordInput)
            .then(() => {
                this.dispatchEvent(
                    new ShowToastEvent({
                        title: 'Success',
                        message: 'Record updated',
                        variant: 'success'
                    })
                );
            })
            .catch(error => {
                console.log('error', error);
                // const message = this.reduceErrors(error);
                // this.dispatchEvent(
                //     new ShowToastEvent({
                //         title: 'Error updating record',
                //         message,
                //         variant: 'error'
                //     })
                // );
            });
    }
}