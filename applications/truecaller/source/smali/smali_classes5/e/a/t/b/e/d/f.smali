.class public final Le/a/t/b/e/d/f;
.super Le/a/t/b/e/d/c;
.source "SourceFile"

# interfaces
.implements Le/a/t/b/c/i$a;


# instance fields
.field public final i:Le/a/t/b/c/i;

.field public final j:Le/a/t/b/c/k/a;

.field public final k:Z

.field public l:Le/a/t/b/c/k/d;

.field public m:Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;

.field public n:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;Z)V
    .locals 7

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Le/a/t/b/e/d/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;I)V

    .line 2
    iput-boolean p4, p0, Le/a/t/b/e/d/f;->k:Z

    .line 3
    sget p2, Lcom/truecaller/android/sdk/R$string;->sdk_variant:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 4
    sget p4, Lcom/truecaller/android/sdk/R$string;->sdk_variant_version:I

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 5
    new-instance v6, Le/a/t/b/e/d/g;

    const-class v0, Le/a/t/b/d/b;

    const-string v1, "https://outline.truecaller.com/v1/"

    .line 6
    invoke-static {v1, v0, p2, p4}, Le/m/d/y/n;->A(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Le/a/t/b/d/b;

    const-class v0, Le/a/t/b/d/c;

    const-string v1, "https://api4.truecaller.com/v1/otp/installation/"

    .line 7
    invoke-static {v1, v0, p2, p4}, Le/m/d/y/n;->A(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Le/a/t/b/d/c;

    new-instance v5, Le/a/t/b/c/m/a;

    iget-object p2, p0, Le/a/t/b/e/d/c;->a:Landroid/content/Context;

    invoke-direct {v5, p2}, Le/a/t/b/c/m/a;-><init>(Landroid/content/Context;)V

    move-object v0, v6

    move-object v1, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Le/a/t/b/e/d/g;-><init>(Le/a/t/b/c/i$a;Le/a/t/b/d/b;Le/a/t/b/d/c;Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;Le/a/t/b/c/m/a;)V

    iput-object v6, p0, Le/a/t/b/e/d/f;->i:Le/a/t/b/c/i;

    .line 8
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1c

    if-lt p2, p3, :cond_0

    .line 9
    new-instance p2, Le/a/t/b/c/k/c;

    invoke-direct {p2, p1}, Le/a/t/b/c/k/c;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 10
    :cond_0
    new-instance p2, Le/a/t/b/c/k/b;

    invoke-direct {p2, p1}, Le/a/t/b/c/k/b;-><init>(Landroid/content/Context;)V

    .line 11
    :goto_0
    iput-object p2, p0, Le/a/t/b/e/d/f;->j:Le/a/t/b/c/k/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t/b/e/d/f;->j:Le/a/t/b/c/k/a;

    invoke-interface {v0}, Le/a/t/b/c/k/a;->a()Z

    return-void
.end method

.method public b()Z
    .locals 2

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 1
    invoke-virtual {p0, v0}, Le/a/t/b/e/d/f;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.permission.READ_CALL_LOG"

    .line 2
    invoke-virtual {p0, v0}, Le/a/t/b/e/d/f;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const-string v0, "android.permission.CALL_PHONE"

    .line 4
    invoke-virtual {p0, v0}, Le/a/t/b/e/d/f;->h(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const-string v0, "android.permission.ANSWER_PHONE_CALLS"

    .line 5
    invoke-virtual {p0, v0}, Le/a/t/b/e/d/f;->h(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 1
    invoke-virtual {p0, v0}, Le/a/t/b/e/d/f;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/t/b/e/d/c;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3
    iget-object v1, p0, Le/a/t/b/e/d/c;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Le/a/e4/r;->B(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Le/a/e4/p;

    move-result-object v0

    .line 4
    :try_start_0
    invoke-interface {v0}, Le/a/e4/p;->A()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Le/a/t/b/c/l/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/t/b/e/d/c;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2
    new-instance v1, Le/a/t/b/c/k/d;

    invoke-direct {v1, p1}, Le/a/t/b/c/k/d;-><init>(Le/a/t/b/c/l/e;)V

    iput-object v1, p0, Le/a/t/b/e/d/f;->l:Le/a/t/b/c/k/d;

    const/16 p1, 0x20

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public e()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/t/b/e/d/c;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    .line 3
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/t/b/e/d/c;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/t/b/e/d/c;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2
    iget-object v1, p0, Le/a/t/b/e/d/f;->l:Le/a/t/b/c/k/d;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t/b/e/d/f;->n:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Le/a/t/b/e/d/f;->n:Landroid/os/Handler;

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/t/b/e/d/f;->n:Landroid/os/Handler;

    return-object v0
.end method

.method public final h(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/t/b/e/d/c;->a:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
