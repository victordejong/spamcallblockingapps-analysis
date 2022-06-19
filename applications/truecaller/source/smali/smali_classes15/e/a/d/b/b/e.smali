.class public final Le/a/d/b/b/e;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;


# direct methods
.method public constructor <init>(Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/d/b/b/e;->a:Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/d/b/b/e;->a:Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;

    .line 2
    iget-object p1, p1, Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;->g:Le/a/d/c0/m1;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 3
    invoke-static {p1, p2, v0, p2}, Le/a/p5/s0/g;->u0(Le/a/d/c0/m1;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Le/a/d/b/b/e;->a:Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;

    .line 5
    iget-object p1, p1, Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;->f:Le/a/d/b/b/h;

    if-eqz p1, :cond_0

    .line 6
    check-cast p1, Le/a/d/b/b/b;

    .line 7
    iget-object p2, p1, Le/a/d/b/b/b;->r:Le/a/d/c0/o;

    invoke-interface {p2}, Le/a/d/c0/o;->a()V

    .line 8
    iget-object p1, p1, Le/a/d/b/b/b;->p:Le/a/d/c0/x1/e;

    invoke-interface {p1}, Le/a/d/c0/x1/e;->c()V

    goto :goto_0

    :cond_0
    const-string p1, "presenter"

    .line 9
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string p1, "voipTelecomUtil"

    .line 10
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p2
.end method
