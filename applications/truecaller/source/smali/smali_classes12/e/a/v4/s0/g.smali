.class public abstract Le/a/v4/s0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/v4/s0/f;


# instance fields
.field public final a:Ls1/g;

.field public b:Le/a/v4/s0/m/a/f;

.field public c:Z

.field public final d:Landroid/os/Bundle;

.field public final e:Le/a/b0/o/a;

.field public final f:Le/a/b0/e/r/a;

.field public final g:Le/a/v4/v;

.field public final h:Le/a/v4/l;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/v4/v;Le/a/v4/l;)V
    .locals 1

    const-string v0, "extras"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkAccountManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsTrackerHolder"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/v4/s0/g;->d:Landroid/os/Bundle;

    iput-object p2, p0, Le/a/v4/s0/g;->e:Le/a/b0/o/a;

    iput-object p3, p0, Le/a/v4/s0/g;->f:Le/a/b0/e/r/a;

    iput-object p4, p0, Le/a/v4/s0/g;->g:Le/a/v4/v;

    iput-object p5, p0, Le/a/v4/s0/g;->h:Le/a/v4/l;

    .line 2
    new-instance p1, Le/a/v4/s0/g$a;

    invoke-direct {p1, p0}, Le/a/v4/s0/g$a;-><init>(Le/a/v4/s0/g;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/v4/s0/g;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/v4/s0/g;->b:Le/a/v4/s0/m/a/f;

    return-void
.end method

.method public g()Lcom/truecaller/android/sdk/TrueProfile;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v4/s0/g;->e:Le/a/b0/o/a;

    iget-object v1, p0, Le/a/v4/s0/g;->f:Le/a/b0/e/r/a;

    invoke-static {v0, v1}, Le/a/l4/k;->B(Le/a/b0/o/a;Le/a/b0/e/r/a;)Lcom/truecaller/android/sdk/TrueProfile;

    move-result-object v0

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    const-string v0, "android"

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v4/s0/g;->d:Landroid/os/Bundle;

    const-string v1, "tc_oauth_extras_orientation"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "landscape"

    goto :goto_0

    :cond_0
    const-string v0, "portrait"

    :goto_0
    return-object v0
.end method

.method public final o(Le/a/v4/s0/m/a/f;)V
    .locals 10

    const-string v0, "presenterView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/v4/s0/g;->b:Le/a/v4/s0/m/a/f;

    .line 2
    invoke-virtual {p0}, Le/a/v4/s0/g;->x()Le/a/v4/p0/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/v4/p0/b;->a()V

    .line 3
    move-object v0, p0

    check-cast v0, Le/a/v4/s0/e;

    .line 4
    iget-object v1, v0, Le/a/v4/s0/e;->j:Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;

    sget-object v2, Lcom/truecaller/android/sdk/oAuth/TcOAuthError$InvalidPartnerError;->c:Lcom/truecaller/android/sdk/oAuth/TcOAuthError$InvalidPartnerError;

    invoke-direct {v1, v2}, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;-><init>(Lcom/truecaller/android/sdk/oAuth/TcOAuthError;)V

    iput-object v1, v0, Le/a/v4/s0/e;->l:Lcom/truecaller/android/sdk/oAuth/OAuthResponse;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->getTrueSdkVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "partnerInformation.trueSdkVersion"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "3.0.0"

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    .line 8
    :cond_1
    new-instance v1, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;

    sget-object v2, Lcom/truecaller/android/sdk/oAuth/TcOAuthError$OldSdkError;->c:Lcom/truecaller/android/sdk/oAuth/TcOAuthError$OldSdkError;

    invoke-direct {v1, v2}, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;-><init>(Lcom/truecaller/android/sdk/oAuth/TcOAuthError;)V

    iput-object v1, v0, Le/a/v4/s0/e;->l:Lcom/truecaller/android/sdk/oAuth/OAuthResponse;

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    .line 9
    invoke-static/range {v2 .. v7}, Le/a/l4/k;->A(Le/a/v4/s0/f;IIZILjava/lang/Object;)V

    .line 10
    invoke-interface {p1}, Le/a/v4/s0/m/a/f;->V1()V

    goto :goto_2

    .line 11
    :cond_2
    iget-object v1, v0, Le/a/v4/s0/g;->g:Le/a/v4/v;

    .line 12
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v1

    const-string v2, "ApplicationBase.getAppBase()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1}, Le/a/b0/g/a;->W()Z

    move-result v1

    if-nez v1, :cond_3

    .line 15
    new-instance v2, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;

    sget-object v3, Lcom/truecaller/android/sdk/oAuth/TcOAuthError$InvalidAccountStateError;->c:Lcom/truecaller/android/sdk/oAuth/TcOAuthError$InvalidAccountStateError;

    invoke-direct {v2, v3}, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;-><init>(Lcom/truecaller/android/sdk/oAuth/TcOAuthError;)V

    iput-object v2, v0, Le/a/v4/s0/e;->l:Lcom/truecaller/android/sdk/oAuth/OAuthResponse;

    :cond_3
    if-nez v1, :cond_4

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v4, p0

    .line 16
    invoke-static/range {v4 .. v9}, Le/a/l4/k;->A(Le/a/v4/s0/f;IIZILjava/lang/Object;)V

    .line 17
    invoke-interface {p1}, Le/a/v4/s0/m/a/f;->V1()V

    goto :goto_2

    .line 18
    :cond_4
    invoke-interface {p1}, Le/a/v4/s0/m/a/f;->r4()V

    :goto_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v4/s0/g;->d:Landroid/os/Bundle;

    const-string v1, "sdkKeySaveInstance"

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public q(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v4/s0/g;->d:Landroid/os/Bundle;

    const-string v1, "tc_oauth_extras_orientation"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public x()Le/a/v4/p0/b;
    .locals 1

    iget-object v0, p0, Le/a/v4/s0/g;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/v4/p0/b;

    return-object v0
.end method
