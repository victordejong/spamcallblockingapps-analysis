.class public final Lcom/truecaller/messaging/urgent/service/UrgentMessageService$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/messaging/urgent/service/UrgentMessageService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/messaging/urgent/service/UrgentMessageService;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/urgent/service/UrgentMessageService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/messaging/urgent/service/UrgentMessageService$b;->a:Lcom/truecaller/messaging/urgent/service/UrgentMessageService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "conversation_id"

    const-wide/16 v0, -0x1

    .line 1
    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    .line 2
    iget-object v0, p0, Lcom/truecaller/messaging/urgent/service/UrgentMessageService$b;->a:Lcom/truecaller/messaging/urgent/service/UrgentMessageService;

    .line 3
    iget-object v0, v0, Lcom/truecaller/messaging/urgent/service/UrgentMessageService;->b:Le/a/a/h1/o/i;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1, p2}, Le/a/a/h1/o/i;->Nf(J)V

    return-void

    :cond_0
    const-string p1, "presenter"

    .line 5
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
