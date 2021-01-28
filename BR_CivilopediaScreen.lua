-- Base File
include("CivilopediaScreen")

-- Cache base functions
BR_BASE_PageLayouts = {}
BR_BASE_OnOpenCivilopedia = OnOpenCivilopedia


function OnOpenCivilopedia(sectionId_or_search, pageId)
	BR_BASE_OnOpenCivilopedia(sectionId_or_search, pageId)
	Controls.SearchEditBox:TakeFocus()
end