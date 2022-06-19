.class public final Le/a/m/v;
.super Le/a/u2/a/c;
.source "SourceFile"

# interfaces
.implements Le/a/m/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/c<",
        "Le/a/m/r;",
        "Le/a/m/s;",
        ">;",
        "Le/a/m/q;"
    }
.end annotation


# instance fields
.field public e:Le/a/r2/a;

.field public f:Lq3/a/p1;

.field public final g:Le/a/b0/o/a;

.field public final h:Le/a/b0/e/r/a;

.field public final i:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/f4/a/b;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Le/a/r2/l;

.field public final k:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Le/a/b0/e/f;

.field public final m:Le/a/u3/g;

.field public final n:Le/a/m/c0;

.field public final o:Le/a/b0/l/a;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/r2/f;Le/a/r2/l;Le/a/r2/f;Le/a/b0/e/f;Le/a/u3/g;Le/a/m/c0;Le/a/b0/l/a;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p5    # Le/a/r2/l;
        .annotation runtime Ljavax/inject/Named;
            value = "trcllmoduleacthreads"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Le/a/b0/o/a;",
            "Le/a/b0/e/r/a;",
            "Le/a/r2/f<",
            "Le/a/f4/a/b;",
            ">;",
            "Le/a/r2/l;",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;",
            "Le/a/b0/e/f;",
            "Le/a/u3/g;",
            "Le/a/m/c0;",
            "Le/a/b0/l/a;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiCoroutineContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountNetworkManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actorsThreads"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsTracker"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "regionUtils"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacyRegionUpdater"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "facebookInitHelper"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/c;-><init>(Ls1/w/f;)V

    iput-object p2, p0, Le/a/m/v;->g:Le/a/b0/o/a;

    iput-object p3, p0, Le/a/m/v;->h:Le/a/b0/e/r/a;

    iput-object p4, p0, Le/a/m/v;->i:Le/a/r2/f;

    iput-object p5, p0, Le/a/m/v;->j:Le/a/r2/l;

    iput-object p6, p0, Le/a/m/v;->k:Le/a/r2/f;

    iput-object p7, p0, Le/a/m/v;->l:Le/a/b0/e/f;

    iput-object p8, p0, Le/a/m/v;->m:Le/a/u3/g;

    iput-object p9, p0, Le/a/m/v;->n:Le/a/m/c0;

    iput-object p10, p0, Le/a/m/v;->o:Le/a/b0/l/a;

    return-void
.end method

.method public static final Ij(Le/a/m/v;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/m/v;->o:Le/a/b0/l/a;

    invoke-interface {v0}, Le/a/b0/l/a;->c()V

    .line 2
    iget-object v0, p0, Le/a/m/v;->g:Le/a/b0/o/a;

    const/4 v1, 0x1

    const-string v2, "ppolicy_accepted"

    invoke-interface {v0, v2, v1}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 3
    iget-object p0, p0, Le/a/m/v;->k:Le/a/r2/f;

    const-string v0, "consentUpgrade"

    const-string v1, "accepted"

    invoke-static {p0, v0, v1}, Le/m/d/y/n;->y1(Le/a/r2/f;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final Jj(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/m/v$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/m/v$a;

    iget v1, v0, Le/a/m/v$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/m/v$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/m/v$a;

    invoke-direct {v0, p0, p2}, Le/a/m/v$a;-><init>(Le/a/m/v;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/m/v$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/m/v$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/m/v$a;->g:Ljava/lang/Object;

    check-cast p1, Le/a/m/v;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/m/v;->n:Le/a/m/c0;

    iput-object p0, v0, Le/a/m/v$a;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/m/v$a;->e:I

    invoke-interface {p2, p1, v0}, Le/a/m/c0;->a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 5
    :goto_1
    check-cast p2, Lx3/a0;

    if-eqz p2, :cond_4

    .line 6
    invoke-virtual {p2}, Lx3/a0;->b()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 7
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 9
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/m/s;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Le/a/m/s;->F5()V

    :cond_5
    return-object p2
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 10

    .line 1
    check-cast p1, Le/a/m/s;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/m/v;->k:Le/a/r2/f;

    const-string v1, "consentUpgrade"

    const-string v2, "viewed"

    invoke-static {v0, v1, v2}, Le/m/d/y/n;->y1(Le/a/r2/f;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Le/a/m/v;->l:Le/a/b0/e/f;

    invoke-interface {v0}, Le/a/b0/e/f;->f()Lcom/truecaller/common/account/Region;

    move-result-object v0

    .line 6
    invoke-static {v0}, Le/a/n/g0;->N(Lcom/truecaller/common/account/Region;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v0}, Le/a/n/g0;->U(Lcom/truecaller/common/account/Region;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v6, 0x1

    aput-object v2, v4, v6

    .line 8
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const v2, 0x7f120574

    const/4 v7, 0x3

    if-eq v0, v6, :cond_2

    if-eq v0, v3, :cond_1

    if-ne v0, v7, :cond_0

    const v0, 0x7f120194

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/String;

    aput-object v1, v3, v5

    .line 10
    new-instance v7, Ls1/k;

    invoke-direct {v7, v0, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f120576

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 12
    new-instance v3, Ls1/k;

    invoke-direct {v3, v0, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f120192

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v4, v6, [Ljava/lang/String;

    aput-object v1, v4, v5

    .line 14
    new-instance v1, Ls1/k;

    invoke-direct {v1, v0, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    invoke-interface {p1}, Le/a/m/s;->mq()V

    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "region doesn\'t support consent refresh"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const v0, 0x7f120195

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/String;

    aput-object v1, v2, v5

    .line 18
    new-instance v7, Ls1/k;

    invoke-direct {v7, v0, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f120578

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 20
    new-instance v3, Ls1/k;

    invoke-direct {v3, v0, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f120193

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/String;

    aput-object v1, v2, v5

    .line 22
    new-instance v1, Ls1/k;

    invoke-direct {v1, v0, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x7f12057c

    .line 23
    invoke-interface {p1}, Le/a/m/s;->mq()V

    goto :goto_0

    :cond_2
    const v0, 0x7f12057e

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 25
    new-instance v8, Ls1/k;

    invoke-direct {v8, v0, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f120577

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 27
    new-instance v9, Ls1/k;

    invoke-direct {v9, v0, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f120581

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v4, v7, [Ljava/lang/String;

    const-string v7, "https://oag.ca.gov/privacy/ccpa"

    aput-object v7, v4, v5

    aput-object v1, v4, v6

    const-string v1, "https://support.google.com/google-ads/answer/9614122?hl=en"

    aput-object v1, v4, v3

    .line 29
    new-instance v1, Ls1/k;

    invoke-direct {v1, v0, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    invoke-interface {p1}, Le/a/m/s;->Uc()V

    move-object v7, v8

    move-object v3, v9

    .line 31
    :goto_0
    invoke-interface {p1, v7, v3, v1}, Le/a/m/s;->z3(Ls1/k;Ls1/k;Ls1/k;)V

    .line 32
    invoke-interface {p1, v2}, Le/a/m/s;->u4(I)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    invoke-super {p0}, Le/a/u2/a/c;->c()V

    .line 2
    iget-object v0, p0, Le/a/m/v;->e:Le/a/r2/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/r2/a;->b()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/a/m/v;->e:Le/a/r2/a;

    return-void
.end method

.method public x4(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/d;->b:Ljava/lang/Object;

    .line 2
    check-cast v0, Le/a/m/r;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/m/r;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
