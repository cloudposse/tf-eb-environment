## terraform-aws-elastic-beanstalk-environment
<!---
  --- This file was automatically generated by the `build-harness`
  --- Make changes instead to `.README.md` and rebuild.
  --->

Terraform module to provision AWS Elastic Beanstalk environment


## Input

<!--------------------------------REQUIRE POSTPROCESSING-------------------------------->
|  Name |  Default  |  Description  |
|:------|:---------:|:--------------:|
| alb_zone_id |{} |ALB zone id  |
| app |__REQUIRED__ |Application name  |
| attributes |[] |Attributes for naming  |
| autoscale_lower_bound |"20" |Minimum level of autoscale metric to add instance  |
| autoscale_max |"3" |Maximum instances in charge  |
| autoscale_min |"2" |Minumum instances in charge  |
| autoscale_upper_bound |"80" |Maximum level of autoscale metric to remove instance  |
| config_source |"" |S3 source for config  |
| delimiter |"-" |Delimeter for naming  |
| env_default_key |"DEFAULT_ENV_%d" |Empty environment variable name  |
| env_default_value |"UNSET" |Empty environment variable value  |
| env_vars |{} |Environment variables  |
| healthcheck_url |"/healthcheck" |Healthcheck url  |
| http_listener_enabled |"false" |Enable port 80 (http)  |
| instance_type |"t2.micro" |Instances type  |
| keypair |__REQUIRED__ |SSH keypair name for instances  |
| loadbalancer_certificate_arn |"" |Loadbalancer https certificate arn  |
| loadbalancer_type |"classic" |Loadbalancer type  |
| name |"app" |Name  |
| namespace |"global" |Namespace  |
| notification_endpoint |"" |Notification endpoint  |
| notification_protocol |"email" |Notification protocol  |
| notification_topic_arn |"" |Notification arn topic  |
| notification_topic_name |"" |Notification topic name  |
| private_subnets |__REQUIRED__ |Private subnets for instances  |
| public_subnets |__REQUIRED__ |Public subnets for lb  |
| security_groups |__REQUIRED__ |Security groups  |
| solution_stack_name |"" |Solution stack name  |
| ssh_listener_enabled |"false" |Enable ssh port  |
| ssh_listener_port |"22" |SSH port  |
| stage |"default" |Staging  |
| tags |{} |Tags  |
| updating_max_batch |"1" |Maximum count of instances up during update  |
| updating_min_in_service |"1" |Minimum count of instances up during update  |
| vpc_id |__REQUIRED__ |VPC id  |
| zone_id |"" |DNS zone id  |
## Output

<!--------------------------------REQUIRE POSTPROCESSING-------------------------------->
|  Name | Description  |
|:------|:------------:|
| ec2_instance_profile_role_name |   |
| elb_dns_name |   |
| elb_zone_id |   |
| host |   |
| name |   |
| security_group_id |   |

## Help

**Got a question?**

File a GitHub [issue](https://github.com/cloudposse/terraform-aws-elastic-beanstalk-environment/issues), send us an [email](mailto:hello@cloudposse.com) or reach out to us on [Gitter](https://gitter.im/cloudposse/).
## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/cloudposse/terraform-aws-elastic-beanstalk-environment/issues) to report any bugs or file feature requests.

### Developing

If you are interested in being a contributor and want to get involved in developing `terraform-aws-elastic-beanstalk-environment`, we would love to hear from you! Shoot us an [email](mailto:hello@cloudposse.com).

In general, PRs are welcome. We follow the typical "fork-and-pull" Git workflow.

 1. **Fork** the repo on GitHub
 2. **Clone** the project to your own machine
 3. **Commit** changes to your own branch
 4. **Push** your work back up to your fork
 5. Submit a **Pull request** so that we can review your changes

**NOTE:** Be sure to merge the latest from "upstream" before making a pull request!
## License

[APACHE 2.0](LICENSE) © 2017 [Cloud Posse, LLC](https://cloudposse.com)

See [LICENSE](LICENSE) for full details.

    Licensed to the Apache Software Foundation (ASF) under one
    or more contributor license agreements.  See the NOTICE file
    distributed with this work for additional information
    regarding copyright ownership.  The ASF licenses this file
    to you under the Apache License, Version 2.0 (the
    "License"); you may not use this file except in compliance
    with the License.  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.
## About

This project is maintained and funded by [Cloud Posse, LLC][website]. Like it? Please let us know at <hello@cloudposse.com>

We love [Open Source Software](https://github.com/cloudposse/)!

See [our other projects][community]
or [hire us][hire] to help build your next cloud-platform.

  [website]: http://cloudposse.com/
  [community]: https://github.com/cloudposse/
  [hire]: http://cloudposse.com/contact/

### Contributors

|[![Erik Osterman][erik_img]][erik_web]<br/>[Erik Osterman][erik_web] |[![Igor Rodionov][igor_img]][igor_web]<br/>[Igor Rodionov][igor_img] |[![Andriy Knysh][andriy_img]][andriy_web]<br/>[Andriy Knysh][andriy_web] |
|---|---|---|

[andriy_img]: https://avatars0.githubusercontent.com/u/7356997?v=4&u=ed9ce1c9151d552d985bdf5546772e14ef7ab617&s=144
[andriy_web]: https://github.com/aknysh/

[erik_img]: http://s.gravatar.com/avatar/88c480d4f73b813904e00a5695a454cb?s=144
[erik_web]: https://github.com/osterman/

[igor_img]: http://s.gravatar.com/avatar/bc70834d32ed4517568a1feb0b9be7e2?s=144
[igor_web]: https://github.com/goruha/

[konstantin_img]: https://avatars1.githubusercontent.com/u/11299538?v=4&u=ed9ce1c9151d552d985bdf5546772e14ef7ab617&s=144
[konstantin_web]: https://github.com/comeanother/

[sergey_img]: https://avatars1.githubusercontent.com/u/1134449?v=4&u=ed9ce1c9151d552d985bdf5546772e14ef7ab617&s=144
[sergey_web]: https://github.com/s2504s/

[valeriy_img]: https://avatars1.githubusercontent.com/u/10601658?v=4&u=ed9ce1c9151d552d985bdf5546772e14ef7ab617&s=144
[valeriy_web]: https://github.com/drama17/

[vladimir_img]: https://avatars1.githubusercontent.com/u/26582191?v=4&u=ed9ce1c9151d552d985bdf5546772e14ef7ab617&s=144
[vladimir_web]: https://github.com/SweetOps/
