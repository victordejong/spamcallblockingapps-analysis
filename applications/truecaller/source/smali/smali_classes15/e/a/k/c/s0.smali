.class public final Le/a/k/c/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k/c/r0;


# instance fields
.field public final a:Ls1/g;

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Le/a/k/c/i1;

.field public final g:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/b0/e/l;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Le/a/k/n/d/d;

.field public final i:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/p5/g;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Le/a/d4/c;


# direct methods
.method public constructor <init>(Lo3/a;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Le/a/k/c/i1;Lo3/a;Le/a/k/n/d/d;Lo3/a;Le/a/d4/c;)V
    .locals 1
    .param p2    # Ljavax/inject/Provider;
        .annotation runtime Ljavax/inject/Named;
            value = "videoCallerIdFeatureFlagStatus"
        .end annotation
    .end param
    .param p3    # Ljavax/inject/Provider;
        .annotation runtime Ljavax/inject/Named;
            value = "videoCallerIdBusinessFeatureFlagStatus"
        .end annotation
    .end param
    .param p4    # Ljavax/inject/Provider;
        .annotation runtime Ljavax/inject/Named;
            value = "videoCallerIdShowHideOptionsFlag"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Le/a/k/c/i1;",
            "Lo3/a<",
            "Le/a/b0/e/l;",
            ">;",
            "Le/a/k/n/d/d;",
            "Lo3/a<",
            "Le/a/p5/g;",
            ">;",
            "Le/a/d4/c;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureFlagEnabled"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "businessFeatureFlagEnabled"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "showHideOptionsFeatureFlag"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCallerIdSettings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availabilityRepository"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileServicesAvailabilityProvider"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k/c/s0;->b:Lo3/a;

    iput-object p2, p0, Le/a/k/c/s0;->c:Ljavax/inject/Provider;

    iput-object p3, p0, Le/a/k/c/s0;->d:Ljavax/inject/Provider;

    iput-object p4, p0, Le/a/k/c/s0;->e:Ljavax/inject/Provider;

    iput-object p5, p0, Le/a/k/c/s0;->f:Le/a/k/c/i1;

    iput-object p6, p0, Le/a/k/c/s0;->g:Lo3/a;

    iput-object p7, p0, Le/a/k/c/s0;->h:Le/a/k/n/d/d;

    iput-object p8, p0, Le/a/k/c/s0;->i:Lo3/a;

    iput-object p9, p0, Le/a/k/c/s0;->j:Le/a/d4/c;

    .line 2
    new-instance p1, Le/a/k/c/s0$c;

    invoke-direct {p1, p0}, Le/a/k/c/s0$c;-><init>(Le/a/k/c/s0;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/k/c/s0;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/k/c/s0;->f:Le/a/k/c/i1;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "videoCallerIdEnableSettingRequested"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Le/a/p5/s0/g;->K(Le/a/k/c/i1;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Le/a/k/c/s0;->setEnabled(Z)V

    .line 3
    invoke-virtual {p0, v4}, Le/a/k/c/s0;->e(Z)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/k/c/s0;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "showHideOptionsFeatureFlag.get()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/k/c/s0;->f:Le/a/k/c/i1;

    const-string v1, "videoCallerIdEnableSettingRequested"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Le/a/p5/s0/g;->K(Le/a/k/c/i1;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
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

    instance-of v0, p2, Le/a/k/c/s0$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/k/c/s0$a;

    iget v1, v0, Le/a/k/c/s0$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/c/s0$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/c/s0$a;

    invoke-direct {v0, p0, p2}, Le/a/k/c/s0$a;-><init>(Le/a/k/c/s0;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/k/c/s0$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/c/s0$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

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
    iget-object p2, p0, Le/a/k/c/s0;->h:Le/a/k/n/d/d;

    iput v3, v0, Le/a/k/c/s0$a;->e:I

    check-cast p2, Le/a/k/n/d/g;

    .line 5
    iget-object v2, p2, Le/a/k/n/d/g;->a:Ls1/w/f;

    new-instance v3, Le/a/k/n/d/f;

    const/4 v4, 0x0

    invoke-direct {v3, p2, p1, v4}, Le/a/k/n/d/f;-><init>(Le/a/k/n/d/g;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v2, v3, v0}, Le/a/p5/s0/g;->h1(Ls1/w/f;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 6
    :cond_3
    :goto_1
    check-cast p2, Le/a/k/l/d;

    if-eqz p2, :cond_4

    .line 7
    iget-boolean p1, p2, Le/a/k/l/d;->b:Z

    .line 8
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 10
    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public e(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/k/c/s0;->f:Le/a/k/c/i1;

    const-string v1, "videoCallerIdEnableSettingRequested"

    invoke-interface {v0, v1, p1}, Le/a/k/c/i1;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public f(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/k/l/d;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls1/s;->a:Ls1/s;

    iget-object v1, p0, Le/a/k/c/s0;->h:Le/a/k/n/d/d;

    check-cast v1, Le/a/k/n/d/g;

    .line 2
    iget-object v2, v1, Le/a/k/n/d/g;->a:Ls1/w/f;

    new-instance v3, Le/a/k/n/d/e;

    const/4 v4, 0x0

    invoke-direct {v3, v1, p1, v4}, Le/a/k/n/d/e;-><init>(Le/a/k/n/d/g;Ljava/util/List;Ls1/w/d;)V

    invoke-static {v2, v3, p2}, Le/a/p5/s0/g;->h1(Ls1/w/f;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public g(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/k/c/s0$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/k/c/s0$b;

    iget v1, v0, Le/a/k/c/s0$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/c/s0$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/c/s0$b;

    invoke-direct {v0, p0, p2}, Le/a/k/c/s0$b;-><init>(Le/a/k/c/s0;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/k/c/s0$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/c/s0$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

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
    iget-object p2, p0, Le/a/k/c/s0;->h:Le/a/k/n/d/d;

    iput v3, v0, Le/a/k/c/s0$b;->e:I

    check-cast p2, Le/a/k/n/d/g;

    .line 5
    iget-object v2, p2, Le/a/k/n/d/g;->a:Ls1/w/f;

    new-instance v3, Le/a/k/n/d/f;

    const/4 v4, 0x0

    invoke-direct {v3, p2, p1, v4}, Le/a/k/n/d/f;-><init>(Le/a/k/n/d/g;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v2, v3, v0}, Le/a/p5/s0/g;->h1(Ls1/w/f;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 6
    :cond_3
    :goto_1
    check-cast p2, Le/a/k/l/d;

    if-eqz p2, :cond_4

    .line 7
    iget p1, p2, Le/a/k/l/d;->c:I

    .line 8
    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 9
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 10
    :goto_2
    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object p2
.end method

.method public isAvailable()Z
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/k/c/s0;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "featureFlagEnabled.get()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 2
    iget-object v0, p0, Le/a/k/c/s0;->g:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3
    iget-object v0, p0, Le/a/k/c/s0;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4
    iget-object v0, p0, Le/a/k/c/s0;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    .line 5
    iget-object v3, v0, Le/a/u3/g;->Y4:Le/a/u3/g$a;

    sget-object v4, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v5, 0x13c

    aget-object v4, v4, v5

    invoke-virtual {v3, v0, v4}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    check-cast v0, Le/a/u3/i;

    .line 6
    invoke-interface {v0}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v1

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v4

    :goto_0
    if-eqz v0, :cond_5

    const-string v3, ","

    .line 8
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x6

    invoke-static {v0, v3, v2, v2, v5}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v0

    .line 9
    iget-object v3, p0, Le/a/k/c/s0;->i:Lo3/a;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/p5/g;

    invoke-interface {v3}, Le/a/p5/g;->e()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-static {v3}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v1

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_5

    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    invoke-static {v3, v6, v1}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v4, v5

    :cond_3
    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v0, v1

    :goto_3
    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    return v1
.end method

.method public isEnabled()Z
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/k/c/s0;->f:Le/a/k/c/i1;

    const-string v1, "videoCallerIdSetting"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Le/a/p5/s0/g;->K(Le/a/k/c/i1;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/k/c/s0;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "businessFeatureFlagEnabled.get()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public m()Le/a/k/c/g0;
    .locals 7

    .line 1
    new-instance v0, Le/a/k/c/g0;

    .line 2
    invoke-virtual {p0}, Le/a/k/c/s0;->isAvailable()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Le/a/k/c/s0;->f:Le/a/k/c/i1;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v6, "hiddenForAllContacts"

    invoke-static {v1, v6, v3, v4, v5}, Le/a/p5/s0/g;->K(Le/a/k/c/i1;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move v3, v2

    .line 4
    :cond_0
    invoke-direct {v0, v3, v2}, Le/a/k/c/g0;-><init>(ZI)V

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/k/c/s0;->f:Le/a/k/c/i1;

    const-string v1, "videoCallerIdSetting"

    invoke-interface {v0, v1, p1}, Le/a/k/c/i1;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
