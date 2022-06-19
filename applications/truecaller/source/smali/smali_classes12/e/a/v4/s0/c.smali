.class public final Le/a/v4/s0/c;
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
    c = "com.truecaller.sdk.oAuth.NativeOAuthSdkPartnerImpl$enqueueFetchPartnerInfo$1"
    f = "NativeOAuthSdkPartner.kt"
    l = {
        0x77
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/v4/s0/e;

.field public final synthetic g:Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/v4/s0/e;Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/v4/s0/c;->f:Le/a/v4/s0/e;

    iput-object p2, p0, Le/a/v4/s0/c;->g:Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;

    iput-object p3, p0, Le/a/v4/s0/c;->h:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Le/a/v4/s0/c;

    iget-object v0, p0, Le/a/v4/s0/c;->f:Le/a/v4/s0/e;

    iget-object v1, p0, Le/a/v4/s0/c;->g:Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;

    iget-object v2, p0, Le/a/v4/s0/c;->h:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/v4/s0/c;-><init>(Le/a/v4/s0/e;Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/v4/s0/c;

    iget-object v0, p0, Le/a/v4/s0/c;->f:Le/a/v4/s0/e;

    iget-object v1, p0, Le/a/v4/s0/c;->g:Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;

    iget-object v2, p0, Le/a/v4/s0/c;->h:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/v4/s0/c;-><init>(Le/a/v4/s0/e;Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/v4/s0/c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/v4/s0/c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

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
    iget-object p1, p0, Le/a/v4/s0/c;->f:Le/a/v4/s0/e;

    .line 5
    iget-object v2, p1, Le/a/v4/s0/e;->q:Le/a/v4/s0/l/b;

    .line 6
    iget-object v4, p0, Le/a/v4/s0/c;->g:Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;

    iget-object v5, p0, Le/a/v4/s0/c;->h:Ljava/lang/String;

    invoke-virtual {p1}, Le/a/v4/s0/e;->u()Ljava/lang/String;

    move-result-object p1

    iput v3, p0, Le/a/v4/s0/c;->e:I

    invoke-interface {v2, v4, v5, p1, p0}, Le/a/v4/s0/l/b;->c(Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    .line 7
    :cond_2
    :goto_0
    check-cast p1, Le/a/v4/s0/l/e/a;

    .line 8
    iget-object v1, p0, Le/a/v4/s0/c;->f:Le/a/v4/s0/e;

    .line 9
    iget-object v2, v1, Le/a/v4/s0/g;->b:Le/a/v4/s0/m/a/f;

    if-eqz v2, :cond_5

    .line 10
    instance-of v3, p1, Le/a/v4/s0/l/e/a$b;

    if-eqz v3, :cond_4

    .line 11
    check-cast p1, Le/a/v4/s0/l/e/a$b;

    .line 12
    iget-object p1, p1, Le/a/v4/s0/l/e/a$b;->a:Ljava/lang/Object;

    .line 13
    check-cast p1, Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;

    .line 14
    iput-object p1, v1, Le/a/v4/s0/e;->m:Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;

    if-eqz p1, :cond_3

    .line 15
    invoke-interface {v2, p1}, Le/a/v4/s0/m/a/f;->l6(Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;)V

    :cond_3
    const/4 p1, 0x0

    .line 16
    invoke-interface {v2, p1}, Le/a/v4/s0/m/a/f;->T1(Z)V

    .line 17
    iget-object p1, p0, Le/a/v4/s0/c;->f:Le/a/v4/s0/e;

    invoke-virtual {p1}, Le/a/v4/s0/g;->x()Le/a/v4/p0/b;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    const-string v2, "shown"

    invoke-static/range {v1 .. v7}, Le/a/l4/k;->V(Le/a/v4/p0/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_1

    .line 18
    :cond_4
    invoke-static {v1, p1}, Le/a/v4/s0/e;->y(Le/a/v4/s0/e;Le/a/v4/s0/l/e/a;)V

    :cond_5
    :goto_1
    return-object v0
.end method
