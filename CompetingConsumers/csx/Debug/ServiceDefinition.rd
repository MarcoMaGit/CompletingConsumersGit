<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="CompetingConsumers" generation="1" functional="0" release="0" Id="3a1c5471-82fc-4589-a320-275d59d7c6b0" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="CompetingConsumersGroup" generation="1" functional="0" release="0">
      <settings>
        <aCS name="Receiver:QueueName" defaultValue="">
          <maps>
            <mapMoniker name="/CompetingConsumers/CompetingConsumersGroup/MapReceiver:QueueName" />
          </maps>
        </aCS>
        <aCS name="Receiver:ServiceBusConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/CompetingConsumers/CompetingConsumersGroup/MapReceiver:ServiceBusConnectionString" />
          </maps>
        </aCS>
        <aCS name="ReceiverInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/CompetingConsumers/CompetingConsumersGroup/MapReceiverInstances" />
          </maps>
        </aCS>
        <aCS name="Sender:QueueName" defaultValue="">
          <maps>
            <mapMoniker name="/CompetingConsumers/CompetingConsumersGroup/MapSender:QueueName" />
          </maps>
        </aCS>
        <aCS name="Sender:ServiceBusConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/CompetingConsumers/CompetingConsumersGroup/MapSender:ServiceBusConnectionString" />
          </maps>
        </aCS>
        <aCS name="SenderInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/CompetingConsumers/CompetingConsumersGroup/MapSenderInstances" />
          </maps>
        </aCS>
      </settings>
      <maps>
        <map name="MapReceiver:QueueName" kind="Identity">
          <setting>
            <aCSMoniker name="/CompetingConsumers/CompetingConsumersGroup/Receiver/QueueName" />
          </setting>
        </map>
        <map name="MapReceiver:ServiceBusConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/CompetingConsumers/CompetingConsumersGroup/Receiver/ServiceBusConnectionString" />
          </setting>
        </map>
        <map name="MapReceiverInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/CompetingConsumers/CompetingConsumersGroup/ReceiverInstances" />
          </setting>
        </map>
        <map name="MapSender:QueueName" kind="Identity">
          <setting>
            <aCSMoniker name="/CompetingConsumers/CompetingConsumersGroup/Sender/QueueName" />
          </setting>
        </map>
        <map name="MapSender:ServiceBusConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/CompetingConsumers/CompetingConsumersGroup/Sender/ServiceBusConnectionString" />
          </setting>
        </map>
        <map name="MapSenderInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/CompetingConsumers/CompetingConsumersGroup/SenderInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="Receiver" generation="1" functional="0" release="0" software="D:\Azure\SampleCode\Competing Consumers\CompetingConsumers\csx\Debug\roles\Receiver" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaWorkerHost.exe " memIndex="-1" hostingEnvironment="consoleroleadmin" hostingEnvironmentVersion="2">
            <settings>
              <aCS name="QueueName" defaultValue="" />
              <aCS name="ServiceBusConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;Receiver&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;Receiver&quot; /&gt;&lt;r name=&quot;Sender&quot; /&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/CompetingConsumers/CompetingConsumersGroup/ReceiverInstances" />
            <sCSPolicyUpdateDomainMoniker name="/CompetingConsumers/CompetingConsumersGroup/ReceiverUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/CompetingConsumers/CompetingConsumersGroup/ReceiverFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
        <groupHascomponents>
          <role name="Sender" generation="1" functional="0" release="0" software="D:\Azure\SampleCode\Competing Consumers\CompetingConsumers\csx\Debug\roles\Sender" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaWorkerHost.exe " memIndex="-1" hostingEnvironment="consoleroleadmin" hostingEnvironmentVersion="2">
            <settings>
              <aCS name="QueueName" defaultValue="" />
              <aCS name="ServiceBusConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;Sender&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;Receiver&quot; /&gt;&lt;r name=&quot;Sender&quot; /&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/CompetingConsumers/CompetingConsumersGroup/SenderInstances" />
            <sCSPolicyUpdateDomainMoniker name="/CompetingConsumers/CompetingConsumersGroup/SenderUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/CompetingConsumers/CompetingConsumersGroup/SenderFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="ReceiverUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyUpdateDomain name="SenderUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="ReceiverFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyFaultDomain name="SenderFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="ReceiverInstances" defaultPolicy="[1,1,1]" />
        <sCSPolicyID name="SenderInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
</serviceModel>