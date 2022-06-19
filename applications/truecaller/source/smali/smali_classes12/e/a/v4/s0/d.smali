.class public final Le/a/v4/s0/d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.sdk.oAuth.NativeOAuthSdkPartnerImpl$enqueueGenerateAuthCode$1"
    f = "NativeOAuthSdkPartner.kt"
    l = {
        0xe5
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/v4/s0/e;

.field public final synthetic g:Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;

.field public final synthetic h:Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/a/v4/s0/e;Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;Ljava/lang/String;Ljava/util/List;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/v4/s0/d;->f:Le/a/v4/s0/e;

    iput-object p2, p0, Le/a/v4/s0/d;->g:Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;

    iput-object p3, p0, Le/a/v4/s0/d;->h:Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;

    iput-object p4, p0, Le/a/v4/s0/d;->i:Ljava/lang/String;

    iput-object p5, p0, Le/a/v4/s0/d;->j:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/v4/s0/d;

    iget-object v1, p0, Le/a/v4/s0/d;->f:Le/a/v4/s0/e;

    iget-object v2, p0, Le/a/v4/s0/d;->g:Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;

    iget-object v3, p0, Le/a/v4/s0/d;->h:Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;

    iget-object v4, p0, Le/a/v4/s0/d;->i:Ljava/lang/String;

    iget-object v5, p0, Le/a/v4/s0/d;->j:Ljava/util/List;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Le/a/v4/s0/d;-><init>(Le/a/v4/s0/e;Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;Ljava/lang/String;Ljava/util/List;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/v4/s0/d;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/v4/s0/d;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/v4/s0/d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/v4/s0/d;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance p1, Lcom/truecaller/sdk/oAuth/networking/data/AuthCodeRequest;

    .line 5
    iget-object v1, p0, Le/a/v4/s0/d;->g:Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;

    invoke-virtual {v1}, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->getClientId()Ljava/lang/String;

    move-result-object v5

    const-string v1, "partnerInfo.clientId"

    invoke-static {v5, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Le/a/v4/s0/d;->h:Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;

    invoke-virtual {v1}, Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;->getRequestId()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    .line 7
    iget-object v1, p0, Le/a/v4/s0/d;->g:Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;

    invoke-virtual {v1}, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->getState()Ljava/lang/String;

    move-result-object v10

    const-string v1, "partnerInfo.state"

    invoke-static {v10, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    .line 8
    iget-object v1, p0, Le/a/v4/s0/d;->g:Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;

    invoke-virtual {v1}, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->getCodeChallenge()Ljava/lang/String;

    move-result-object v7

    const-string v1, "partnerInfo.codeChallenge"

    invoke-static {v7, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v9, p0, Le/a/v4/s0/d;->i:Ljava/lang/String;

    const/16 v11, 0x14

    const/4 v12, 0x0

    move-object v3, p1

    .line 10
    invoke-direct/range {v3 .. v12}, Lcom/truecaller/sdk/oAuth/networking/data/AuthCodeRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILs1/z/c/f;)V

    .line 11
    iget-object v1, p0, Le/a/v4/s0/d;->f:Le/a/v4/s0/e;

    .line 12
    iget-object v1, v1, Le/a/v4/s0/e;->q:Le/a/v4/s0/l/b;

    .line 13
    iput v2, p0, Le/a/v4/s0/d;->e:I

    invoke-interface {v1, p1, p0}, Le/a/v4/s0/l/b;->a(Lcom/truecaller/sdk/oAuth/networking/data/AuthCodeRequest;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 14
    :cond_2
    :goto_0
    check-cast p1, Le/a/v4/s0/l/e/a;

    .line 15
    instance-of v0, p1, Le/a/v4/s0/l/e/a$b;

    if-eqz v0, :cond_4

    .line 16
    check-cast p1, Le/a/v4/s0/l/e/a$b;

    .line 17
    iget-object v0, p1, Le/a/v4/s0/l/e/a$b;->a:Ljava/lang/Object;

    .line 18
    check-cast v0, Lcom/truecaller/sdk/oAuth/networking/data/AuthCodeResponse;

    invoke-virtual {v0}, Lcom/truecaller/sdk/oAuth/networking/data/AuthCodeResponse;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Le/a/v4/s0/d;->g:Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;

    invoke-virtual {v1}, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    iget-object v0, p1, Le/a/v4/s0/l/e/a$b;->a:Ljava/lang/Object;

    .line 20
    check-cast v0, Lcom/truecaller/sdk/oAuth/networking/data/AuthCodeResponse;

    invoke-virtual {v0}, Lcom/truecaller/sdk/oAuth/networking/data/AuthCodeResponse;->getFingerprint()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Le/a/v4/s0/d;->g:Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;

    invoke-virtual {v1}, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->getAppFingerprint()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21
    iget-object v0, p0, Le/a/v4/s0/d;->f:Le/a/v4/s0/e;

    .line 22
    new-instance v1, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$SuccessResponse;

    .line 23
    new-instance v2, Lcom/truecaller/android/sdk/oAuth/TcOAuthData;

    .line 24
    iget-object v3, p1, Le/a/v4/s0/l/e/a$b;->a:Ljava/lang/Object;

    .line 25
    check-cast v3, Lcom/truecaller/sdk/oAuth/networking/data/AuthCodeResponse;

    invoke-virtual {v3}, Lcom/truecaller/sdk/oAuth/networking/data/AuthCodeResponse;->getCode()Ljava/lang/String;

    move-result-object v3

    .line 26
    iget-object p1, p1, Le/a/v4/s0/l/e/a$b;->a:Ljava/lang/Object;

    .line 27
    check-cast p1, Lcom/truecaller/sdk/oAuth/networking/data/AuthCodeResponse;

    invoke-virtual {p1}, Lcom/truecaller/sdk/oAuth/networking/data/AuthCodeResponse;->getState()Ljava/lang/String;

    move-result-object p1

    .line 28
    iget-object v4, p0, Le/a/v4/s0/d;->j:Ljava/util/List;

    .line 29
    invoke-direct {v2, v3, p1, v4}, Lcom/truecaller/android/sdk/oAuth/TcOAuthData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 30
    invoke-direct {v1, v2}, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$SuccessResponse;-><init>(Lcom/truecaller/android/sdk/oAuth/TcOAuthData;)V

    .line 31
    iput-object v1, v0, Le/a/v4/s0/e;->l:Lcom/truecaller/android/sdk/oAuth/OAuthResponse;

    goto :goto_1

    .line 32
    :cond_3
    iget-object p1, p0, Le/a/v4/s0/d;->f:Le/a/v4/s0/e;

    new-instance v0, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;

    sget-object v1, Lcom/truecaller/android/sdk/oAuth/TcOAuthError$InvalidPartnerError;->c:Lcom/truecaller/android/sdk/oAuth/TcOAuthError$InvalidPartnerError;

    invoke-direct {v0, v1}, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;-><init>(Lcom/truecaller/android/sdk/oAuth/TcOAuthError;)V

    .line 33
    iput-object v0, p1, Le/a/v4/s0/e;->l:Lcom/truecaller/android/sdk/oAuth/OAuthResponse;

    .line 34
    :goto_1
    iget-object p1, p0, Le/a/v4/s0/d;->f:Le/a/v4/s0/e;

    invoke-static {p1}, Le/a/v4/s0/e;->z(Le/a/v4/s0/e;)V

    goto :goto_2

    .line 35
    :cond_4
    iget-object v0, p0, Le/a/v4/s0/d;->f:Le/a/v4/s0/e;

    invoke-static {v0, p1}, Le/a/v4/s0/e;->y(Le/a/v4/s0/e;Le/a/v4/s0/l/e/a;)V

    .line 36
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
