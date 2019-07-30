import { LightningElement, api } from 'lwc';
import { getRecord } from 'lightning/uiRecordApi';


export default class UploadPhotos extends LightningElement {
    @api myRecordId;

    
    
    

    get acceptedFormats() {
        return ['.pdf', '.png','.jpg'];
    }

    handleUploadFinished(event) {
        // Get the list of uploaded files
        const uploadedFiles = event.detail.files;
        alert("No. of files uploaded : " + uploadedFiles.length);
    }

}