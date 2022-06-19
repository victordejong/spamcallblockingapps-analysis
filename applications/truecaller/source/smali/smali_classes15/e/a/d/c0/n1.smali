.class public final Le/a/d/c0/n1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/c0/m1;


# instance fields
.field public final a:Le/a/u3/g;

.field public final b:Le/a/p5/g;

.field public final c:Landroid/content/Context;

.field public final d:Le/a/d/g;

.field public final e:Le/a/d/q/v;


# direct methods
.method public constructor <init>(Le/a/u3/g;Le/a/p5/g;Landroid/content/Context;Le/a/d/g;Le/a/d/q/v;)V
    .locals 1
    .param p1    # Le/a/u3/g;
        .annotation runtime Ljavax/inject/Named;
            value = "features_registry"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipConfig"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipCallConnectionManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/c0/n1;->a:Le/a/u3/g;

    iput-object p2, p0, Le/a/d/c0/n1;->b:Le/a/p5/g;

    iput-object p3, p0, Le/a/d/c0/n1;->c:Landroid/content/Context;

    iput-object p4, p0, Le/a/d/c0/n1;->d:Le/a/d/g;

    iput-object p5, p0, Le/a/d/c0/n1;->e:Le/a/d/q/v;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Le/a/d/c0/n1;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Le/a/d/c0/n1;->c:Landroid/content/Context;

    invoke-static {v0}, Le/a/p5/s0/g;->i0(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Le/a/d/c0/n1;->c()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v2}, Landroid/telecom/TelecomManager;->isOutgoingCallPermitted(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    const-string v3, "123456"

    const-string v4, "number"

    .line 5
    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v4, Lcom/truecaller/utils/extensions/Scheme;->TEL:Lcom/truecaller/utils/extensions/Scheme;

    invoke-virtual {v4}, Lcom/truecaller/utils/extensions/Scheme;->getValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "Uri.fromParts(Scheme.TEL.value, number, null)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    .line 8
    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 9
    invoke-virtual {v0, v3, v4}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 10
    iget-object v0, p0, Le/a/d/c0/n1;->e:Le/a/d/q/v;

    invoke-interface {v0}, Le/a/d/q/v;->e()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_0
    return v1
.end method

.method public b()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Le/a/d/c0/n1;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Le/a/d/c0/n1;->c()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 3
    iget-object v2, p0, Le/a/d/c0/n1;->c:Landroid/content/Context;

    invoke-static {v2}, Le/a/p5/s0/g;->i0(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v2

    .line 4
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    .line 5
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6
    invoke-virtual {v2, v0, v3}, Landroid/telecom/TelecomManager;->addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_0
    return v1
.end method

.method public final c()Landroid/telecom/PhoneAccountHandle;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Le/a/d/c0/n1;->c:Landroid/content/Context;

    const-class v2, Lcom/truecaller/voip/callconnection/VoipCallConnectionService;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    new-instance v1, Landroid/telecom/PhoneAccountHandle;

    const-string v2, "TruecallerVoipAccount"

    invoke-direct {v1, v0, v2}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    return-object v1
.end method

.method public final d()Z
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/d/c0/n1;->a:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->f2:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0xa1

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    check-cast v0, Le/a/u3/i;

    .line 3
    invoke-interface {v0}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const-string v4, ","

    .line 5
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {v0, v4, v1, v1, v5}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "AllModels"

    invoke-static {v4, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v2

    .line 7
    :cond_1
    iget-object v4, p0, Le/a/d/c0/n1;->b:Le/a/p5/g;

    invoke-interface {v4}, Le/a/p5/g;->e()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-static {v4}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v2

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move-object v4, v3

    :goto_1
    if-eqz v4, :cond_6

    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    invoke-static {v4, v6, v2}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v3, v5

    :cond_4
    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move v2, v1

    :goto_2
    return v2

    :cond_6
    return v1
.end method

.method public e()Z
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/d/c0/n1;->d:Le/a/d/g;

    check-cast v0, Le/a/d/e;

    invoke-virtual {v0}, Le/a/d/e;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Le/a/d/c0/n1;->c:Landroid/content/Context;

    invoke-static {v0}, Le/a/p5/s0/g;->i0(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Le/a/d/c0/n1;->c()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v2}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v3

    .line 5
    invoke-virtual {p0}, Le/a/d/c0/n1;->d()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {v0, v2}, Landroid/telecom/TelecomManager;->unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    return v1

    :cond_1
    return v5

    :cond_2
    if-eqz v4, :cond_3

    return v1

    .line 7
    :cond_3
    iget-object v3, p0, Le/a/d/c0/n1;->c:Landroid/content/Context;

    sget v4, Lcom/truecaller/voip/R$string;->voip_text:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telecom/PhoneAccount;->builder(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v2

    const/16 v3, 0x800

    .line 8
    invoke-virtual {v2, v3}, Landroid/telecom/PhoneAccount$Builder;->setCapabilities(I)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v2

    const-string v3, "tel"

    .line 9
    invoke-virtual {v2, v3}, Landroid/telecom/PhoneAccount$Builder;->addSupportedUriScheme(Ljava/lang/String;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Landroid/telecom/PhoneAccount$Builder;->build()Landroid/telecom/PhoneAccount;

    move-result-object v2

    .line 11
    invoke-virtual {v0, v2}, Landroid/telecom/TelecomManager;->registerPhoneAccount(Landroid/telecom/PhoneAccount;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception v0

    .line 12
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return v1
.end method

.method public i(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/d/c0/n1;->e:Le/a/d/q/v;

    invoke-interface {v0}, Le/a/d/q/v;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 2
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v0

    :goto_1
    if-nez v2, :cond_3

    const-string v2, "123456"

    invoke-static {p1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    move v1, v0

    :cond_4
    return v1
.end method
