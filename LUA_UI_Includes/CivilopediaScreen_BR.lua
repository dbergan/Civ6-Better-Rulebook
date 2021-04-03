-- DB - Civilopedia automatically starts in the search box, so you can quickly F9 then type [ALL]
PRIOR_OnOpenCivilopedia = OnOpenCivilopedia

function OnOpenCivilopedia(sectionId_or_search, pageId)
	PRIOR_OnOpenCivilopedia(sectionId_or_search, pageId)
	Controls.SearchEditBox:TakeFocus()
end
-- /DB