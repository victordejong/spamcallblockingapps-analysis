.class public Lcom/truecaller/service/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Device boot"

    aput-object v2, v0, v1

    .line 2
    invoke-static {v0}, Le/a/n3/a/b;->a([Ljava/lang/Object;)V

    .line 3
    invoke-static {p1, p2}, Lcom/truecaller/service/AlarmReceiver;->a(Landroid/content/Context;Z)V

    .line 4
    invoke-static {p1}, Lcom/truecaller/callerid/callstate/CallStateService;->b(Landroid/content/Context;)V

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Le/a/w1;

    .line 6
    invoke-interface {p1}, Le/a/w1;->s()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->a7()Le/a/r2/f;

    move-result-object v0

    .line 7
    invoke-interface {p1}, Le/a/w1;->s()Le/a/j2;

    move-result-object p1

    invoke-interface {p1}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object p1

    const-string v1, "android.permission.READ_SMS"

    .line 8
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/g/m;

    invoke-interface {p1, p2}, Le/a/a/g/m;->T(Z)V

    :cond_0
    return-void
.end method
