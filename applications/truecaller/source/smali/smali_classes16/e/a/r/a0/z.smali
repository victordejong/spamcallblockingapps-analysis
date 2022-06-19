.class public final Le/a/r/a0/z;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/r/a0/w;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/r/a0/x;",
        ">;",
        "Le/a/r/a0/w;"
    }
.end annotation


# instance fields
.field public d:Le/a/b0/k/c;

.field public final e:Ls1/w/f;

.field public final f:Le/a/b0/e/r/a;

.field public final g:Le/a/r/c/l;

.field public final h:Le/a/r/h;

.field public final i:Le/a/h5/m;

.field public final j:Le/a/r/c/z;

.field public final k:Le/a/r/a0/q;

.field public final l:Le/a/p5/u;

.field public final m:Le/a/r/q/h;

.field public final n:Le/a/r/c/w;

.field public final o:Le/a/r/a0/e0/a;

.field public final p:Le/a/r/c/a0/a;

.field public final q:Le/a/r/a0/h;

.field public final r:Le/a/r/c/y;

.field public final s:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Le/a/r/a0/i;

.field public final u:Le/a/r/p/a;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/b0/e/r/a;Le/a/r/c/l;Le/a/r/h;Le/a/h5/m;Le/a/r/c/z;Le/a/r/a0/q;Le/a/p5/u;Le/a/r/q/h;Le/a/r/c/w;Le/a/r/a0/e0/a;Le/a/r/c/a0/a;Le/a/r/a0/h;Le/a/r/c/y;Lo3/a;Le/a/r/a0/i;Le/a/r/p/a;)V
    .locals 16
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Le/a/b0/e/r/a;",
            "Le/a/r/c/l;",
            "Le/a/r/h;",
            "Le/a/h5/m;",
            "Le/a/r/c/z;",
            "Le/a/r/a0/q;",
            "Le/a/p5/u;",
            "Le/a/r/q/h;",
            "Le/a/r/c/w;",
            "Le/a/r/a0/e0/a;",
            "Le/a/r/c/a0/a;",
            "Le/a/r/a0/h;",
            "Le/a/r/c/y;",
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;",
            "Le/a/r/a0/i;",
            "Le/a/r/p/a;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v0, p16

    const-string v0, "uiContext"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionsHelper"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountHelper"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "roleRequester"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wizardSettingsHelper"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsManager"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkUtil"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wizardTracker"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wizardNumberUtils"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "autoLoginHelper"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countriesHelper"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "languageHelper"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wizardOpenUrlHelper"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberProvider"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readPhoneNumberABTestManager"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    move-object/from16 v0, p0

    move-object/from16 v15, p16

    iput-object v1, v0, Le/a/r/a0/z;->e:Ls1/w/f;

    iput-object v2, v0, Le/a/r/a0/z;->f:Le/a/b0/e/r/a;

    iput-object v3, v0, Le/a/r/a0/z;->g:Le/a/r/c/l;

    iput-object v4, v0, Le/a/r/a0/z;->h:Le/a/r/h;

    iput-object v5, v0, Le/a/r/a0/z;->i:Le/a/h5/m;

    iput-object v6, v0, Le/a/r/a0/z;->j:Le/a/r/c/z;

    iput-object v7, v0, Le/a/r/a0/z;->k:Le/a/r/a0/q;

    iput-object v8, v0, Le/a/r/a0/z;->l:Le/a/p5/u;

    iput-object v9, v0, Le/a/r/a0/z;->m:Le/a/r/q/h;

    iput-object v10, v0, Le/a/r/a0/z;->n:Le/a/r/c/w;

    iput-object v11, v0, Le/a/r/a0/z;->o:Le/a/r/a0/e0/a;

    iput-object v12, v0, Le/a/r/a0/z;->p:Le/a/r/c/a0/a;

    iput-object v13, v0, Le/a/r/a0/z;->q:Le/a/r/a0/h;

    iput-object v14, v0, Le/a/r/a0/z;->r:Le/a/r/c/y;

    move-object/from16 v1, p15

    iput-object v1, v0, Le/a/r/a0/z;->s:Lo3/a;

    iput-object v15, v0, Le/a/r/a0/z;->t:Le/a/r/a0/i;

    move-object/from16 v1, p17

    iput-object v1, v0, Le/a/r/a0/z;->u:Le/a/r/p/a;

    return-void
