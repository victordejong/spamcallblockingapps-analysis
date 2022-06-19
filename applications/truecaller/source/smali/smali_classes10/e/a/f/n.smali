.class public final Le/a/f/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/f/m;


# instance fields
.field public final a:Le/a/u3/g;

.field public final b:Le/a/b0/e/l;

.field public final c:Le/a/p5/g;

.field public final d:Le/a/f/z/y;


# direct methods
.method public constructor <init>(Le/a/u3/g;Le/a/b0/e/l;Le/a/p5/g;Le/a/f/z/y;)V
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

    const-string v0, "accountManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inCallUISettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f/n;->a:Le/a/u3/g;

    iput-object p2, p0, Le/a/f/n;->b:Le/a/b0/e/l;

    iput-object p3, p0, Le/a/f/n;->c:Le/a/p5/g;

    iput-object p4, p0, Le/a/f/n;->d:Le/a/f/z/y;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/f/n;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/f/n;->c:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/f/n;->c:Le/a/p5/g;

    const-class v1, Lcom/truecaller/incallui/service/InCallUIService;

    invoke-interface {v0, v1}, Le/a/p5/g;->C(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/f/n;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/f/n;->c:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/a/f/n;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/f/n;->c:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->q()I

    move-result v0

    const/16 v1, 0x18

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_e

    .line 2
    iget-object v0, p0, Le/a/f/n;->a:Le/a/u3/g;

    .line 3
    iget-object v1, v0, Le/a/u3/g;->l1:Le/a/u3/g$a;

    sget-object v4, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v5, 0x73

    aget-object v5, v4, v5

    invoke-virtual {v1, v0, v5}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Le/a/f/n;->b:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5
    iget-object v0, p0, Le/a/f/n;->a:Le/a/u3/g;

    .line 6
    iget-object v1, v0, Le/a/u3/g;->m1:Le/a/u3/g$a;

    const/16 v5, 0x74

    aget-object v4, v4, v5

    invoke-virtual {v1, v0, v4}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    check-cast v0, Le/a/u3/i;

    .line 7
    invoke-interface {v0}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v2

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v4

    :goto_1
    const/4 v1, 0x6

    const-string v5, ","

    if-eqz v0, :cond_6

    .line 9
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v3, v3, v1}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v0

    .line 10
    iget-object v6, p0, Le/a/f/n;->c:Le/a/p5/g;

    invoke-interface {v6}, Le/a/p5/g;->e()Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-static {v6}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/2addr v7, v2

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    move-object v6, v4

    :goto_2
    if-eqz v6, :cond_6

    .line 12
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    invoke-static {v6, v8, v2}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_3

    :cond_4
    move-object v7, v4

    :goto_3
    if-nez v7, :cond_5

    goto :goto_4

    :cond_5
    move v0, v3

    goto :goto_5

    :cond_6
    :goto_4
    move v0, v2

    :goto_5
    if-eqz v0, :cond_e

    .line 13
    iget-object v0, p0, Le/a/f/n;->a:Le/a/u3/g;

    .line 14
    iget-object v6, v0, Le/a/u3/g;->n1:Le/a/u3/g$a;

    sget-object v7, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v8, 0x75

    aget-object v7, v7, v8

    invoke-virtual {v6, v0, v7}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    check-cast v0, Le/a/u3/i;

    .line 15
    invoke-interface {v0}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, v2

    if-eqz v6, :cond_7

    goto :goto_6

    :cond_7
    move-object v0, v4

    :goto_6
    if-eqz v0, :cond_c

    .line 17
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v3, v3, v1}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v0

    .line 18
    iget-object v1, p0, Le/a/f/n;->c:Le/a/p5/g;

    invoke-interface {v1}, Le/a/p5/g;->j()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-static {v1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v2

    if-eqz v5, :cond_8

    goto :goto_7

    :cond_8
    move-object v1, v4

    :goto_7
    if-eqz v1, :cond_c

    .line 20
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    invoke-static {v1, v6, v2}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_9

    move-object v4, v5

    :cond_a
    if-nez v4, :cond_b

    goto :goto_8

    :cond_b
    move v0, v3

    goto :goto_9

    :cond_c
    :goto_8
    move v0, v2

    :goto_9
    if-eqz v0, :cond_e

    .line 21
    iget-object v0, p0, Le/a/f/n;->d:Le/a/f/z/y;

    const-wide/16 v4, 0x0

    const-string v1, "watchDogInCallUIDisabledTimestamp"

    invoke-interface {v0, v1, v4, v5}, Le/a/f/z/y;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_d

    move v0, v2

    goto :goto_a

    :cond_d
    move v0, v3

    :goto_a
    if-eqz v0, :cond_e

    .line 22
    iget-object v0, p0, Le/a/f/n;->c:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->t()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_b

    :cond_e
    move v2, v3

    :goto_b
    return v2
.end method

.method public e(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/f/n;->d:Le/a/f/z/y;

    const-string v1, "incalluiEnabled"

    invoke-interface {v0, v1, p1}, Le/a/f/z/y;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public g()Z
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/f/n;->d:Le/a/f/z/y;

    .line 2
    iget-object v1, p0, Le/a/f/n;->a:Le/a/u3/g;

    .line 3
    iget-object v2, v1, Le/a/u3/g;->w1:Le/a/u3/g$a;

    sget-object v3, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v4, 0x7e

    aget-object v3, v3, v4

    invoke-virtual {v2, v1, v3}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    const-string v2, "incalluiEnabled"

    .line 5
    invoke-interface {v0, v2, v1}, Le/a/f/z/y;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/f/n;->a:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->w1:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x7e

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/f/n;->d:Le/a/f/z/y;

    const-string v1, "incalluiEnabled"

    invoke-interface {v0, v1}, Le/a/f/z/y;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Le/a/f/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
