.class final Lcom/hiya/client/callerid/ui/incallui/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/incallui/h;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/incallui/h;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/incallui/h;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/h$b;->f:Lcom/hiya/client/callerid/ui/incallui/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/h$b;->f:Lcom/hiya/client/callerid/ui/incallui/h;

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/incallui/h;->c1(Lcom/hiya/client/callerid/ui/incallui/h;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/hiya/client/callerid/ui/incallui/h$b$a;

    invoke-direct {v1, p0}, Lcom/hiya/client/callerid/ui/incallui/h$b$a;-><init>(Lcom/hiya/client/callerid/ui/incallui/h$b;)V

    .line 2
    iget-object v2, p0, Lcom/hiya/client/callerid/ui/incallui/h$b;->f:Lcom/hiya/client/callerid/ui/incallui/h;

    invoke-static {v2}, Lcom/hiya/client/callerid/ui/incallui/h;->b1(Lcom/hiya/client/callerid/ui/incallui/h;)J

    move-result-wide v2

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/h$b;->f:Lcom/hiya/client/callerid/ui/incallui/h;

    sget v1, Lcom/hiya/client/callerid/ui/p;->L:I

    invoke-virtual {v0, v1}, Lcom/hiya/client/callerid/ui/incallui/h;->a1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/16 v0, 0x3e8

    .line 5
    iget-object v2, p0, Lcom/hiya/client/callerid/ui/incallui/h$b;->f:Lcom/hiya/client/callerid/ui/incallui/h;

    invoke-virtual {v2, v1}, Lcom/hiya/client/callerid/ui/incallui/h;->a1(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    const-string v3, "dismissProgress"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 6
    iget-object v2, p0, Lcom/hiya/client/callerid/ui/incallui/h$b;->f:Lcom/hiya/client/callerid/ui/incallui/h;

    invoke-virtual {v2, v1}, Lcom/hiya/client/callerid/ui/incallui/h;->a1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const-string v0, "progress"

    invoke-static {v1, v0, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/hiya/client/callerid/ui/incallui/h$b;->f:Lcom/hiya/client/callerid/ui/incallui/h;

    invoke-static {v1}, Lcom/hiya/client/callerid/ui/incallui/h;->b1(Lcom/hiya/client/callerid/ui/incallui/h;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 8
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method
