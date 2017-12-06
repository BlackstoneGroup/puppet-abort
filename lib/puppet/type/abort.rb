Puppet::Type.newtype(:abort) do
    newparam(:name, :namevar => true) do
        desc "Not used, but required by Puppet"
    end
    
    newparam(:message) do
        desc "What you want the message to say before it prints"
    end

    def refresh
        provider.endrun
    end
end