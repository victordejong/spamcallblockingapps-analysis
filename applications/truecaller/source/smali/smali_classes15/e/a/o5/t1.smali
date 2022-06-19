.class public final Le/a/o5/t1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o5/s1;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/p5/a0;

.field public final c:Le/a/p5/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/p5/a0;Le/a/p5/g;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/o5/t1;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/o5/t1;->b:Le/a/p5/a0;

    iput-object p3, p0, Le/a/o5/t1;->c:Le/a/p5/g;

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Z
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/o5/t1;->a:Landroid/content/Context;

    .line 2
    iget-object v1, p0, Le/a/o5/t1;->b:Le/a/p5/a0;

    const-string v2, "android.permission.READ_PHONE_STATE"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    move v0, v2

    goto :goto_3

    :cond_1
    const-string v1, "telecom"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/telecom/TelecomManager;

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    check-cast v0, Landroid/telecom/TelecomManager;

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v1

    const-string v4, "telecomManager.callCapablePhoneAccounts"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/PhoneAccountHandle;

    .line 6
    invoke-virtual {v0, v4}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v4

    if-eqz v4, :cond_3

    const/16 v5, 0x8

    .line 7
    invoke-virtual {v4, v5}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    const/16 v0, 0x100

    .line 9
    invoke-virtual {v4, v0}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    goto :goto_3

    :cond_6
    :goto_2
    move v0, v3

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "Couldn\'t get video calling availability"

    .line 10
    invoke-static {v0, v1}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :goto_3
    and-int/2addr v0, v3

    if-eqz v0, :cond_7

    move v2, v3

    :cond_7
    return v2
.end method
