.class public final Le/a/v4/s0/e$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v4/s0/e;->A(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
    c = "com.truecaller.sdk.oAuth.NativeOAuthSdkPartnerImpl$enqueueRejectConsent$1"
    f = "NativeOAuthSdkPartner.kt"
    l = {
        0x10f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/v4/s0/e;

.field public final synthetic g:Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;

.field public final synthetic h:Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;

.field public final synthetic i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/v4/s0/e;Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/v4/s0/e$a;->f:Le/a/v4/s0/e;

    iput-object p2, p0, Le/a/v4/s0/e$a;->g:Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;

    iput-object p3, p0, Le/a/v4/s0/e$a;->h:Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;

    iput-object p4, p0, Le/a/v4/s0/e$a;->i:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
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

    new-instance p1, Le/a/v4/s0/e$a;

    iget-object v1, p0, Le/a/v4/s0/e$a;->f:Le/a/v4/s0/e;

    iget-object v2, p0, Le/a/v4/s0/e$a;->g:Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;

    iget-object v3, p0, Le/a/v4/s0/e$a;->h:Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;

    iget-object v4, p0, Le/a/v4/s0/e$a;->i:Ljava/lang/String;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/v4/s0/e$a;-><init>(Le/a/v4/s0/e;Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/v4/s0/e$a;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/v4/s0/e$a;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/v4/s0/e$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/v4/s0/e$a;->e:I

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
    new-instance p1, Lcom/truecaller/sdk/oAuth/networking/data/RejectRequest;

    .line 5
    iget-object v1, p0, Le/a/v4/s0/e$a;->g:Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;

    invoke-virtual {v1}, Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;->getRequestId()Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v3, p0, Le/a/v4/s0/e$a;->h:Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;

    invoke-virtual {v3}, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->getClientId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "partnerInfo.clientId"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v4, p0, Le/a/v4/s0/e$a;->i:Ljava/lang/String;

    .line 8
    invoke-direct {p1, v1, v3, v4}, Lcom/truecaller/sdk/oAuth/networking/data/RejectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Le/a/v4/s0/e$a;->f:Le/a/v4/s0/e;

    .line 10
    iget-object v1, v1, Le/a/v4/s0/e;->q:Le/a/v4/s0/l/b;

    .line 11
    iput v2, p0, Le/a/v4/s0/e$a;->e:I

    invoke-interface {v1, p1, p0}, Le/a/v4/s0/l/b;->b(Lcom/truecaller/sdk/oAuth/networking/data/RejectRequest;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 12
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
