return {
    newESPTab = function(mainGUIInstance, moduleData)
        local espModule = moduleData and
        (type(moduleData) == "function" and moduleData() or loadstring(moduleData)())
        or loadstring(_G["EzHubModules"]["espmodule"])();    -- default

        local tab = mainGUIInstance.newTab("ESP");
        tab.newTitle("ESP Engine V4");
        tab.newDiv();

        tab.newCheckbox("Enabled", espModule.enabled, function(state)
            espModule.enabled = state;
        end)
        
        tab.newDiv();
        tab.newTitle("ESP Elements");
        
        tab.newCheckbox("Tracer", espModule.tracer, function(state)
            espModule.tracer = state;
        end)
        
        tab.newCheckbox("Headdot", espModule.headdot, function(state)
            espModule.headdot = state;
        end)
        
        tab.newCheckbox("Info Tag", espModule.tag, function(state)
            espModule.tag = state;
        end)
        
        tab.newDiv();
        tab.newTitle("ESP Behaviour");
        
        tab.newCheckbox("Lock to cursor", espModule.locktocursor, function(state)
            espModule.locktocursor = state;
        end)
        
        tab.newCheckbox("Teamcheck", espModule.teamcheck, function(state)
            espModule.teamcheck = state;
        end)
        
        tab.newSlider("Render Range", espModule.renderrange, 100, 5000, function(val)
            espModule.renderrange = val;
        end)
        
        tab.newDiv();
        tab.newTitle("ESP Colors");
        
        tab.newCheckbox("Rainbow", espModule.rainbowcolor, function(state)
            espModule.rainbowcolor = state;
        end)
        
        tab.newSlider("Rainbow Speed", espModule.rainbowspeed, 1, 5, function(val)
            espModule.rainbowspeed = val;
        end)
        
        tab.newCheckbox("Team Color", espModule.teamcolor, function(state)
            espModule.teamcolor = state;
        end)
        
        tab.newDiv();
        tab.newTitle("ESP Default Color");
        tab.newSlider("R", espModule.setcolor[1], 0, 255, function(val)
            espModule.setcolor[1] = val;
        end)
        tab.newSlider("G", espModule.setcolor[2], 0, 255, function(val)
            espModule.setcolor[2] = val;
        end)
        tab.newSlider("B", espModule.setcolor[3], 0, 255, function(val)
            espModule.setcolor[3] = val;
        end)
        
        tab.newDiv();
        tab.newTitle("Headdot Settings");
        
        tab.newCheckbox("Headdot Filled", espModule.headdotfilled, function(state)
            espModule.headdotfilled = state;
        end)
        
        tab.newSlider("Headdot Scale", espModule.headdotscale * 2, 1, 10, function(val)
            espModule.headdotscale = val / 2;
        end)
    end
}
