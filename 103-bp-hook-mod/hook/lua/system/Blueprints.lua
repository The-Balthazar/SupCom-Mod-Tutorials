do
    local OldModBlueprints = ModBlueprints

    function ModBlueprints(all_blueprints)
        OldModBlueprints(all_blueprints)

        for id, bp in all_blueprints.Unit do
            SetTo69Health(bp)
        end
    end

    function SetTo69Health(bp)
        if bp.Defense and bp.Defense.MaxHealth then
            local mathsWizardry = math.floor(math.pow(10, math.floor(math.log10(bp.Defense.MaxHealth))) * 6.96969696969696969696969696)

            bp.Defense.Health = mathsWizardry
            bp.Defense.MaxHealth = mathsWizardry
        end
    end
end
