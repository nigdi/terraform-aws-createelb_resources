resource "aws_lb_target_group" "aws_lb_target_group" {
  name     = "${var.name}-target-group-${var.port}"
  port     = var.port
  protocol = "TCP"
  vpc_id   = var.vpc_id
  tags = var.tags
}

#resource "aws_lb_target_group_attachment" "aws_lb_target_group_attachment" {
 # for_each = toset(var.target_id)
 # target_group_arn = aws_lb_target_group.aws_lb_target_group.arn
 # target_id = each.value
 # port      = var.port
#}

resource "aws_lb_listener" "aws_lb_listener" {
  load_balancer_arn = var.load_balancer_arn
  port              = var.port
  protocol          = "TCP"
  default_action {
    type = "forward"
    target_group_arn = aws_lb_target_group.aws_lb_target_group.arn
  }  
}
