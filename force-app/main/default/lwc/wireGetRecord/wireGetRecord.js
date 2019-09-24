import { LightningElement, api, wire, track } from "lwc";
import { createRecord } from "lightning/uiRecordApi";
import { ShowToastEvent } from "lightning/platformShowToastEvent";

import ACCOUNT_OBJECT from "@salesforce/schema/Account";
import NAME_FIELD from "@salesforce/schema/Account.Name";

export default class WireGetRecord extends LightningElement {
  @track accountId;
  name = "";

  @api recordId; //Get record ID from the record page in which the component is placed
  @wire(createRecord, { recordId: "$recordId", fields: [NAME_FIELD] })
  record;

  get GetName() {
    console.log("record", this.record);

    return "Name return";
  }

  handleNameChange(event) {
    this.accountId = undefined;
    this.name = event.target.value;
  }

  createAccount() {
    const fields = {};
    fields[NAME_FIELD.fieldApiName] = this.name;
    const recordInput = { apiName: ACCOUNT_OBJECT.objectApiName, fields };
    createRecord(recordInput)
      .then(account => {
        this.accountId = account.id;
        this.dispatchEvent(
          new ShowToastEvent({
            title: "Success",
            message: "Account created" + this.accountId,
            variant: "success"
          })
        );
      })
      .catch(error => {
        this.dispatchEvent(
          new ShowToastEvent({
            title: "Error creating record",
            message: error.body.message,
            variant: "error"
          })
        );

        console.log("error");
      });
  }
}
