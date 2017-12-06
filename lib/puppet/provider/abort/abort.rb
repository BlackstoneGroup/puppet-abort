Puppet::Type.type(:abort).provide(:abort) do
    desc "Aborts the current puppet run"
    
    def endrun
        notice(:message)
        Puppet::Application.stop!
    end
end