.end method


# virtual methods
.method public final Ij(Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/r/a0/z$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/r/a0/z$a;

    iget v1, v0, Le/a/r/a0/z$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/r/a0/z$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/r/a0/z$a;

    invoke-direct {v0, p0, p1}, Le/a/r/a0/z$a;-><init>(Le/a/r/a0/z;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/r/a0/z$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/r/a0/z$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Le/a/r/a0/z$a;->g:Ljava/lang/Object;

    check-cast v0, Le/a/r/a0/z;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/r/a0/z;->t:Le/a/r/a0/i;

    iput-object p0, v0, Le/a/r/a0/z$a;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/r/a0/z$a;->e:I

    invoke-interface {p1, v0}, Le/a/r/a0/i;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 5
    :goto_1
    check-cast p1, Le/a/r/a0/i$a;

    .line 6
    instance-of v1, p1, Le/a/r/a0/i$a$b;

    if-eqz v1, :cond_10

    check-cast p1, Le/a/r/a0/i$a$b;

    .line 7
    iget-object v1, p1, Le/a/r/a0/i$a$b;->a:Lcom/truecaller/common/network/country/CountryListDto$a;

    .line 8
    iget-object p1, p1, Le/a/r/a0/i$a$b;->b:Ljava/lang/String;

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 10
    iget-object v4, v1, Lcom/truecaller/common/network/country/CountryListDto$a;->d:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v1, Lcom/truecaller/common/network/country/CountryListDto$a;->c:Ljava/lang/String;

    if-eqz v4, :cond_4

    move v4, v3

    goto :goto_2

    :cond_4
    move v4, v2

    :goto_2
    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_f

    if-eqz p1, :cond_7

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    move v4, v2

    goto :goto_5

    :cond_7
    :goto_4
    move v4, v3

    :goto_5
    if-nez v4, :cond_f

    .line 12
    iget-object v4, v0, Le/a/r/a0/z;->l:Le/a/p5/u;

    invoke-interface {v4}, Le/a/p5/u;->d()Z

    move-result v4

    if-nez v4, :cond_9

    .line 13
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/a0/x;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Le/a/r/a0/x;->i0()V

    .line 14
    :cond_8
    iget-object p1, v0, Le/a/r/a0/z;->m:Le/a/r/q/h;

    const-string v1, "GetStarted"

    invoke-interface {p1, v1}, Le/a/r/q/h;->f(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 15
    :cond_9
    iget-object v4, v0, Le/a/r/a0/z;->n:Le/a/r/c/w;

    check-cast v4, Le/a/r/c/x;

    invoke-virtual {v4, v1}, Le/a/r/c/x;->b(Lcom/truecaller/common/network/country/CountryListDto$a;)Z

    move-result v5

    invoke-virtual {v4, p1, v1, v5}, Le/a/r/c/x;->a(Ljava/lang/String;Lcom/truecaller/common/network/country/CountryListDto$a;Z)Ljava/lang/String;

    move-result-object p1

    .line 16
    iget-object v4, v0, Le/a/r/a0/z;->j:Le/a/r/c/z;

    const-string v5, "SIM"

    invoke-interface {v4, v5}, Le/a/r/c/z;->d(Ljava/lang/String;)V

    .line 17
    iget-object v4, v0, Le/a/r/a0/z;->j:Le/a/r/c/z;

    invoke-interface {v4, p1}, Le/a/r/c/z;->c(Ljava/lang/String;)V

    .line 18
    iget-object p1, v0, Le/a/r/a0/z;->j:Le/a/r/c/z;

    iget-object v4, v1, Lcom/truecaller/common/network/country/CountryListDto$a;->d:Ljava/lang/String;

    invoke-interface {p1, v4}, Le/a/r/c/z;->i(Ljava/lang/String;)V

    .line 19
    iget-object p1, v0, Le/a/r/a0/z;->j:Le/a/r/c/z;

    iget-object v4, v1, Lcom/truecaller/common/network/country/CountryListDto$a;->c:Ljava/lang/String;

    invoke-interface {p1, v4}, Le/a/r/c/z;->j(Ljava/lang/String;)V

    .line 20
    iget-object p1, v0, Le/a/r/a0/z;->s:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/u3/g;

    .line 21
    iget-object v4, p1, Le/a/u3/g;->L4:Le/a/u3/g$a;

    sget-object v5, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v6, 0x12f

    aget-object v5, v5, v6

    invoke-virtual {v4, p1, v5}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p1

    .line 22
    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/a0/x;

    if-eqz p1, :cond_e

    invoke-interface {p1}, Le/a/r/a0/x;->pq()V

    goto :goto_7

    .line 23
    :cond_a
    iget-object p1, v1, Lcom/truecaller/common/network/country/CountryListDto$a;->c:Ljava/lang/String;

    .line 24
    iget-object v1, v0, Le/a/r/a0/z;->f:Le/a/b0/e/r/a;

    const-string v4, "featureRegionC_qa"

    invoke-interface {v1, v4}, Le/a/b0/e/r/a;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "us"

    .line 25
    invoke-static {v1, p1, v3}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, v0, Le/a/r/a0/z;->s:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/u3/g;

    invoke-virtual {p1}, Le/a/u3/g;->S()Le/a/u3/b;

    move-result-object p1

    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_6

    :cond_b
    move v3, v2

    :cond_c
    :goto_6
    if-eqz v3, :cond_d

    .line 26
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/a0/x;

    if-eqz p1, :cond_e

    invoke-interface {p1}, Le/a/r/a0/x;->K3()V

    goto :goto_7

    .line 27
    :cond_d
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/a0/x;

    if-eqz p1, :cond_e

    invoke-interface {p1}, Le/a/r/a0/x;->c4()V

    .line 28
    :cond_e
    :goto_7
    iget-object p1, v0, Le/a/r/a0/z;->u:Le/a/r/p/a;

    .line 29
    iget-object p1, p1, Le/a/r/p/a;->a:Le/a/q2/d1/d;

    const-string v0, "readPhoneNumber_38745_read"

    invoke-interface {p1, v0}, Le/a/q2/d1/d;->c(Ljava/lang/String;)V

    goto :goto_9

    .line 30
    :cond_f
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/a0/x;

    if-eqz p1, :cond_14

    invoke-interface {p1}, Le/a/r/a0/x;->pq()V

    goto :goto_9

    .line 31
    :cond_10
    sget-object v1, Le/a/r/a0/i$a$c;->a:Le/a/r/a0/i$a$c;

    invoke-static {p1, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_8

    .line 32
    :cond_11
    sget-object v1, Le/a/r/a0/i$a$e;->a:Le/a/r/a0/i$a$e;

    invoke-static {p1, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_8

    .line 33
    :cond_12
    sget-object v1, Le/a/r/a0/i$a$d;->a:Le/a/r/a0/i$a$d;

    invoke-static {p1, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 34
    :goto_8
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/a0/x;

    if-eqz p1, :cond_14

    invoke-interface {p1}, Le/a/r/a0/x;->pq()V

    goto :goto_9

    .line 35
    :cond_13
    sget-object v0, Le/a/r/a0/i$a$a;->a:Le/a/r/a0/i$a$a;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 36
    :cond_14
    :goto_9
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    .line 37
    :cond_15
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method

.method public final Jj(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/r/a0/z;->q:Le/a/r/a0/h;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "language"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v0, Le/a/r/a0/h;->a:Landroid/content/Context;

    invoke-static {p1}, Lw3/c/a/a/a/d;->a(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    invoke-static {v0, v2}, Le/a/b0/k/h;->b(Landroid/content/Context;Ljava/util/Locale;)Z

    .line 4
    invoke-static {v1, p1}, Le/a/n/g0;->B0(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v2, "languageAuto"

    .line 5
    invoke-static {v2, v0}, Le/a/n/g0;->v0(Ljava/lang/String;Z)V

    .line 6
    iget-object v0, p0, Le/a/r/a0/z;->k:Le/a/r/a0/q;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, v0, Le/a/r/a0/q;->a:Le/a/q2/a;

    new-instance v1, Le/a/r/q/e;

    invoke-direct {v1, p1}, Le/a/r/q/e;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void
.end method

.method public final Kj(Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/r/a0/z$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/r/a0/z$b;

    iget v1, v0, Le/a/r/a0/z$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/r/a0/z$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/r/a0/z$b;

    invoke-direct {v0, p0, p1}, Le/a/r/a0/z$b;-><init>(Le/a/r/a0/z;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/r/a0/z$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/r/a0/z$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Le/a/r/a0/z$b;->i:Ljava/lang/Object;

    check-cast v1, Le/a/r/a0/z;

    iget-object v2, v0, Le/a/r/a0/z$b;->h:Ljava/lang/Object;

    check-cast v2, Le/a/r/a0/x;

    iget-object v0, v0, Le/a/r/a0/z$b;->g:Ljava/lang/Object;

    check-cast v0, Le/a/r/a0/z;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Le/a/r/a0/x;

    if-eqz v2, :cond_8

    .line 5
    iget-object p1, p0, Le/a/r/a0/z;->p:Le/a/r/c/a0/a;

    invoke-interface {p1}, Le/a/r/c/a0/a;->c()Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v4, p0, Le/a/r/a0/z;->q:Le/a/r/a0/h;

    .line 7
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "languageAuto"

    .line 8
    invoke-static {v5, v3}, Le/a/n/g0;->B(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_3

    .line 9
    new-instance v5, Ljava/util/Locale;

    const-string v6, "language"

    invoke-static {v6}, Le/a/n/g0;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_3
    iget-object v5, v4, Le/a/r/a0/h;->b:Le/a/b0/k/f;

    iget-object v6, v4, Le/a/r/a0/h;->a:Landroid/content/Context;

    invoke-virtual {v5, v6}, Le/a/b0/k/f;->c(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    iget-object v5, v4, Le/a/r/a0/h;->b:Le/a/b0/k/f;

    new-instance v6, Ljava/util/Locale;

    const-string v7, "en"

    invoke-direct {v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "defaultLocale"

    invoke-static {v6, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v5}, Le/a/b0/k/f;->f()Ljava/util/Locale;

    move-result-object v5

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    move-object v5, v6

    .line 13
    :goto_1
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "languageHelper.getLocale().language"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p0, v0, Le/a/r/a0/z$b;->g:Ljava/lang/Object;

    iput-object v2, v0, Le/a/r/a0/z$b;->h:Ljava/lang/Object;

    iput-object p0, v0, Le/a/r/a0/z$b;->i:Ljava/lang/Object;

    iput v3, v0, Le/a/r/a0/z$b;->e:I

    .line 14
    iget-object v4, v4, Le/a/r/a0/h;->b:Le/a/b0/k/f;

    invoke-virtual {v4, p1, v5, v0}, Le/a/b0/k/f;->d(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object v0, p0

    move-object v1, v0

    .line 15
    :goto_2
    check-cast p1, Le/a/b0/k/c;

    iput-object p1, v1, Le/a/r/a0/z;->d:Le/a/b0/k/c;

    .line 16
    sget p1, Lcom/truecaller/wizard/R$string;->Welcome_language:I

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 17
    iget-object v0, v0, Le/a/r/a0/z;->d:Le/a/b0/k/c;

    if-eqz v0, :cond_7

    .line 18
    iget-object v0, v0, Le/a/b0/k/c;->a:Ljava/lang/String;

    aput-object v0, v1, v3

    .line 19
    invoke-interface {v2, p1, v1}, Le/a/r/a0/x;->mw(I[Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 20
    invoke-interface {v2, p1}, Le/a/r/a0/x;->eh(Landroid/text/SpannableStringBuilder;)V

    goto :goto_3

    :cond_7
    const-string p1, "altLanguage"

    .line 21
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 22
    :cond_8
    :goto_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final Lj()Lq3/a/p1;
    .locals 6

    .line 1
    iget-object v1, p0, Le/a/r/a0/z;->e:Ls1/w/f;

    new-instance v3, Le/a/r/a0/z$c;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/r/a0/z$c;-><init>(Le/a/r/a0/z;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method

.method public final Mj(Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/r/a0/z$d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/r/a0/z$d;

    iget v1, v0, Le/a/r/a0/z$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/r/a0/z$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/r/a0/z$d;

    invoke-direct {v0, p0, p1}, Le/a/r/a0/z$d;-><init>(Le/a/r/a0/z;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/r/a0/z$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/r/a0/z$d;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Le/a/r/a0/z$d;->g:Ljava/lang/Object;

    check-cast v0, Le/a/r/a0/z;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/r/a0/z;->i:Le/a/h5/m;

    iput-object p0, v0, Le/a/r/a0/z$d;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/r/a0/z$d;->e:I

    invoke-interface {p1, v0}, Le/a/h5/m;->d(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 5
    iget-object v1, v0, Le/a/r/a0/z;->k:Le/a/r/a0/q;

    const-string v2, "Shown"

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "action"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v1, v1, Le/a/r/a0/q;->a:Le/a/q2/a;

    new-instance v4, Le/a/r/a0/d0;

    const-string v5, "CallerIdRole"

    invoke-direct {v4, v5, v2}, Le/a/r/a0/d0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 8
    iget-object v0, v0, Le/a/r/a0/z;->k:Le/a/r/a0/q;

    if-eqz p1, :cond_4

    const-string p1, "Enabled"

    goto :goto_2

    :cond_4
    const-string p1, "Disabled"

    .line 9
    :goto_2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, v0, Le/a/r/a0/q;->a:Le/a/q2/a;

    new-instance v1, Le/a/r/a0/d0;

    invoke-direct {v1, v5, p1}, Le/a/r/a0/d0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 11
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final Nj(Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/r/a0/z$e;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/r/a0/z$e;

    iget v1, v0, Le/a/r/a0/z$e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/r/a0/z$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/r/a0/z$e;

    invoke-direct {v0, p0, p1}, Le/a/r/a0/z$e;-><init>(Le/a/r/a0/z;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/r/a0/z$e;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/r/a0/z$e;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/a0/x;

    if-eqz p1, :cond_4

    iget-object v2, p0, Le/a/r/a0/z;->o:Le/a/r/a0/e0/a;

    iput v3, v0, Le/a/r/a0/z$e;->e:I

    check-cast v2, Le/a/r/a0/e0/c;

    .line 2
    iget-object v4, v2, Le/a/r/a0/e0/c;->a:Ls1/w/f;

    new-instance v5, Le/a/r/a0/e0/b;

    const/4 v6, 0x0

    invoke-direct {v5, v2, p1, v6}, Le/a/r/a0/e0/b;-><init>(Le/a/r/a0/e0/c;Le/a/r/a0/e0/g;Ls1/w/d;)V

    invoke-static {v4, v5, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 3
    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 6
    :cond_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Le/a/r/a0/x;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    new-instance v4, Le/a/r/a0/a0;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Le/a/r/a0/a0;-><init>(Le/a/r/a0/z;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
