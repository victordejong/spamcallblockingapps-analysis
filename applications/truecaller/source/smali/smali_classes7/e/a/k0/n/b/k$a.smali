.class public final Le/a/k0/n/b/k$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k0/n/b/k;-><init>(Ls1/w/f;Ls1/w/f;Landroid/content/Context;Lcom/truecaller/callrecording/CallRecordingManager;Le/a/k0/a/j;Landroid/telephony/TelephonyManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/k0/n/b/k;


# direct methods
.method public constructor <init>(Le/a/k0/n/b/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/k0/n/b/k$a;->a:Le/a/k0/n/b/k;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ExtraPosY"

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 2
    iget-object p2, p0, Le/a/k0/n/b/k$a;->a:Le/a/k0/n/b/k;

    .line 3
    iget-object v1, p2, Le/a/k0/n/b/k;->a:Le/a/k0/n/b/i;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p2, p1}, Le/a/k0/n/b/k;->d(I)Ls1/k;

    move-result-object p1

    .line 5
    iget-object p1, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 6
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 7
    iget-boolean p2, v1, Le/a/k0/n/b/i;->b:Z

    if-eqz p2, :cond_1

    .line 8
    iget-object p2, v1, Le/a/k0/n/b/i;->c:Lcom/truecaller/callrecording/ui/bubble/BubblesService;

    .line 9
    iget-object v1, p2, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p2, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;

    .line 11
    invoke-virtual {v0}, Le/a/k0/n/b/f;->getViewParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p2, v1, p1}, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->a(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Le/a/k0/n/b/f;->setViewParams(Landroid/view/WindowManager$LayoutParams;)V

    .line 13
    iget-object v1, p2, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->c:Landroid/os/Handler;

    new-instance v2, Le/a/k0/n/b/d;

    invoke-direct {v2, p2, v0, p1}, Le/a/k0/n/b/d;-><init>(Lcom/truecaller/callrecording/ui/bubble/BubblesService;Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
