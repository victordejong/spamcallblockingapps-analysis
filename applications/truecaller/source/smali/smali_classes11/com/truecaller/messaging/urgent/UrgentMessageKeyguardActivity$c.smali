.class public final Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$c;->a:Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "service"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p2, Lcom/truecaller/messaging/urgent/service/UrgentMessageService$a;

    .line 2
    iget-object p1, p0, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$c;->a:Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;

    .line 3
    iput-object p2, p1, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;->a:Lcom/truecaller/messaging/urgent/service/UrgentMessageService$a;

    .line 4
    iget-object p1, p1, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;->f:Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$a;

    const-string v0, "listener"

    .line 5
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p2, p2, Lcom/truecaller/messaging/urgent/service/UrgentMessageService$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/a/h1/o/i;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Le/a/a/h1/o/i;->c5(Le/a/a/h1/o/c;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$c;->a:Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;

    .line 2
    sget v0, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;->g:I

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;->qa()V

    return-void
.end method
