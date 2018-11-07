# Instructions on how to setup jenkins on an aws instance
  * Spin up an ec2 instance (TBD: elaborate these steps)
    * AMI: CentOS Linux 6 x86_64 HVM EBS 1704_01 (ami-23285c35)
    * SG: 80/443/8080/8443/22
    * ...
  * `service iptables stop`
  * `service ip6tables stop`
  * install some pre-requisites
    * yum install cloud-init curl dracut-modules-growroot epel-release fontconfig git glibc.i686 lsof nc parted python screen tcpdump telnet unzip wget zip
  * Install oracle jdk
    * install java as per https://www.digitalocean.com/community/tutorials/how-to-install-java-on-centos-and-fedora
    * `wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm"`
    * `yum localinstall jdk-8u131-linux-x64.rpm`
  * Install jenkins rpm
    * `wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo`
    * `rpm --import http://pkg.jenkins-ci.org/redhat-stable/jenkins-ci.org.key`
    * `yum install jenkins`
    * `service jenkins start`
    * open http://jenkins-hostname:8080/ in your browser
  * Install ng
    * `curl --silent --location https://rpm.nodesource.com/setup_8.x | sudo bash -`
    * `sudo yum -y install nodejs`
    * `sudo npm install -g @angular/cli` -- goes into a loop? break it, and rerun the command
  * Install AWS CLI (as root)
    * curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
    * unzip awscli-bundle.zip
    * ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
    * rm -rf awscli-bundle awscli-bundle.zip    
  * Configure AWS CLI (as jenkins)
  * Setup "deploy keys" for all the teams ftp01-10
     * https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/
 
  # Spin up a selenium server
  * Windows server
    * Turn off Enhanced Security
    * Turn off windows firewall (Control Panel, Network, ...)
    * https://letmedothat.wordpress.com/2014/12/27/pratractor-getting-started/
    * 

    
  
