public with sharing class SendEmailController {
    /*init class variables */
    public String firstTabActive {get;set;}
    public String secondTabActive {get;set;}
    public String thirdTabActive {get;set;}
    public String fourthTabActive {get;set;}
    public List<CampaignMember>campList {get;set;}
    // allow users to select multiple contact cards
    public String selectedTargetOption {get;set;}
    public Integer debugVal {get;set;}
    public String emailTemplate {get;set;}
    public String emailTemplateName {get;set;}
    public Boolean showSelectionHead {get;set;}
    public Boolean requestSubmitted {get;set;}
    public Boolean visitedFirstpage {get;set;}
    public String emailTemplateFolderId {get;set;}
    public String selectedContactCardName {get;set;}
    // selectedContactCardIds = selected recipients json storage
    public String selectedContactCardIds {get;set;}
    private Map<String, Schema.sObject.Field> accountFieldMap = null;
    private List<MM_Commons.ListViewDetls> contactCardListViews = null;
    public Boolean doContactCarsListViewRefresh {get;set;}
    public Map<Id, String> listViewsNames {get;set;}
    public Map<Id, String> selectedCampaignNames {get;set;}
    public String targetListView {get;set;}
    private String listViewQry = null;
    public String selectedContactCard {get;set;}
    private Boolean isSavedPerformed = false;
    public String query {get;set;}
    public Set<Id> campaignIds {get;set;}
    // default columns for contact card view
    public Set<String> contactCardViewColumns = new Set<String>{'FirstName', 'LastName', 'PersonConactId'};
    private Set<String> resetContactCardViewColumns = new Set<String>{'FirstName', 'LastName', 'PersonConactId'};
    public List<List<Map<String, String>>> selectedTargetList {get;set;}
    public String deleteTableRecords {get;set;}
    

}
