require "roxml"
require "ddex/element"

require "ddex/ern/v341/catalog_transfer"
require "ddex/ern/v341/collection_list"
require "ddex/ern/v341/cue_sheet_list"
require "ddex/ern/v341/deal_list"
require "ddex/ern/v341/release_list"
require "ddex/ern/v341/resource_list"
require "ddex/v20120404/ddexc/message_header"
require "ddex/v20120404/ddexc/work_list"

module DDEX module ERN module V341

class NewReleaseMessage < Element
  include ROXML

      
  setns "ns2", "http://ddex.net/xml/ern/341"
  
  xml_name "NewReleaseMessage"

      xml_accessor :message_header, :as => DDEX::V20120404::DDEXC::MessageHeader, :from => "MessageHeader", :required => true

      xml_accessor :update_indicator, :from => "UpdateIndicator", :required => true

      xml_accessor :catalog_transfer, :as => DDEX::ERN::V341::CatalogTransfer, :from => "CatalogTransfer", :required => false

      xml_accessor :work_list, :as => DDEX::V20120404::DDEXC::WorkList, :from => "WorkList", :required => false

      xml_accessor :cue_sheet_list, :as => DDEX::ERN::V341::CueSheetList, :from => "CueSheetList", :required => false

      xml_accessor :resource_list, :as => DDEX::ERN::V341::ResourceList, :from => "ResourceList", :required => true

      xml_accessor :collection_list, :as => DDEX::ERN::V341::CollectionList, :from => "CollectionList", :required => false

      xml_accessor :release_list, :as => DDEX::ERN::V341::ReleaseList, :from => "ReleaseList", :required => true

      xml_accessor :deal_list, :as => DDEX::ERN::V341::DealList, :from => "DealList", :required => false



  
      xml_accessor :message_schema_version_id, :from => "@MessageSchemaVersionId", :required => true
    
  
      xml_accessor :business_profile_version_id, :from => "@BusinessProfileVersionId", :required => false
    
  
      xml_accessor :release_profile_version_id, :from => "@ReleaseProfileVersionId", :required => false
    
  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
end

end end end