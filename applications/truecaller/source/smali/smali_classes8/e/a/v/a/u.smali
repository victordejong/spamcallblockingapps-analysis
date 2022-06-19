.class public final Le/a/v/a/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/v/a/t;


# instance fields
.field public a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final b:Ls1/w/f;

.field public final c:Le/a/a3/a;

.field public final d:Le/a/v/a/r0/c;

.field public final e:Le/a/p5/m0;

.field public final f:Le/a/y/c/b;

.field public final g:Le/a/b0/o/a;

.field public final h:Le/a/v/a/o0/a;

.field public final i:Le/a/v/p/a;

.field public final j:Le/a/v/p/g;

.field public final k:Le/a/v/p/q;

.field public final l:Le/a/l/p2/v0;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/a3/a;Le/a/v/a/r0/c;Le/a/p5/m0;Le/a/y/c/b;Le/a/b0/o/a;Le/a/v/a/o0/a;Le/a/v/p/a;Le/a/v/p/g;Le/a/v/p/q;Le/a/l/p2/v0;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ioContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detailsViewAppearanceFactory"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flashManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socialMediaHelper"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callHistoryManagerDelegate"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detailsCallHelper"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipDelegate"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/v/a/u;->b:Ls1/w/f;

    iput-object p2, p0, Le/a/v/a/u;->c:Le/a/a3/a;

    iput-object p3, p0, Le/a/v/a/u;->d:Le/a/v/a/r0/c;

    iput-object p4, p0, Le/a/v/a/u;->e:Le/a/p5/m0;

    iput-object p5, p0, Le/a/v/a/u;->f:Le/a/y/c/b;

    iput-object p6, p0, Le/a/v/a/u;->g:Le/a/b0/o/a;

    iput-object p7, p0, Le/a/v/a/u;->h:Le/a/v/a/o0/a;

    iput-object p8, p0, Le/a/v/a/u;->i:Le/a/v/p/a;

    iput-object p9, p0, Le/a/v/a/u;->j:Le/a/v/p/g;

    iput-object p10, p0, Le/a/v/a/u;->k:Le/a/v/p/q;

    iput-object p11, p0, Le/a/v/a/u;->l:Le/a/l/p2/v0;

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Le/a/v/a/u;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "Ls1/w/d<",
            "-",
            "Le/a/v/a/d;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/v/a/u$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/v/a/u$a;

    iget v1, v0, Le/a/v/a/u$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/v/a/u$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/v/a/u$a;

    invoke-direct {v0, p0, p2}, Le/a/v/a/u$a;-><init>(Le/a/v/a/u;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/v/a/u$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/v/a/u$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/v/a/u$a;->j:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object v2, v0, Le/a/v/a/u$a;->i:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    iget-object v4, v0, Le/a/v/a/u$a;->h:Ljava/lang/Object;

    check-cast v4, Lcom/truecaller/data/entity/Contact;

    iget-object v5, v0, Le/a/v/a/u$a;->g:Ljava/lang/Object;

    check-cast v5, Le/a/v/a/u;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

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
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object p2

    const-string v2, "contact.numbers"

    invoke-static {p2, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v5, p0

    move-object v10, p2

    move-object p2, p1

    move-object p1, v10

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 7
    check-cast v4, Lcom/truecaller/data/entity/Number;

    .line 8
    iget-object v6, v5, Le/a/v/a/u;->c:Le/a/a3/a;

    const-string v7, "number"

    .line 9
    invoke-static {v4, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/truecaller/data/entity/Number;->l()Ljava/lang/String;

    move-result-object v7

    .line 10
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v4

    .line 11
    iput-object v5, v0, Le/a/v/a/u$a;->g:Ljava/lang/Object;

    iput-object p2, v0, Le/a/v/a/u$a;->h:Ljava/lang/Object;

    iput-object v2, v0, Le/a/v/a/u$a;->i:Ljava/lang/Object;

    iput-object p1, v0, Le/a/v/a/u$a;->j:Ljava/lang/Object;

    iput v3, v0, Le/a/v/a/u$a;->e:I

    .line 12
    invoke-interface {v6, v7, v4, v3, v0}, Le/a/a3/a;->e(Ljava/lang/String;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_3

    return-object v1

    :cond_3
    move-object v10, v4

    move-object v4, p2

    move-object p2, v10

    .line 13
    :goto_2
    check-cast p2, Ljava/util/Collection;

    if-eqz p2, :cond_4

    .line 14
    invoke-static {p2}, Ls1/u/i;->z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    goto :goto_3

    :cond_4
    const/4 p2, 0x0

    :goto_3
    if-eqz p2, :cond_5

    .line 15
    invoke-interface {v2, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object p2, v4

    goto :goto_1

    .line 16
    :cond_6
    check-cast v2, Ljava/util/List;

    .line 17
    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->a0()I

    move-result p1

    .line 18
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v4, v2

    move v6, v4

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 19
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/truecaller/blocking/FilterMatch;

    .line 20
    invoke-virtual {v8}, Lcom/truecaller/blocking/FilterMatch;->c()Z

    move-result v9

    if-eqz v9, :cond_9

    move v6, v1

    move v4, v3

    goto :goto_5

    .line 21
    :cond_9
    invoke-virtual {v8}, Lcom/truecaller/blocking/FilterMatch;->a()Z

    move-result v9

    if-eqz v9, :cond_a

    if-nez v4, :cond_a

    move v6, v3

    .line 22
    :cond_a
    :goto_5
    invoke-virtual {v8}, Lcom/truecaller/blocking/FilterMatch;->b()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 23
    iget v2, v8, Lcom/truecaller/blocking/FilterMatch;->f:I

    if-le v2, p1, :cond_b

    move p1, v2

    :cond_b
    move v2, v3

    goto :goto_4

    .line 24
    :cond_c
    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v0

    if-nez v0, :cond_e

    if-eqz v2, :cond_d

    goto :goto_6

    :cond_d
    move v0, v1

    goto :goto_7

    :cond_e
    :goto_6
    move v0, v3

    .line 25
    :goto_7
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->G0()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v5

    if-eqz v5, :cond_f

    move v5, v3

    goto :goto_8

    :cond_f
    move v5, v1

    :goto_8
    if-eqz v5, :cond_10

    if-nez v4, :cond_10

    if-eqz v6, :cond_10

    .line 27
    new-instance p2, Le/a/v/a/d$f$c;

    invoke-direct {p2, p1, v2}, Le/a/v/a/d$f$c;-><init>(IZ)V

    goto/16 :goto_a

    .line 28
    :cond_10
    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->G0()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_9

    :cond_11
    move v3, v1

    :goto_9
    if-eqz v3, :cond_12

    if-lez p1, :cond_12

    .line 29
    new-instance p2, Le/a/v/a/d$f$d;

    invoke-direct {p2, p1, v2}, Le/a/v/a/d$f$d;-><init>(IZ)V

    goto :goto_a

    :cond_12
    if-nez v4, :cond_13

    if-eqz v6, :cond_13

    .line 30
    new-instance p2, Le/a/v/a/d$f$c;

    invoke-direct {p2, p1, v2}, Le/a/v/a/d$f$c;-><init>(IZ)V

    goto :goto_a

    .line 31
    :cond_13
    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->r0()Z

    move-result v1

    if-eqz v1, :cond_14

    if-nez v2, :cond_14

    if-lez p1, :cond_14

    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v1

    if-eqz v1, :cond_14

    new-instance p2, Le/a/v/a/d$f$a;

    invoke-direct {p2, p1, v2}, Le/a/v/a/d$f$a;-><init>(IZ)V

    goto :goto_a

    :cond_14
    if-nez v4, :cond_15

    if-nez v6, :cond_15

    if-eqz v0, :cond_15

    .line 32
    new-instance p2, Le/a/v/a/d$f$b;

    invoke-direct {p2, p1, v2}, Le/a/v/a/d$f$b;-><init>(IZ)V

    goto :goto_a

    .line 33
    :cond_15
    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->v0()Z

    move-result p1

    if-eqz p1, :cond_16

    sget-object p2, Le/a/v/a/d$d;->a:Le/a/v/a/d$d;

    goto :goto_a

    .line 34
    :cond_16
    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->G0()Z

    move-result p1

    if-eqz p1, :cond_17

    sget-object p2, Le/a/v/a/d$g;->a:Le/a/v/a/d$g;

    goto :goto_a

    .line 35
    :cond_17
    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->x0()Z

    move-result p1

    if-eqz p1, :cond_18

    sget-object p2, Le/a/v/a/d$e;->a:Le/a/v/a/d$e;

    goto :goto_a

    .line 36
    :cond_18
    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->r0()Z

    move-result p1

    if-eqz p1, :cond_19

    sget-object p2, Le/a/v/a/d$b;->a:Le/a/v/a/d$b;

    goto :goto_a

    .line 37
    :cond_19
    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->u0()Z

    move-result p1

    if-eqz p1, :cond_1a

    sget-object p2, Le/a/v/a/d$c;->a:Le/a/v/a/d$c;

    goto :goto_a

    .line 38
    :cond_1a
    sget-object p2, Le/a/v/a/d$a;->a:Le/a/v/a/d$a;

    :goto_a
    return-object p2
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/v/a/u;->f:Le/a/y/c/b;

    const-string v1, "+"

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x4

    .line 2
    invoke-static {p1, v1, v2, v3, v4}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {v0, p1}, Le/a/y/c/b;->b(Ljava/lang/String;)Le/a/y/g/d;

    move-result-object p1

    .line 4
    iget-boolean p1, p1, Le/a/y/g/d;->c:Z

    return p1
.end method

.method public c(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "Ls1/w/d<",
            "-",
            "Le/a/v/a/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Le/a/v/a/u$b;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Le/a/v/a/u$b;

    iget v4, v3, Le/a/v/a/u$b;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Le/a/v/a/u$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Le/a/v/a/u$b;

    invoke-direct {v3, v0, v2}, Le/a/v/a/u$b;-><init>(Le/a/v/a/u;Ls1/w/d;)V

    :goto_0
    iget-object v2, v3, Le/a/v/a/u$b;->d:Ljava/lang/Object;

    sget-object v4, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v5, v3, Le/a/v/a/u$b;->e:I

    const-string v6, "contact.numbers"

    const-string v7, "number"

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x1

    if-eqz v5, :cond_6

    if-eq v5, v12, :cond_5

    if-eq v5, v8, :cond_4

    if-eq v5, v9, :cond_3

    if-eq v5, v11, :cond_2

    if-ne v5, v10, :cond_1

    iget-boolean v1, v3, Le/a/v/a/u$b;->t:Z

    iget-boolean v5, v3, Le/a/v/a/u$b;->s:Z

    iget-object v6, v3, Le/a/v/a/u$b;->r:Ljava/lang/Object;

    check-cast v6, Ljava/util/Collection;

    iget-object v7, v3, Le/a/v/a/u$b;->q:Ljava/lang/Object;

    check-cast v7, Lcom/truecaller/data/entity/HistoryEvent;

    iget-object v8, v3, Le/a/v/a/u$b;->p:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    iget-object v9, v3, Le/a/v/a/u$b;->o:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v10, v3, Le/a/v/a/u$b;->n:Ljava/lang/Object;

    check-cast v10, Le/a/v/a/r0/b;

    iget-object v11, v3, Le/a/v/a/u$b;->m:Ljava/lang/Object;

    check-cast v11, Le/a/v/a/d;

    iget-object v12, v3, Le/a/v/a/u$b;->l:Ljava/lang/Object;

    check-cast v12, Lcom/truecaller/data/entity/Contact;

    iget-object v13, v3, Le/a/v/a/u$b;->k:Ljava/lang/Object;

    check-cast v13, Lcom/truecaller/data/entity/Number;

    iget-object v14, v3, Le/a/v/a/u$b;->j:Ljava/lang/Object;

    check-cast v14, Ljava/util/Iterator;

    iget-object v15, v3, Le/a/v/a/u$b;->i:Ljava/lang/Object;

    check-cast v15, Ljava/util/Collection;

    move/from16 p1, v1

    iget-object v1, v3, Le/a/v/a/u$b;->h:Ljava/lang/Object;

    check-cast v1, Le/a/p5/l0;

    move-object/from16 p2, v1

    iget-object v1, v3, Le/a/v/a/u$b;->g:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/u;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    move-object/from16 v16, v14

    move-object v14, v13

    move-object v13, v7

    move-object v7, v4

    move-object v4, v11

    move-object v11, v8

    move/from16 v8, p1

    move-object/from16 v26, v10

    move v10, v5

    move-object/from16 v5, v26

    goto/16 :goto_20

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-boolean v1, v3, Le/a/v/a/u$b;->t:Z

    iget-boolean v5, v3, Le/a/v/a/u$b;->s:Z

    iget-object v7, v3, Le/a/v/a/u$b;->n:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iget-object v8, v3, Le/a/v/a/u$b;->m:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    iget-object v9, v3, Le/a/v/a/u$b;->l:Ljava/lang/Object;

    check-cast v9, Le/a/v/a/r0/b;

    iget-object v10, v3, Le/a/v/a/u$b;->k:Ljava/lang/Object;

    check-cast v10, Le/a/v/a/d;

    iget-object v11, v3, Le/a/v/a/u$b;->j:Ljava/lang/Object;

    check-cast v11, Lcom/truecaller/data/entity/Contact;

    iget-object v12, v3, Le/a/v/a/u$b;->i:Ljava/lang/Object;

    check-cast v12, Le/a/p5/l0;

    iget-object v13, v3, Le/a/v/a/u$b;->h:Ljava/lang/Object;

    check-cast v13, Lcom/truecaller/data/entity/Contact;

    iget-object v14, v3, Le/a/v/a/u$b;->g:Ljava/lang/Object;

    check-cast v14, Le/a/v/a/u;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v0, v7

    move-object v7, v4

    move-object/from16 v26, v3

    move-object v3, v2

    move-object/from16 v2, v26

    goto/16 :goto_1e

    :cond_3
    iget-boolean v1, v3, Le/a/v/a/u$b;->s:Z

    iget-object v5, v3, Le/a/v/a/u$b;->n:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v7, v3, Le/a/v/a/u$b;->m:Ljava/lang/Object;

    check-cast v7, Le/a/v/a/r0/b;

    iget-object v8, v3, Le/a/v/a/u$b;->l:Ljava/lang/Object;

    check-cast v8, Le/a/v/a/d;

    iget-object v9, v3, Le/a/v/a/u$b;->k:Ljava/lang/Object;

    check-cast v9, Lcom/truecaller/data/entity/Contact;

    iget-object v10, v3, Le/a/v/a/u$b;->j:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    iget-object v11, v3, Le/a/v/a/u$b;->i:Ljava/lang/Object;

    check-cast v11, Le/a/p5/l0;

    iget-object v12, v3, Le/a/v/a/u$b;->h:Ljava/lang/Object;

    check-cast v12, Lcom/truecaller/data/entity/Contact;

    iget-object v13, v3, Le/a/v/a/u$b;->g:Ljava/lang/Object;

    check-cast v13, Le/a/v/a/u;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move-object v11, v9

    move-object v9, v7

    move-object v7, v4

    move-object v4, v2

    move-object v2, v3

    move-object/from16 v26, v5

    move v5, v1

    move-object v1, v10

    move-object v10, v8

    move-object/from16 v8, v26

    goto/16 :goto_1d

    :cond_4
    iget-boolean v1, v3, Le/a/v/a/u$b;->s:Z

    iget-object v5, v3, Le/a/v/a/u$b;->j:Ljava/lang/Object;

    check-cast v5, Le/a/v/a/d;

    iget-object v8, v3, Le/a/v/a/u$b;->i:Ljava/lang/Object;

    check-cast v8, Le/a/p5/l0;

    iget-object v9, v3, Le/a/v/a/u$b;->h:Ljava/lang/Object;

    check-cast v9, Lcom/truecaller/data/entity/Contact;

    iget-object v10, v3, Le/a/v/a/u$b;->g:Ljava/lang/Object;

    check-cast v10, Le/a/v/a/u;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_5
    iget-object v1, v3, Le/a/v/a/u$b;->i:Ljava/lang/Object;

    check-cast v1, Le/a/p5/l0;

    iget-object v5, v3, Le/a/v/a/u$b;->h:Ljava/lang/Object;

    check-cast v5, Lcom/truecaller/data/entity/Contact;

    iget-object v9, v3, Le/a/v/a/u$b;->g:Ljava/lang/Object;

    check-cast v9, Le/a/v/a/u;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v10, v9

    move-object/from16 v26, v5

    move-object v5, v1

    move-object/from16 v1, v26

    goto :goto_1

    :cond_6
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Le/a/v/a/u;->e:Le/a/p5/m0;

    const-string v5, "DETAILS_VIEW_LOAD"

    invoke-interface {v2, v5}, Le/a/p5/m0;->a(Ljava/lang/String;)Le/a/p5/l0;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Le/a/p5/l0;->start()V

    .line 6
    iput-object v0, v3, Le/a/v/a/u$b;->g:Ljava/lang/Object;

    iput-object v1, v3, Le/a/v/a/u$b;->h:Ljava/lang/Object;

    iput-object v2, v3, Le/a/v/a/u$b;->i:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, v3, Le/a/v/a/u$b;->e:I

    invoke-virtual {v0, v1, v3}, Le/a/v/a/u;->a(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_7

    return-object v4

    :cond_7
    move-object v10, v0

    move-object/from16 v26, v5

    move-object v5, v2

    move-object/from16 v2, v26

    .line 7
    :goto_1
    check-cast v2, Le/a/v/a/d;

    .line 8
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v9

    .line 10
    iget-object v11, v10, Le/a/v/a/u;->g:Le/a/b0/o/a;

    const-string v12, "featureFlash"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, v10, Le/a/v/a/u;->g:Le/a/b0/o/a;

    const-string v12, "flash_disabled"

    invoke-interface {v11, v12}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    const/4 v11, 0x1

    goto :goto_2

    :cond_8
    const/4 v11, 0x0

    :goto_2
    if-eqz v11, :cond_9

    goto :goto_3

    :cond_9
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_d

    const-string v11, "numbers"

    .line 11
    invoke-static {v9, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Lcom/truecaller/data/entity/Number;

    .line 13
    invoke-static {v12, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_b

    .line 14
    invoke-virtual {v10, v12}, Le/a/v/a/u;->b(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    const/4 v12, 0x1

    goto :goto_4

    :cond_b
    const/4 v12, 0x0

    :goto_4
    if-eqz v12, :cond_a

    goto :goto_5

    :cond_c
    const/4 v11, 0x0

    .line 15
    :goto_5
    check-cast v11, Lcom/truecaller/data/entity/Number;

    if-eqz v11, :cond_d

    const/4 v9, 0x1

    goto :goto_6

    :cond_d
    const/4 v9, 0x0

    .line 16
    :goto_6
    iget-object v11, v10, Le/a/v/a/u;->h:Le/a/v/a/o0/a;

    iput-object v10, v3, Le/a/v/a/u$b;->g:Ljava/lang/Object;

    iput-object v1, v3, Le/a/v/a/u$b;->h:Ljava/lang/Object;

    iput-object v5, v3, Le/a/v/a/u$b;->i:Ljava/lang/Object;

    iput-object v2, v3, Le/a/v/a/u$b;->j:Ljava/lang/Object;

    iput-boolean v9, v3, Le/a/v/a/u$b;->s:Z

    iput v8, v3, Le/a/v/a/u$b;->e:I

    invoke-interface {v11, v1, v3}, Le/a/v/a/o0/a;->f(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v4, :cond_e

    return-object v4

    :cond_e
    move/from16 v26, v9

    move-object v9, v1

    move/from16 v1, v26

    move-object/from16 v27, v5

    move-object v5, v2

    move-object v2, v8

    move-object/from16 v8, v27

    .line 17
    :goto_7
    check-cast v2, Ljava/util/List;

    .line 18
    iget-object v11, v10, Le/a/v/a/u;->d:Le/a/v/a/r0/c;

    .line 19
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "contactType"

    invoke-static {v5, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v12, Le/a/v/a/d$d;->a:Le/a/v/a/d$d;

    invoke-static {v5, v12}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 21
    iget-object v12, v11, Le/a/v/a/r0/c;->b:Le/a/i5/d;

    .line 22
    instance-of v13, v12, Le/a/i5/d$c;

    if-eqz v13, :cond_f

    new-instance v12, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;

    sget-object v13, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;->LIGHT:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;

    sget-object v14, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;->DARK:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;

    invoke-direct {v12, v13, v14}, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;-><init>(Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;)V

    :goto_8
    move-object v15, v12

    goto :goto_9

    .line 23
    :cond_f
    instance-of v13, v12, Le/a/i5/d$d;

    if-eqz v13, :cond_10

    new-instance v12, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;

    sget-object v13, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;->LIGHT:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;

    invoke-direct {v12, v13, v13}, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;-><init>(Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;)V

    goto :goto_8

    .line 24
    :cond_10
    instance-of v13, v12, Le/a/i5/d$a;

    if-eqz v13, :cond_11

    new-instance v12, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;

    sget-object v13, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;->LIGHT:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;

    sget-object v14, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;->DARK:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;

    invoke-direct {v12, v13, v14}, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;-><init>(Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;)V

    goto :goto_8

    .line 25
    :cond_11
    instance-of v12, v12, Le/a/i5/d$b;

    if-eqz v12, :cond_12

    new-instance v12, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;

    sget-object v13, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;->LIGHT:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;

    invoke-direct {v12, v13, v13}, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;-><init>(Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;)V

    goto :goto_8

    .line 26
    :goto_9
    new-instance v12, Le/a/v/a/r0/b;

    .line 27
    new-instance v13, Le/a/v/a/r0/f;

    .line 28
    sget v16, Lcom/truecaller/details_view/R$string;->details_view_priority_caller_title:I

    .line 29
    iget-object v14, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    sget v0, Lcom/truecaller/details_view/R$color;->white:I

    invoke-interface {v14, v0}, Le/a/p5/c0;->a(I)I

    move-result v17

    const/16 v18, 0x0

    .line 30
    iget-object v14, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    invoke-interface {v14, v0}, Le/a/p5/c0;->a(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 31
    iget-object v14, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    invoke-interface {v14, v0}, Le/a/p5/c0;->a(I)I

    move-result v20

    .line 32
    iget-object v0, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    sget v14, Lcom/truecaller/details_view/R$attr;->tcx_detailsViewDefaultCollapsedToolbarIconColor:I

    invoke-interface {v0, v14}, Le/a/p5/h0;->l(I)I

    move-result v21

    .line 33
    iget-object v0, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    sget v14, Lcom/truecaller/details_view/R$drawable;->bg_header_priority:I

    invoke-interface {v0, v14}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v14, "themedResourceProvider.g\u2026wable.bg_header_priority)"

    invoke-static {v0, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v14, Le/a/v/a/r0/i;

    move-object/from16 p2, v4

    iget-object v4, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    move/from16 p1, v1

    sget v1, Lcom/truecaller/details_view/R$color;->tcx_priority_badge:I

    invoke-interface {v4, v1}, Le/a/p5/c0;->a(I)I

    move-result v4

    invoke-direct {v14, v4}, Le/a/v/a/r0/i;-><init>(I)V

    .line 35
    iget-object v4, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    move-object/from16 v22, v14

    sget v14, Lcom/truecaller/details_view/R$attr;->tcx_backgroundPrimary:I

    invoke-interface {v4, v14}, Le/a/p5/h0;->l(I)I

    move-result v24

    move-object/from16 v4, v22

    move-object v14, v13

    move-object/from16 v22, v0

    move-object/from16 v23, v4

    .line 36
    invoke-direct/range {v14 .. v24}, Le/a/v/a/r0/f;-><init>(Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;IILandroid/graphics/drawable/Drawable;Ljava/lang/Integer;IILandroid/graphics/drawable/Drawable;Le/a/v/a/r0/h;I)V

    .line 37
    new-instance v0, Le/a/v/a/r0/a;

    .line 38
    new-instance v4, Le/a/v/a/r0/i;

    iget-object v14, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    sget v15, Lcom/truecaller/details_view/R$attr;->tcx_priority_badge:I

    invoke-interface {v14, v15}, Le/a/p5/h0;->l(I)I

    move-result v14

    invoke-direct {v4, v14}, Le/a/v/a/r0/i;-><init>(I)V

    .line 39
    iget-object v14, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    sget v15, Lcom/truecaller/details_view/R$attr;->tcx_textPrimary:I

    invoke-interface {v14, v15}, Le/a/p5/h0;->l(I)I

    move-result v14

    .line 40
    invoke-direct {v0, v4, v14}, Le/a/v/a/r0/a;-><init>(Le/a/v/a/r0/h;I)V

    .line 41
    new-instance v4, Le/a/v/a/r0/d;

    .line 42
    iget-object v11, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    invoke-interface {v11, v1}, Le/a/p5/c0;->a(I)I

    move-result v1

    const/4 v11, 0x0

    .line 43
    invoke-direct {v4, v1, v11}, Le/a/v/a/r0/d;-><init>(ILandroid/graphics/drawable/Drawable;)V

    .line 44
    invoke-direct {v12, v13, v0, v11, v4}, Le/a/v/a/r0/b;-><init>(Le/a/v/a/r0/f;Le/a/v/a/r0/a;Le/a/v/a/r0/e;Le/a/v/a/r0/d;)V

    move-object/from16 v23, v2

    move-object/from16 v25, v3

    move-object/from16 v24, v8

    goto/16 :goto_16

    .line 45
    :cond_12
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    :cond_13
    move/from16 p1, v1

    move-object/from16 p2, v4

    .line 46
    sget-object v0, Le/a/v/a/d$g;->a:Le/a/v/a/d$g;

    invoke-static {v5, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_a

    :cond_14
    instance-of v0, v5, Le/a/v/a/d$f$d;

    if-eqz v0, :cond_19

    .line 47
    :goto_a
    iget-object v0, v11, Le/a/v/a/r0/c;->b:Le/a/i5/d;

    .line 48
    instance-of v1, v0, Le/a/i5/d$c;

    if-eqz v1, :cond_15

    new-instance v0, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;

    sget-object v1, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;->LIGHT:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;

    sget-object v4, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;->DARK:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;

    invoke-direct {v0, v1, v4}, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;-><init>(Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;)V

    :goto_b
    move-object v13, v0

    goto :goto_c

    .line 49
    :cond_15
    instance-of v1, v0, Le/a/i5/d$d;

    if-eqz v1, :cond_16

    new-instance v0, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;

    sget-object v1, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;->LIGHT:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;

    invoke-direct {v0, v1, v1}, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;-><init>(Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;)V

    goto :goto_b

    .line 50
    :cond_16
    instance-of v1, v0, Le/a/i5/d$a;

    if-eqz v1, :cond_17

    new-instance v0, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;

    sget-object v1, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;->LIGHT:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;

    sget-object v4, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;->DARK:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;

    invoke-direct {v0, v1, v4}, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;-><init>(Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;)V

    goto :goto_b

    .line 51
    :cond_17
    instance-of v0, v0, Le/a/i5/d$b;

    if-eqz v0, :cond_18

    new-instance v0, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;

    sget-object v1, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;->LIGHT:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;

    invoke-direct {v0, v1, v1}, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;-><init>(Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;)V

    goto :goto_b

    .line 52
    :goto_c
    new-instance v0, Le/a/v/a/r0/b;

    .line 53
    new-instance v1, Le/a/v/a/r0/f;

    .line 54
    sget v14, Lcom/truecaller/details_view/R$string;->details_view_verified_business_title:I

    .line 55
    iget-object v4, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    sget v12, Lcom/truecaller/details_view/R$color;->white:I

    invoke-interface {v4, v12}, Le/a/p5/c0;->a(I)I

    move-result v15

    .line 56
    iget-object v4, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    move-object/from16 v23, v2

    sget v2, Lcom/truecaller/details_view/R$drawable;->ic_verified_white_tick:I

    invoke-interface {v4, v2}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 57
    iget-object v2, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    invoke-interface {v2, v12}, Le/a/p5/c0;->a(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 58
    iget-object v2, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    invoke-interface {v2, v12}, Le/a/p5/c0;->a(I)I

    move-result v18

    .line 59
    iget-object v2, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    sget v4, Lcom/truecaller/details_view/R$attr;->tcx_detailsViewDefaultCollapsedToolbarIconColor:I

    invoke-interface {v2, v4}, Le/a/p5/h0;->l(I)I

    move-result v19

    .line 60
    iget-object v2, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    sget v4, Lcom/truecaller/details_view/R$drawable;->bg_header_verified_business:I

    invoke-interface {v2, v4}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const-string v4, "themedResourceProvider.g\u2026header_verified_business)"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v4, Le/a/v/a/r0/i;

    iget-object v12, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    move-object/from16 v24, v8

    sget v8, Lcom/truecaller/details_view/R$color;->tcx_verifiedBusinessGreen:I

    invoke-interface {v12, v8}, Le/a/p5/c0;->a(I)I

    move-result v12

    invoke-direct {v4, v12}, Le/a/v/a/r0/i;-><init>(I)V

    .line 62
    iget-object v12, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    move-object/from16 v25, v3

    sget v3, Lcom/truecaller/details_view/R$attr;->tcx_backgroundPrimary:I

    invoke-interface {v12, v3}, Le/a/p5/h0;->l(I)I

    move-result v22

    move-object v12, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v4

    .line 63
    invoke-direct/range {v12 .. v22}, Le/a/v/a/r0/f;-><init>(Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;IILandroid/graphics/drawable/Drawable;Ljava/lang/Integer;IILandroid/graphics/drawable/Drawable;Le/a/v/a/r0/h;I)V

    .line 64
    new-instance v2, Le/a/v/a/r0/a;

    .line 65
    new-instance v3, Le/a/v/a/r0/i;

    iget-object v4, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    sget v12, Lcom/truecaller/details_view/R$attr;->tcx_verifiedBusinessGreen:I

    invoke-interface {v4, v12}, Le/a/p5/h0;->l(I)I

    move-result v4

    invoke-direct {v3, v4}, Le/a/v/a/r0/i;-><init>(I)V

    .line 66
    iget-object v4, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    sget v12, Lcom/truecaller/details_view/R$attr;->tcx_textPrimary:I

    invoke-interface {v4, v12}, Le/a/p5/h0;->l(I)I

    move-result v4

    .line 67
    invoke-direct {v2, v3, v4}, Le/a/v/a/r0/a;-><init>(Le/a/v/a/r0/h;I)V

    .line 68
    new-instance v3, Le/a/v/a/r0/d;

    iget-object v4, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    invoke-interface {v4, v8}, Le/a/p5/c0;->a(I)I

    move-result v4

    const/4 v8, 0x0

    invoke-direct {v3, v4, v8}, Le/a/v/a/r0/d;-><init>(ILandroid/graphics/drawable/Drawable;)V

    .line 69
    invoke-direct {v0, v1, v2, v8, v3}, Le/a/v/a/r0/b;-><init>(Le/a/v/a/r0/f;Le/a/v/a/r0/a;Le/a/v/a/r0/e;Le/a/v/a/r0/d;)V

    move-object v12, v0

    goto/16 :goto_16

    .line 70
    :cond_18
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    :cond_19
    move-object/from16 v23, v2

    move-object/from16 v25, v3

    move-object/from16 v24, v8

    .line 71
    sget-object v0, Le/a/v/a/d$b;->a:Le/a/v/a/d$b;

    invoke-static {v5, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_d

    :cond_1a
    instance-of v0, v5, Le/a/v/a/d$f$a;

    if-eqz v0, :cond_1f

    .line 72
    :goto_d
    iget-object v0, v11, Le/a/v/a/r0/c;->b:Le/a/i5/d;

    .line 73
    instance-of v1, v0, Le/a/i5/d$a;

    if-eqz v1, :cond_1b

    new-instance v0, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;

    sget-object v1, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;->DARK:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;

    invoke-direct {v0, v1, v1}, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;-><init>(Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;)V

    :goto_e
    move-object v13, v0

    goto :goto_f

    .line 74
    :cond_1b
    instance-of v1, v0, Le/a/i5/d$c;

    if-eqz v1, :cond_1c

    new-instance v0, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;

    sget-object v1, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;->DARK:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;

    invoke-direct {v0, v1, v1}, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;-><init>(Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;)V

    goto :goto_e

    .line 75
    :cond_1c
    instance-of v1, v0, Le/a/i5/d$b;

    if-eqz v1, :cond_1d

    new-instance v0, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;

    sget-object v1, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;->DARK:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;

    sget-object v2, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;->LIGHT:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;

    invoke-direct {v0, v1, v2}, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;-><init>(Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;)V

    goto :goto_e

    .line 76
    :cond_1d
    instance-of v0, v0, Le/a/i5/d$d;

    if-eqz v0, :cond_1e

    new-instance v0, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;

    sget-object v1, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;->DARK:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;

    sget-object v2, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;->LIGHT:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;

    invoke-direct {v0, v1, v2}, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;-><init>(Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;)V

    goto :goto_e

    .line 77
    :goto_f
    sget v14, Lcom/truecaller/details_view/R$string;->details_view_gold_user_title:I

    .line 78
    iget-object v0, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    sget v1, Lcom/truecaller/details_view/R$color;->tcx_goldTextPrimary:I

    invoke-interface {v0, v1}, Le/a/p5/c0;->a(I)I

    move-result v18

    .line 79
    new-instance v0, Le/a/v/a/r0/g;

    iget-object v1, v11, Le/a/v/a/r0/c;->b:Le/a/i5/d;

    iget-object v2, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    sget v3, Lcom/truecaller/details_view/R$color;->tcx_goldGradientSum:I

    invoke-interface {v2, v3}, Le/a/p5/c0;->a(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Le/a/v/a/r0/g;-><init>(Le/a/i5/d;I)V

    .line 80
    new-instance v1, Le/a/v/a/r0/b;

    .line 81
    new-instance v2, Le/a/v/a/r0/f;

    const/16 v16, 0x0

    .line 82
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 83
    iget-object v3, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    sget v4, Lcom/truecaller/details_view/R$attr;->tcx_detailsViewGoldCollapsedToolbarIconColor:I

    invoke-interface {v3, v4}, Le/a/p5/h0;->l(I)I

    move-result v19

    .line 84
    new-instance v3, Le/a/b0/a/g;

    iget-object v4, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    invoke-direct {v3, v4}, Le/a/b0/a/g;-><init>(Le/a/p5/h0;)V

    .line 85
    iget-object v4, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    sget v8, Lcom/truecaller/details_view/R$attr;->tcx_backgroundPrimary:I

    invoke-interface {v4, v8}, Le/a/p5/h0;->l(I)I

    move-result v22

    move-object v12, v2

    move/from16 v15, v18

    move-object/from16 v20, v3

    move-object/from16 v21, v0

    .line 86
    invoke-direct/range {v12 .. v22}, Le/a/v/a/r0/f;-><init>(Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;IILandroid/graphics/drawable/Drawable;Ljava/lang/Integer;IILandroid/graphics/drawable/Drawable;Le/a/v/a/r0/h;I)V

    .line 87
    new-instance v3, Le/a/v/a/r0/a;

    .line 88
    iget-object v4, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    sget v8, Lcom/truecaller/details_view/R$attr;->tcx_textPrimary:I

    invoke-interface {v4, v8}, Le/a/p5/h0;->l(I)I

    move-result v4

    .line 89
    invoke-direct {v3, v0, v4}, Le/a/v/a/r0/a;-><init>(Le/a/v/a/r0/h;I)V

    .line 90
    new-instance v4, Le/a/v/a/r0/e;

    invoke-direct {v4, v0, v0, v0}, Le/a/v/a/r0/e;-><init>(Le/a/v/a/r0/h;Le/a/v/a/r0/h;Le/a/v/a/r0/h;)V

    .line 91
    new-instance v0, Le/a/v/a/r0/d;

    .line 92
    iget-object v8, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    sget v11, Lcom/truecaller/details_view/R$attr;->tcx_detailsViewFabGoldColor:I

    invoke-interface {v8, v11}, Le/a/p5/h0;->l(I)I

    move-result v8

    const/4 v11, 0x0

    .line 93
    invoke-direct {v0, v8, v11}, Le/a/v/a/r0/d;-><init>(ILandroid/graphics/drawable/Drawable;)V

    .line 94
    invoke-direct {v1, v2, v3, v4, v0}, Le/a/v/a/r0/b;-><init>(Le/a/v/a/r0/f;Le/a/v/a/r0/a;Le/a/v/a/r0/e;Le/a/v/a/r0/d;)V

    :goto_10
    move-object v12, v1

    goto/16 :goto_16

    .line 95
    :cond_1e
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    .line 96
    :cond_1f
    instance-of v0, v5, Le/a/v/a/d$f;

    if-eqz v0, :cond_24

    .line 97
    iget-object v0, v11, Le/a/v/a/r0/c;->b:Le/a/i5/d;

    .line 98
    instance-of v1, v0, Le/a/i5/d$c;

    if-eqz v1, :cond_20

    new-instance v0, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;

    sget-object v1, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;->LIGHT:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;

    sget-object v2, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;->DARK:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;

    invoke-direct {v0, v1, v2}, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;-><init>(Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;)V

    :goto_11
    move-object v13, v0

    goto :goto_12

    .line 99
    :cond_20
    instance-of v1, v0, Le/a/i5/d$d;

    if-eqz v1, :cond_21

    new-instance v0, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;

    sget-object v1, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;->LIGHT:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;

    invoke-direct {v0, v1, v1}, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;-><init>(Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;)V

    goto :goto_11

    .line 100
    :cond_21
    instance-of v1, v0, Le/a/i5/d$a;

    if-eqz v1, :cond_22

    new-instance v0, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;

    sget-object v1, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;->LIGHT:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;

    sget-object v2, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;->DARK:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;

    invoke-direct {v0, v1, v2}, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;-><init>(Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;)V

    goto :goto_11

    .line 101
    :cond_22
    instance-of v0, v0, Le/a/i5/d$b;

    if-eqz v0, :cond_23

    new-instance v0, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;

    sget-object v1, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;->LIGHT:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;

    invoke-direct {v0, v1, v1}, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;-><init>(Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;)V

    goto :goto_11

    .line 102
    :goto_12
    new-instance v0, Le/a/v/a/r0/i;

    iget-object v1, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    sget v2, Lcom/truecaller/details_view/R$attr;->tcx_brandBackgroundBlue:I

    invoke-interface {v1, v2}, Le/a/p5/h0;->l(I)I

    move-result v1

    invoke-direct {v0, v1}, Le/a/v/a/r0/i;-><init>(I)V

    .line 103
    new-instance v1, Le/a/v/a/r0/b;

    .line 104
    new-instance v2, Le/a/v/a/r0/f;

    .line 105
    sget v14, Lcom/truecaller/details_view/R$string;->details_view_identified_by_truecaller:I

    .line 106
    iget-object v3, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    sget v4, Lcom/truecaller/details_view/R$color;->white:I

    invoke-interface {v3, v4}, Le/a/p5/c0;->a(I)I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 107
    iget-object v3, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    invoke-interface {v3, v4}, Le/a/p5/c0;->a(I)I

    move-result v18

    .line 108
    iget-object v3, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    sget v4, Lcom/truecaller/details_view/R$attr;->tcx_detailsViewDefaultCollapsedToolbarIconColor:I

    invoke-interface {v3, v4}, Le/a/p5/h0;->l(I)I

    move-result v19

    .line 109
    iget-object v3, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    sget v4, Lcom/truecaller/details_view/R$drawable;->bg_header_spammer:I

    invoke-interface {v3, v4}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const-string v4, "themedResourceProvider.g\u2026awable.bg_header_spammer)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    new-instance v4, Le/a/v/a/r0/i;

    iget-object v8, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    sget v12, Lcom/truecaller/details_view/R$attr;->tcx_textSecondary:I

    invoke-interface {v8, v12}, Le/a/p5/h0;->l(I)I

    move-result v8

    invoke-direct {v4, v8}, Le/a/v/a/r0/i;-><init>(I)V

    .line 111
    iget-object v8, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    sget v12, Lcom/truecaller/details_view/R$attr;->tcx_backgroundPrimary:I

    invoke-interface {v8, v12}, Le/a/p5/h0;->l(I)I

    move-result v22

    move-object v12, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    .line 112
    invoke-direct/range {v12 .. v22}, Le/a/v/a/r0/f;-><init>(Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;IILandroid/graphics/drawable/Drawable;Ljava/lang/Integer;IILandroid/graphics/drawable/Drawable;Le/a/v/a/r0/h;I)V

    .line 113
    new-instance v3, Le/a/v/a/r0/a;

    .line 114
    new-instance v4, Le/a/v/a/r0/i;

    iget-object v8, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    sget v12, Lcom/truecaller/details_view/R$attr;->tcx_alertBackgroundRed:I

    invoke-interface {v8, v12}, Le/a/p5/h0;->l(I)I

    move-result v8

    invoke-direct {v4, v8}, Le/a/v/a/r0/i;-><init>(I)V

    .line 115
    iget-object v8, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    sget v11, Lcom/truecaller/details_view/R$attr;->tcx_textPrimary:I

    invoke-interface {v8, v11}, Le/a/p5/h0;->l(I)I

    move-result v8

    .line 116
    invoke-direct {v3, v4, v8}, Le/a/v/a/r0/a;-><init>(Le/a/v/a/r0/h;I)V

    .line 117
    new-instance v4, Le/a/v/a/r0/e;

    invoke-direct {v4, v0, v0, v0}, Le/a/v/a/r0/e;-><init>(Le/a/v/a/r0/h;Le/a/v/a/r0/h;Le/a/v/a/r0/h;)V

    const/4 v0, 0x0

    .line 118
    invoke-direct {v1, v2, v3, v4, v0}, Le/a/v/a/r0/b;-><init>(Le/a/v/a/r0/f;Le/a/v/a/r0/a;Le/a/v/a/r0/e;Le/a/v/a/r0/d;)V

    goto/16 :goto_10

    .line 119
    :cond_23
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    .line 120
    :cond_24
    sget-object v0, Le/a/v/a/d$a;->a:Le/a/v/a/d$a;

    invoke-static {v5, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_13

    :cond_25
    sget-object v0, Le/a/v/a/d$e;->a:Le/a/v/a/d$e;

    invoke-static {v5, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_13

    :cond_26
    sget-object v0, Le/a/v/a/d$c;->a:Le/a/v/a/d$c;

    invoke-static {v5, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 121
    :goto_13
    iget-object v0, v11, Le/a/v/a/r0/c;->b:Le/a/i5/d;

    .line 122
    instance-of v1, v0, Le/a/i5/d$c;

    if-eqz v1, :cond_27

    new-instance v0, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;

    sget-object v1, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;->LIGHT:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;

    sget-object v2, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;->DARK:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;

    invoke-direct {v0, v1, v2}, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;-><init>(Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;)V

    :goto_14
    move-object v13, v0

    goto :goto_15

    .line 123
    :cond_27
    instance-of v1, v0, Le/a/i5/d$d;

    if-eqz v1, :cond_28

    new-instance v0, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;

    sget-object v1, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;->LIGHT:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;

    invoke-direct {v0, v1, v1}, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;-><init>(Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;)V

    goto :goto_14

    .line 124
    :cond_28
    instance-of v1, v0, Le/a/i5/d$a;

    if-eqz v1, :cond_29

    new-instance v0, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;

    sget-object v1, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;->LIGHT:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;

    sget-object v2, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;->DARK:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;

    invoke-direct {v0, v1, v2}, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;-><init>(Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;)V

    goto :goto_14

    .line 125
    :cond_29
    instance-of v0, v0, Le/a/i5/d$b;

    if-eqz v0, :cond_36

    new-instance v0, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;

    sget-object v1, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;->LIGHT:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;

    invoke-direct {v0, v1, v1}, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;-><init>(Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;)V

    goto :goto_14

    .line 126
    :goto_15
    iget-object v0, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    sget v1, Lcom/truecaller/details_view/R$attr;->tcx_brandBackgroundBlue:I

    invoke-interface {v0, v1}, Le/a/p5/h0;->l(I)I

    move-result v0

    .line 127
    new-instance v1, Le/a/v/a/r0/i;

    invoke-direct {v1, v0}, Le/a/v/a/r0/i;-><init>(I)V

    .line 128
    new-instance v2, Le/a/v/a/r0/b;

    .line 129
    new-instance v3, Le/a/v/a/r0/f;

    .line 130
    sget v14, Lcom/truecaller/details_view/R$string;->details_view_identified_by_truecaller:I

    .line 131
    iget-object v4, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    sget v8, Lcom/truecaller/details_view/R$color;->white:I

    invoke-interface {v4, v8}, Le/a/p5/c0;->a(I)I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 132
    iget-object v4, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    invoke-interface {v4, v8}, Le/a/p5/c0;->a(I)I

    move-result v18

    .line 133
    iget-object v4, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    sget v8, Lcom/truecaller/details_view/R$attr;->tcx_detailsViewDefaultCollapsedToolbarIconColor:I

    invoke-interface {v4, v8}, Le/a/p5/h0;->l(I)I

    move-result v19

    .line 134
    iget-object v4, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    sget v8, Lcom/truecaller/details_view/R$drawable;->bg_header_default:I

    invoke-interface {v4, v8}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string v8, "themedResourceProvider.g\u2026awable.bg_header_default)"

    invoke-static {v4, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iget-object v8, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    sget v12, Lcom/truecaller/details_view/R$attr;->tcx_backgroundPrimary:I

    invoke-interface {v8, v12}, Le/a/p5/h0;->l(I)I

    move-result v22

    move-object v12, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v1

    .line 136
    invoke-direct/range {v12 .. v22}, Le/a/v/a/r0/f;-><init>(Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;IILandroid/graphics/drawable/Drawable;Ljava/lang/Integer;IILandroid/graphics/drawable/Drawable;Le/a/v/a/r0/h;I)V

    .line 137
    new-instance v4, Le/a/v/a/r0/a;

    .line 138
    iget-object v8, v11, Le/a/v/a/r0/c;->a:Le/a/p5/h0;

    sget v11, Lcom/truecaller/details_view/R$attr;->tcx_textPrimary:I

    invoke-interface {v8, v11}, Le/a/p5/h0;->l(I)I

    move-result v8

    .line 139
    invoke-direct {v4, v1, v8}, Le/a/v/a/r0/a;-><init>(Le/a/v/a/r0/h;I)V

    .line 140
    new-instance v8, Le/a/v/a/r0/e;

    invoke-direct {v8, v1, v1, v1}, Le/a/v/a/r0/e;-><init>(Le/a/v/a/r0/h;Le/a/v/a/r0/h;Le/a/v/a/r0/h;)V

    .line 141
    new-instance v1, Le/a/v/a/r0/d;

    const/4 v11, 0x0

    invoke-direct {v1, v0, v11}, Le/a/v/a/r0/d;-><init>(ILandroid/graphics/drawable/Drawable;)V

    .line 142
    invoke-direct {v2, v3, v4, v8, v1}, Le/a/v/a/r0/b;-><init>(Le/a/v/a/r0/f;Le/a/v/a/r0/a;Le/a/v/a/r0/e;Le/a/v/a/r0/d;)V

    move-object v12, v2

    .line 143
    :goto_16
    invoke-virtual {v9}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v6}, Le/d/c/a/a;->S(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 144
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2a
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "number.normalizedNumber"

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/truecaller/data/entity/Number;

    .line 145
    invoke-static {v4, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2b

    const/4 v8, 0x1

    goto :goto_18

    :cond_2b
    const/4 v8, 0x0

    :goto_18
    if-eqz v8, :cond_2c

    invoke-virtual {v4}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Le/a/v/a/u;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    const/4 v3, 0x1

    goto :goto_19

    :cond_2c
    const/4 v3, 0x0

    :goto_19
    if-eqz v3, :cond_2a

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 146
    :cond_2d
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 148
    check-cast v2, Lcom/truecaller/data/entity/Number;

    .line 149
    invoke-virtual {v9}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v4

    const-string v8, ""

    if-eqz v4, :cond_2e

    goto :goto_1b

    :cond_2e
    move-object v4, v8

    .line 150
    :goto_1b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_2f

    const/4 v11, 0x1

    goto :goto_1c

    :cond_2f
    const/4 v11, 0x0

    :goto_1c
    if-eqz v11, :cond_30

    invoke-static {v2, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v4

    .line 151
    :cond_30
    new-instance v11, Lcom/truecaller/flashsdk/models/FlashContact;

    invoke-static {v2, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "+"

    const/4 v14, 0x4

    const/4 v15, 0x0

    .line 152
    invoke-static {v2, v13, v8, v15, v14}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    const-string v8, "name"

    .line 153
    invoke-static {v4, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-direct {v11, v2, v4, v8}, Lcom/truecaller/flashsdk/models/FlashContact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_31
    move-object/from16 v2, v25

    .line 154
    iput-object v10, v2, Le/a/v/a/u$b;->g:Ljava/lang/Object;

    iput-object v9, v2, Le/a/v/a/u$b;->h:Ljava/lang/Object;

    move-object/from16 v8, v24

    iput-object v8, v2, Le/a/v/a/u$b;->i:Ljava/lang/Object;

    move-object/from16 v1, v23

    iput-object v1, v2, Le/a/v/a/u$b;->j:Ljava/lang/Object;

    iput-object v9, v2, Le/a/v/a/u$b;->k:Ljava/lang/Object;

    iput-object v5, v2, Le/a/v/a/u$b;->l:Ljava/lang/Object;

    iput-object v12, v2, Le/a/v/a/u$b;->m:Ljava/lang/Object;

    iput-object v0, v2, Le/a/v/a/u$b;->n:Ljava/lang/Object;

    move/from16 v3, p1

    iput-boolean v3, v2, Le/a/v/a/u$b;->s:Z

    const/4 v4, 0x3

    iput v4, v2, Le/a/v/a/u$b;->e:I

    .line 155
    iget-object v4, v10, Le/a/v/a/u;->k:Le/a/v/p/q;

    invoke-interface {v4, v9, v2}, Le/a/v/p/q;->a(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v7, p2

    if-ne v4, v7, :cond_32

    return-object v7

    :cond_32
    move-object v11, v9

    move-object v13, v11

    move-object v14, v10

    move-object v9, v12

    move-object v10, v5

    move-object v12, v8

    move-object v8, v0

    move v5, v3

    .line 156
    :goto_1d
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 157
    iput-object v14, v2, Le/a/v/a/u$b;->g:Ljava/lang/Object;

    iput-object v13, v2, Le/a/v/a/u$b;->h:Ljava/lang/Object;

    iput-object v12, v2, Le/a/v/a/u$b;->i:Ljava/lang/Object;

    iput-object v11, v2, Le/a/v/a/u$b;->j:Ljava/lang/Object;

    iput-object v10, v2, Le/a/v/a/u$b;->k:Ljava/lang/Object;

    iput-object v9, v2, Le/a/v/a/u$b;->l:Ljava/lang/Object;

    iput-object v8, v2, Le/a/v/a/u$b;->m:Ljava/lang/Object;

    iput-object v1, v2, Le/a/v/a/u$b;->n:Ljava/lang/Object;

    iput-boolean v5, v2, Le/a/v/a/u$b;->s:Z

    iput-boolean v0, v2, Le/a/v/a/u$b;->t:Z

    const/4 v3, 0x4

    iput v3, v2, Le/a/v/a/u$b;->e:I

    invoke-virtual {v14, v13, v2}, Le/a/v/a/u;->d(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v7, :cond_33

    return-object v7

    :cond_33
    move-object/from16 v26, v1

    move v1, v0

    move-object/from16 v0, v26

    .line 158
    :goto_1e
    check-cast v3, Lcom/truecaller/data/entity/HistoryEvent;

    .line 159
    invoke-virtual {v13}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    new-instance v6, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v4, v13}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v6, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 161
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object/from16 v26, v11

    move-object v11, v0

    move-object v0, v12

    move-object v12, v3

    move-object/from16 v3, v26

    move-object/from16 v27, v8

    move v8, v1

    move-object v1, v14

    move-object v14, v4

    move-object v4, v10

    move v10, v5

    move-object v5, v9

    move-object/from16 v9, v27

    :goto_1f
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_35

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 162
    check-cast v13, Lcom/truecaller/data/entity/Number;

    const-string v15, "it"

    .line 163
    invoke-static {v13, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v15, v1, Le/a/v/a/u;->j:Le/a/v/p/g;

    iput-object v1, v2, Le/a/v/a/u$b;->g:Ljava/lang/Object;

    iput-object v0, v2, Le/a/v/a/u$b;->h:Ljava/lang/Object;

    iput-object v6, v2, Le/a/v/a/u$b;->i:Ljava/lang/Object;

    iput-object v14, v2, Le/a/v/a/u$b;->j:Ljava/lang/Object;

    iput-object v13, v2, Le/a/v/a/u$b;->k:Ljava/lang/Object;

    iput-object v3, v2, Le/a/v/a/u$b;->l:Ljava/lang/Object;

    iput-object v4, v2, Le/a/v/a/u$b;->m:Ljava/lang/Object;

    iput-object v5, v2, Le/a/v/a/u$b;->n:Ljava/lang/Object;

    iput-object v9, v2, Le/a/v/a/u$b;->o:Ljava/lang/Object;

    iput-object v11, v2, Le/a/v/a/u$b;->p:Ljava/lang/Object;

    iput-object v12, v2, Le/a/v/a/u$b;->q:Ljava/lang/Object;

    iput-object v6, v2, Le/a/v/a/u$b;->r:Ljava/lang/Object;

    iput-boolean v10, v2, Le/a/v/a/u$b;->s:Z

    iput-boolean v8, v2, Le/a/v/a/u$b;->t:Z

    move-object/from16 p1, v14

    const/4 v14, 0x5

    iput v14, v2, Le/a/v/a/u$b;->e:I

    invoke-interface {v15, v13, v2}, Le/a/v/p/g;->b(Lcom/truecaller/data/entity/Number;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v7, :cond_34

    return-object v7

    :cond_34
    move-object/from16 v16, p1

    move-object v15, v6

    move-object/from16 v26, v3

    move-object v3, v2

    move-object v2, v14

    move-object v14, v13

    move-object v13, v12

    move-object/from16 v12, v26

    :goto_20
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move-object/from16 p1, v0

    new-instance v0, Le/a/v/a/v;

    invoke-direct {v0, v14, v2}, Le/a/v/a/v;-><init>(Lcom/truecaller/data/entity/Number;Z)V

    invoke-interface {v6, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    move-object v2, v3

    move-object v3, v12

    move-object v12, v13

    move-object v6, v15

    move-object/from16 v14, v16

    goto :goto_1f

    .line 164
    :cond_35
    move-object v13, v6

    check-cast v13, Ljava/util/List;

    .line 165
    iget-object v2, v1, Le/a/v/a/u;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v14

    .line 166
    iget-object v2, v1, Le/a/v/a/u;->l:Le/a/l/p2/v0;

    invoke-interface {v2}, Le/a/l/p2/v0;->H()Z

    move-result v15

    .line 167
    new-instance v16, Le/a/v/a/s;

    move-object/from16 v2, v16

    move-object v6, v9

    move v7, v10

    move-object v9, v11

    move-object v10, v12

    move-object v11, v13

    move v12, v14

    move v13, v15

    invoke-direct/range {v2 .. v13}, Le/a/v/a/s;-><init>(Lcom/truecaller/data/entity/Contact;Le/a/v/a/d;Le/a/v/a/r0/b;Ljava/util/List;ZZLjava/util/List;Lcom/truecaller/data/entity/HistoryEvent;Ljava/util/List;ZZ)V

    .line 168
    iget-object v1, v1, Le/a/v/a/u;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 169
    invoke-interface {v0}, Le/a/p5/l0;->stop()V

    return-object v16

    .line 170
    :cond_36
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    .line 171
    :cond_37
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0
.end method

.method public final synthetic d(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/data/entity/HistoryEvent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/v/a/u$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/v/a/u$c;

    iget v1, v0, Le/a/v/a/u$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/v/a/u$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/v/a/u$c;

    invoke-direct {v0, p0, p2}, Le/a/v/a/u$c;-><init>(Le/a/v/a/u;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/v/a/u$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/v/a/u$c;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

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
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v2, 0x2

    if-lt p2, v2, :cond_4

    iget-object p2, p0, Le/a/v/a/u;->b:Ls1/w/f;

    new-instance v2, Le/a/v/a/u$d;

    invoke-direct {v2, p0, p1, v3}, Le/a/v/a/u$d;-><init>(Le/a/v/a/u;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V

    iput v4, v0, Le/a/v/a/u$c;->e:I

    invoke-static {p2, v2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    move-object v3, p2

    check-cast v3, Lcom/truecaller/data/entity/HistoryEvent;

    :cond_4
    return-object v3
.end method
