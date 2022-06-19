.class public Lcom/hiya/stingray/receiver/RCSEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private a:Lcom/hiya/stingray/s/d/c;

.field b:Lcom/hiya/stingray/manager/q1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/receiver/RCSEventReceiver;->a:Lcom/hiya/stingray/s/d/c;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/hiya/stingray/s/a;->c(Landroid/content/Context;)Lcom/hiya/stingray/s/d/c;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/receiver/RCSEventReceiver;->a:Lcom/hiya/stingray/s/d/c;

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/receiver/RCSEventReceiver;->a(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/receiver/RCSEventReceiver;->a:Lcom/hiya/stingray/s/d/c;

    invoke-interface {v0, p0}, Lcom/hiya/stingray/s/d/c;->c(Lcom/hiya/stingray/receiver/RCSEventReceiver;)V

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "com.gsma.services.rcs.action.RECEIVE_RCS_MESSAGE"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    const-string v1, "FROM"

    .line 6
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v0, "+"

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/receiver/RCSEventReceiver;->b:Lcom/hiya/stingray/manager/q1;

    const v1, 0x7f1102d4

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/hiya/stingray/manager/q1;->o(Ljava/lang/String;Ljava/lang/String;)Li/c/b0/b/e;

    move-result-object p1

    .line 10
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object p2

    invoke-virtual {p1, p2}, Li/c/b0/b/e;->G(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object p1

    new-instance p2, Lcom/hiya/stingray/receiver/RCSEventReceiver$a;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/receiver/RCSEventReceiver$a;-><init>(Lcom/hiya/stingray/receiver/RCSEventReceiver;)V

    new-instance v0, Lcom/hiya/stingray/receiver/RCSEventReceiver$b;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/receiver/RCSEventReceiver$b;-><init>(Lcom/hiya/stingray/receiver/RCSEventReceiver;)V

    .line 11
    invoke-virtual {p1, p2, v0}, Li/c/b0/b/e;->E(Li/c/b0/d/a;Li/c/b0/d/g;)Li/c/b0/c/c;

    :cond_1
    return-void
.end method
