.class public final Le/a/v4/s0/l/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/v4/s0/l/b;


# instance fields
.field public final a:Le/a/v4/s0/l/a;


# direct methods
.method public constructor <init>(Le/a/v4/s0/l/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "oAuthApiService"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/v4/s0/l/c;->a:Le/a/v4/s0/l/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/sdk/oAuth/networking/data/AuthCodeRequest;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/sdk/oAuth/networking/data/AuthCodeRequest;",
            "Ls1/w/d<",
            "-",
            "Le/a/v4/s0/l/e/a<",
            "Lcom/truecaller/sdk/oAuth/networking/data/AuthCodeResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/sdk/oAuth/networking/ErrorType;->TYPE_API_OAUTH:Lcom/truecaller/sdk/oAuth/networking/ErrorType;

    new-instance v1, Le/a/v4/s0/l/c$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/v4/s0/l/c$a;-><init>(Le/a/v4/s0/l/c;Lcom/truecaller/sdk/oAuth/networking/data/AuthCodeRequest;Ls1/w/d;)V

    const-string p1, "generateAuthCode"

    invoke-static {v0, p1, v1, p2}, Le/a/l4/k;->K(Lcom/truecaller/sdk/oAuth/networking/ErrorType;Ljava/lang/String;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/truecaller/sdk/oAuth/networking/data/RejectRequest;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/sdk/oAuth/networking/data/RejectRequest;",
            "Ls1/w/d<",
            "-",
            "Le/a/v4/s0/l/e/a<",
            "Lu3/l0;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/sdk/oAuth/networking/ErrorType;->TYPE_API_INTERNAL:Lcom/truecaller/sdk/oAuth/networking/ErrorType;

    new-instance v1, Le/a/v4/s0/l/c$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/v4/s0/l/c$c;-><init>(Le/a/v4/s0/l/c;Lcom/truecaller/sdk/oAuth/networking/data/RejectRequest;Ls1/w/d;)V

    const-string p1, "rejectAuthorizationRequest"

    invoke-static {v0, p1, v1, p2}, Le/a/l4/k;->K(Lcom/truecaller/sdk/oAuth/networking/ErrorType;Ljava/lang/String;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/v4/s0/l/e/a<",
            "Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/sdk/oAuth/networking/ErrorType;->TYPE_API_INTERNAL:Lcom/truecaller/sdk/oAuth/networking/ErrorType;

    new-instance v7, Le/a/v4/s0/l/c$b;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Le/a/v4/s0/l/c$b;-><init>(Le/a/v4/s0/l/c;Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    const-string p1, "getConsentScreenInfo"

    invoke-static {v0, p1, v7, p4}, Le/a/l4/k;->K(Lcom/truecaller/sdk/oAuth/networking/ErrorType;Ljava/lang/String;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
