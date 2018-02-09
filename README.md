# Email Processess

## Campaigns
* [Salesforce Campaign Implementaiton Guide](https://resources.docs.salesforce.com/208/latest/en-us/sfdc/pdf/salesforce_campaign_implementation_guide.pdf)

## Notes
* [Data Access and Views: What’s Different or Not Available in Lightning Experience](https://help.salesforce.com/articleView?id=lex_gaps_limitations_data_access.htm&type=5)
* https://jenwlee.wordpress.com/2016/07/05/standard-email-message-object-process-builderflow-use-case-create-task-when-follow-up-email-sent/

* https://developer.salesforce.com/forums/?id=906F00000008um5IAA

* https://developer.salesforce.com/docs/atlas.en-us.api.meta/api/sforce_api_objects_emailmessage.htm
* https://help.salesforce.com/articleView?id=workflow_rules_define.htm&type=0
* https://help.salesforce.com/articleView?id=useful_advanced_formulas_lead_mgmt.htm&type=5
* https://help.salesforce.com/articleView?id=customize_functions_a_h.htm&type=0
* http://resources.docs.salesforce.com/210/13/en-us/sfdc/pdf/salesforce_useful_workflow_rules.pdf
* file:///Users/vukdukic/Desktop/SFDC/salesforce_useful_workflow_rules.pdf
* http://developer.force.com/cookbook/recipe/creating-email-templates-and-automatically-sending-emails
* https://help.salesforce.com/articleView?id=workflow_time_action_considerations.htm&type=0
* https://success.salesforce.com/answers?id=90630000000gx3AAAQ
* https://success.salesforce.com/answers?id=9063A000000l0XOQAY
* https://developer.salesforce.com/docs/atlas.en-us.fundamentals.meta/fundamentals/adg_simple_app_adv_fields_formula.htm
* https://developer.salesforce.com/docs/atlas.en-us.210.0.usefulFormulaFields.meta/usefulFormulaFields/formula_using_date_datetime.htm
* https://app.pipedrive.com/auth/login?return_url=https%3A%2F%2Farcwaterdamage.pipedrive.com%2Forganization%2F1180

## Time-Based Workflow

It looks like we need to build this from the opportunity object.  We would setup a "Time-Based Workflow" via "Process Builder".  The timing would be based on X days after the opportunity is closed.  So this assumption is based on the idea that ARC would create and close opportunities for each referral they receive.  Once the opportunity is closed, a time-based workflow would execute.  We would need a filter to screen out other activities before the close date.  One thing I have not worked out is how this is prevented for clients where new opportunities are received after the last opportunity, so there is at least one other catch to this I have to sort out. 

Salesforce also cannot fire email through Process Builder to non-users.  The workaround for this appears to be the need to build a lookup from the opportunity object to the contact object and pull in the appropriate (Primary) contact.  Since this is not a standard field in Salesforce we would need to likely designate a primary contact and then use the lookup to populate the opportunity accordingly.  

Here's a use case that talks about the lookup setup process (2nd use case).  https://judisohn.com/2015/04/06/using-salesforce-process-builder-flow-with-opportunity-contact-roles/
