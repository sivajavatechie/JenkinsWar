echo "Select the region you wish to launch your Instance
1. Mumbai
2. Tokyo
3. virginia
4. Singapore "
read -p "choose option to launch instance:" num1
printf "\n";
case "$num1" in
     "1")
       region=ap-south-1;;
     "2")
       region=ap-northeast-1;;
     "3")
       region=us-east-1;;
     "4")
       region=ap-southeast-1;;
esac
echo "List of instance types
1.t2.micro
2.t2.medium
3.t2.large
4.t2.xlarge "
read -p "choose instance type:" num2
printf "\n";
case "$num2" in
     "1")
       instance_type=t2.micro;;
     "2")
       instance_type=t2.medium;;
     "3")
       instance_type=t2.large;;
     "4")
       instance_type=t2.xlarge;;
esac
echo "list of AMI
1.Amazon Linux
2.Ubuntu
3.Windows "
read -p "choose ami:" num3
printf "\n";
case "$num3" in
       "1")
             ami=ami-0b5eea76982371e91;;
       "2")
             ami=ami-00eeedc4036573771w;;
       "3")
             ami=ami-0dc21fb273a648e34;;
esac
echo "List of keypairs
1.Existing keypairs
2.New keypair "
read -p "choose keypair types:" num4
printf "\n";
case "$num4" in
      "1")
            keypair=SuperKey-Oct16;;
      "2")
        echo "create new keypair"
        read -p "Enter username:" user
          keypair=$user-`date "+ %m%d"`
          echo "keypair: $keypair"
esac
echo "List of security group id
1.sg-003ca354e40035e19
2.sg-06c97261a447e91cb
3.sg-047525af6d86449db "
read -p "choose security group id:" num5
printf "\n";
case "$num5" in
      "1")
            sg=sg-003ca354e40035e19;;
      "2")
            sg=sg-06c97261a447e91cb;;
      "3")
            sg=sg-047525af6d86449db;;
esac
echo "List of output types
1.text
2.table
3.json "
printf "\n";
read -p "choose output type:" num6
case "$num6" in
      "1")
            output=text;;
      "2")
            output=table;;
      "3")
            output=json;;
esac
echo "List of subnet ids
1.virginia subnet
2.mumbai subnet "
printf "\n";
read -p "choose subnet id:" num7
case "$num7" in
        "1")
           subnetid=subnet-062f1f5623a6c948b;;
        "2")
           subnetid=subnet-0140b1a2572b6c7a7;;
esac

echo "you have selected all the inputs"
echo "Now Instance is getting created "
aws ec2 run-instances \
        --region $region \
            --instance-type $instance_type \
        --image-id $ami \
        --key-name $keypair \
        --security-group-ids $sg \
        --subnet-id $subnetid \
        --output $output
echo "Instance has been successfully created"
