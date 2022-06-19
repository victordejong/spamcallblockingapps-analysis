.class public Lcom/truecaller/callerid/callstate/CallStateService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/callerid/callstate/CallStateService$b;
    }
.end annotation


# static fields
.field public static e:Z = false


# instance fields
.field public final a:Lcom/truecaller/callerid/callstate/CallStateService$b;

.field public b:Le/a/p5/a0;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Le/a/d0/b/j;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Lcom/truecaller/callerid/callstate/CallStateService$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/truecaller/callerid/callstate/CallStateService$b;-><init>(Lcom/truecaller/callerid/callstate/CallStateService;Lcom/truecaller/callerid/callstate/CallStateService$a;)V

    iput-object v0, p0, Lcom/truecaller/callerid/callstate/CallStateService;->a:Lcom/truecaller/callerid/callstate/CallStateService$b;

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/callerid/callstate/CallStateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    const-string v0, "phone"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2
    iget-object v1, p0, Lcom/truecaller/callerid/callstate/CallStateService;->a:Lcom/truecaller/callerid/callstate/CallStateService$b;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/TrueApp;->c0()Le/a/d0/b/h;

    move-result-object v0

    invoke-interface {v0, p0}, Le/a/d0/b/h;->a(Lcom/truecaller/callerid/callstate/CallStateService;)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/callerid/callstate/CallStateService;->b:Le/a/p5/a0;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "android.permission.READ_CALL_LOG"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v0

    .line 4
    iput-boolean v0, p0, Lcom/truecaller/callerid/callstate/CallStateService;->d:Z

    const/16 v0, 0x20

    .line 5
    invoke-virtual {p0, v0}, Lcom/truecaller/callerid/callstate/CallStateService;->a(I)V

    const/4 v0, 0x1

    .line 6
    sput-boolean v0, Lcom/truecaller/callerid/callstate/CallStateService;->e:Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/truecaller/callerid/callstate/CallStateService;->a(I)V

    .line 3
    sput-boolean v0, Lcom/truecaller/callerid/callstate/CallStateService;->e:Z

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
