.class public final Le/a/v4/s0/l/c$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v4/s0/l/c;->c(Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/l<",
        "Ls1/w/d<",
        "-",
        "Lx3/a0<",
        "Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.sdk.oAuth.networking.OAuthNetworkManagerImpl$getConsentScreenInfo$3"
    f = "OAuthNetworkManager.kt"
    l = {
        0x2a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/v4/s0/l/c;

.field public final synthetic g:Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/v4/s0/l/c;Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/v4/s0/l/c$b;->f:Le/a/v4/s0/l/c;

    iput-object p2, p0, Le/a/v4/s0/l/c$b;->g:Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;

    iput-object p3, p0, Le/a/v4/s0/l/c$b;->h:Ljava/lang/String;

    iput-object p4, p0, Le/a/v4/s0/l/c$b;->i:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ls1/w/d;

    invoke-virtual {p0, p1}, Le/a/v4/s0/l/c$b;->l(Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/v4/s0/l/c$b;

    sget-object v0, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, v0}, Le/a/v4/s0/l/c$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ls1/w/d;)Ls1/w/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/v4/s0/l/c$b;

    iget-object v2, p0, Le/a/v4/s0/l/c$b;->f:Le/a/v4/s0/l/c;

    iget-object v3, p0, Le/a/v4/s0/l/c$b;->g:Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;

    iget-object v4, p0, Le/a/v4/s0/l/c$b;->h:Ljava/lang/String;

    iget-object v5, p0, Le/a/v4/s0/l/c$b;->i:Ljava/lang/String;

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Le/a/v4/s0/l/c$b;-><init>(Le/a/v4/s0/l/c;Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/v4/s0/l/c$b;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

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
    iget-object p1, p0, Le/a/v4/s0/l/c$b;->f:Le/a/v4/s0/l/c;

    .line 5
    iget-object v3, p1, Le/a/v4/s0/l/c;->a:Le/a/v4/s0/l/a;

    .line 6
    iget-object p1, p0, Le/a/v4/s0/l/c$b;->g:Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;

    invoke-virtual {p1}, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->getClientId()Ljava/lang/String;

    move-result-object v4

    const-string p1, "partnerInformation.clientId"

    invoke-static {v4, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Le/a/v4/s0/l/c$b;->h:Ljava/lang/String;

    iget-object p1, p0, Le/a/v4/s0/l/c$b;->g:Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;

    invoke-virtual {p1}, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->getAppFingerprint()Ljava/lang/String;

    move-result-object v6

    const-string p1, "partnerInformation.appFingerprint"

    invoke-static {v6, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v7, p0, Le/a/v4/s0/l/c$b;->i:Ljava/lang/String;

    iget-object p1, p0, Le/a/v4/s0/l/c$b;->g:Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;

    invoke-virtual {p1}, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->getTrueSdkVersion()Ljava/lang/String;

    move-result-object v8

    const-string p1, "partnerInformation.trueSdkVersion"

    invoke-static {v8, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/v4/s0/l/c$b;->g:Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;

    invoke-virtual {p1}, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->getSdkVariant()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    if-eqz p1, :cond_2

    move-object v9, p1

    goto :goto_0

    :cond_2
    move-object v9, v1

    :goto_0
    const-string p1, "partnerInformation.sdkVariant ?: \"\""

    invoke-static {v9, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Le/a/v4/s0/l/c$b;->g:Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;

    invoke-virtual {p1}, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->getSdkVariantVersion()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    move-object v10, p1

    goto :goto_1

    :cond_3
    move-object v10, v1

    :goto_1
    const-string p1, "partnerInformation.sdkVariantVersion ?: \"\""

    invoke-static {v10, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput v2, p0, Le/a/v4/s0/l/c$b;->e:I

    move-object v11, p0

    .line 9
    invoke-interface/range {v3 .. v11}, Le/a/v4/s0/l/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_2
    return-object p1
.end method
