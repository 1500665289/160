local NOFIRE = GameMain:GetMod("NOFIRE")

function NOFIRE:OnInit()
    self.time = 0
    self.flag = 0
    self:RegisterEvent("OnStep")
end

function NOFIRE:OnStep(dt)
    if self.flag == 0 then
        self.time = self.time + dt
        if self.time >= 10 then
            self.flag = 1
            CS.GameMain.Instance.NoBurning = true
        end
    end
end
