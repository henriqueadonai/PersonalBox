// import module elements
import { LightningElement, track } from 'lwc';

// declare class to expose the component
// LightningElement is our base class for Lightning web components.
export default class App extends LightningElement {
   name = 'Electra X4';
   description = 'A sweet bike built for comfort.';
   category = 'Mountain';
   material = 'Steel';
   price = '$2,700';
   pictureUrl = 'https://s3-us-west-1.amazonaws.com/sfdc-demo/ebikes/electrax4.jpg';
 
   // add decorator   
   //Decorators are often used in JavaScript to extend the behavior of a class, property, getter, setter, or method.
   //************** */
    //    @api: Marks a property as public for use in your template or other components.
    //    @track: Marks a property for internal monitoring. A template or function using this property forces a component to rerender when the property’s value changes. Use this to store values locally, especially as a user interacts with your component.
    //    @wire: Gives you a way to get and bind data. This implementation simplifies getting data from a Salesforce org.

   @track
   ready = false;
   // use lifecycle hook
   //The Lightning Web Component model provides methods that allow you to “hook” your code up to critical events in a component’s lifecycle. 
   //These events include when a component is:    
    //*  Created
    //*  Added to the DOM
    //*  Rendered in the browser
    //*  Encountering errors
    //*  Removed from the DOM


    //connectedCallback() is invoked when a component is inserted into the DOM
    //disconnectedCallback() is invoked when a component is removed from the DOM
   connectedCallback() {
       setTimeout(() => {
           //this keyword in JavaScript refers to the top level of the current context.
           this.ready = true;
       }, 3000);
   }
}