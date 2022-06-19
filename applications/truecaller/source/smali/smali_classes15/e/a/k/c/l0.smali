.class public final Le/a/k/c/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k/c/k0;


# instance fields
.field public final a:Le/a/k/j;

.field public final b:Le/a/k/c/k1;

.field public final c:Le/a/k/c/d0;

.field public final d:Landroid/content/Context;

.field public final e:Le/a/k/c/r0;


# direct methods
.method public constructor <init>(Le/a/k/j;Le/a/k/c/k1;Le/a/k/c/d0;Landroid/content/Context;Le/a/k/c/r0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "videoSupport"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCallerIdStubManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outgoingVideoProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availability"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k/c/l0;->a:Le/a/k/j;

    iput-object p2, p0, Le/a/k/c/l0;->b:Le/a/k/c/k1;

    iput-object p3, p0, Le/a/k/c/l0;->c:Le/a/k/c/d0;

    iput-object p4, p0, Le/a/k/c/l0;->d:Landroid/content/Context;

    iput-object p5, p0, Le/a/k/c/l0;->e:Le/a/k/c/r0;

    return-void
.end method


# virtual methods
.method public final a(Ls1/w/d;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Ls1/s;->a:Ls1/s;

    instance-of v3, v1, Le/a/k/c/l0$a;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Le/a/k/c/l0$a;

    iget v4, v3, Le/a/k/c/l0$a;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Le/a/k/c/l0$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Le/a/k/c/l0$a;

    invoke-direct {v3, v0, v1}, Le/a/k/c/l0$a;-><init>(Le/a/k/c/l0;Ls1/w/d;)V

    :goto_0
    iget-object v1, v3, Le/a/k/c/l0$a;->d:Ljava/lang/Object;

    sget-object v4, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v5, v3, Le/a/k/c/l0$a;->e:I

    const-string v6, "it.normalizedNumber"

    const-string v7, "it"

    const/16 v8, 0xa

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x1

    if-eqz v5, :cond_4

    if-eq v5, v11, :cond_3

    if-eq v5, v9, :cond_2

    if-ne v5, v10, :cond_1

    iget-object v5, v3, Le/a/k/c/l0$a;->o:Ljava/lang/Object;

    check-cast v5, Ljava/util/Collection;

    iget-object v8, v3, Le/a/k/c/l0$a;->n:Ljava/lang/Object;

    check-cast v8, Lcom/truecaller/data/entity/Number;

    iget-object v9, v3, Le/a/k/c/l0$a;->m:Ljava/lang/Object;

    check-cast v9, Ljava/util/Iterator;

    iget-object v10, v3, Le/a/k/c/l0$a;->l:Ljava/lang/Object;

    check-cast v10, Ljava/util/Collection;

    iget-object v11, v3, Le/a/k/c/l0$a;->k:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    iget-object v12, v3, Le/a/k/c/l0$a;->j:Ljava/lang/Object;

    check-cast v12, Ljava/util/Iterator;

    iget-object v13, v3, Le/a/k/c/l0$a;->i:Ljava/lang/Object;

    check-cast v13, Ljava/util/Collection;

    iget-object v14, v3, Le/a/k/c/l0$a;->h:Ljava/lang/Object;

    check-cast v14, Ljava/util/List;

    iget-object v15, v3, Le/a/k/c/l0$a;->g:Ljava/lang/Object;

    check-cast v15, Le/a/k/c/l0;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v5, v3, Le/a/k/c/l0$a;->j:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    iget-object v8, v3, Le/a/k/c/l0$a;->i:Ljava/lang/Object;

    check-cast v8, Ljava/util/Collection;

    iget-object v9, v3, Le/a/k/c/l0$a;->h:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v10, v3, Le/a/k/c/l0$a;->g:Ljava/lang/Object;

    check-cast v10, Le/a/k/c/l0;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_3
    iget-object v5, v3, Le/a/k/c/l0$a;->l:Ljava/lang/Object;

    check-cast v5, Ljava/util/Collection;

    iget-object v8, v3, Le/a/k/c/l0$a;->k:Ljava/lang/Object;

    check-cast v8, Le/a/k/l/a;

    iget-object v9, v3, Le/a/k/c/l0$a;->j:Ljava/lang/Object;

    check-cast v9, Ljava/util/Iterator;

    iget-object v10, v3, Le/a/k/c/l0$a;->i:Ljava/lang/Object;

    check-cast v10, Ljava/util/Collection;

    iget-object v12, v3, Le/a/k/c/l0$a;->h:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    iget-object v13, v3, Le/a/k/c/l0$a;->g:Ljava/lang/Object;

    check-cast v13, Le/a/k/c/l0;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_4
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v5, v0, Le/a/k/c/l0;->a:Le/a/k/j;

    check-cast v5, Le/a/k/k;

    .line 6
    iget-object v5, v5, Le/a/k/k;->d:Lo3/a;

    invoke-interface {v5}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/h/b/w0/d;

    const/16 v9, 0xf

    invoke-interface {v5, v9}, Le/a/h/b/w0/d;->d(I)Ljava/util/List;

    move-result-object v5

    .line 7
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v5, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 9
    check-cast v10, Le/a/h/b/w0/c;

    .line 10
    new-instance v12, Le/a/k/l/a;

    .line 11
    iget-object v13, v10, Le/a/h/b/w0/c;->a:Ljava/lang/String;

    .line 12
    iget-object v10, v10, Le/a/h/b/w0/c;->b:Lcom/truecaller/data/entity/Contact;

    .line 13
    invoke-direct {v12, v13, v10}, Le/a/k/l/a;-><init>(Ljava/lang/String;Lcom/truecaller/data/entity/Contact;)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v11

    .line 15
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 16
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_b

    .line 17
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v9, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v13, v0

    move-object v12, v1

    move-object v9, v8

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 19
    move-object v8, v1

    check-cast v8, Le/a/k/l/a;

    .line 20
    iget-object v1, v8, Le/a/k/l/a;->b:Lcom/truecaller/data/entity/Contact;

    if-eqz v1, :cond_8

    .line 21
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v13, Le/a/k/c/l0;->e:Le/a/k/c/r0;

    .line 22
    iget-object v10, v8, Le/a/k/l/a;->a:Ljava/lang/String;

    .line 23
    iput-object v13, v3, Le/a/k/c/l0$a;->g:Ljava/lang/Object;

    iput-object v12, v3, Le/a/k/c/l0$a;->h:Ljava/lang/Object;

    iput-object v5, v3, Le/a/k/c/l0$a;->i:Ljava/lang/Object;

    iput-object v9, v3, Le/a/k/c/l0$a;->j:Ljava/lang/Object;

    iput-object v8, v3, Le/a/k/c/l0$a;->k:Ljava/lang/Object;

    iput-object v5, v3, Le/a/k/c/l0$a;->l:Ljava/lang/Object;

    iput v11, v3, Le/a/k/c/l0$a;->e:I

    invoke-interface {v1, v10, v3}, Le/a/k/c/r0;->d(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_7

    return-object v4

    :cond_7
    move-object v10, v5

    :goto_4
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 24
    iget-object v1, v8, Le/a/k/l/a;->a:Ljava/lang/String;

    .line 25
    invoke-static {v1}, Le/a/p5/s0/f;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 26
    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, v14, v15}, Ljava/lang/Long;-><init>(J)V

    .line 27
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    move-object v10, v5

    .line 28
    :cond_9
    :goto_5
    invoke-interface {v5, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v5, v10

    goto :goto_3

    .line 29
    :cond_a
    check-cast v5, Ljava/util/List;

    move-object v1, v12

    goto :goto_6

    :cond_b
    move-object v13, v0

    .line 30
    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/16 v8, 0xf

    if-lt v5, v8, :cond_c

    return-object v1

    .line 31
    :cond_c
    iget-object v5, v13, Le/a/k/c/l0;->a:Le/a/k/j;

    iget-object v9, v13, Le/a/k/c/l0;->d:Landroid/content/Context;

    check-cast v5, Le/a/k/k;

    .line 32
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "context"

    invoke-static {v9, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v5, v5, Le/a/k/k;->e:Lo3/a;

    invoke-interface {v5}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/o5/r;

    invoke-interface {v5, v9, v8}, Le/a/o5/r;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v5

    const-string v8, "contactManagerSync.get()\u2026neBookIds(context, limit)"

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    xor-int/2addr v8, v11

    .line 35
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 36
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_d

    goto :goto_7

    :cond_d
    const/4 v5, 0x0

    :goto_7
    if-eqz v5, :cond_18

    .line 37
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v9, v1

    move-object v10, v13

    :cond_e
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 39
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    .line 40
    iget-object v1, v10, Le/a/k/c/l0;->a:Le/a/k/j;

    iput-object v10, v3, Le/a/k/c/l0$a;->g:Ljava/lang/Object;

    iput-object v9, v3, Le/a/k/c/l0$a;->h:Ljava/lang/Object;

    iput-object v8, v3, Le/a/k/c/l0$a;->i:Ljava/lang/Object;

    iput-object v5, v3, Le/a/k/c/l0$a;->j:Ljava/lang/Object;

    const/4 v13, 0x0

    iput-object v13, v3, Le/a/k/c/l0$a;->k:Ljava/lang/Object;

    iput-object v13, v3, Le/a/k/c/l0$a;->l:Ljava/lang/Object;

    const/4 v13, 0x2

    iput v13, v3, Le/a/k/c/l0$a;->e:I

    check-cast v1, Le/a/k/k;

    .line 41
    iget-object v1, v1, Le/a/k/k;->a:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/k3/j/b;

    invoke-virtual {v1, v11, v12}, Le/a/k3/j/b;->i(J)Lcom/truecaller/data/entity/Contact;

    move-result-object v1

    if-ne v1, v4, :cond_f

    return-object v4

    .line 42
    :cond_f
    :goto_9
    check-cast v1, Lcom/truecaller/data/entity/Contact;

    if-eqz v1, :cond_e

    .line 43
    invoke-interface {v8, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 44
    :cond_10
    check-cast v8, Ljava/util/List;

    if-eqz v8, :cond_17

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v8, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 47
    check-cast v8, Lcom/truecaller/data/entity/Contact;

    .line 48
    invoke-virtual {v8}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v11

    .line 49
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 50
    invoke-static {v11}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v11

    if-nez v11, :cond_15

    .line 51
    invoke-virtual {v8}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v8

    const-string v11, "contact.numbers"

    invoke-static {v8, v11}, Le/d/c/a/a;->S(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 52
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v13, v1

    move-object v12, v5

    move-object v14, v9

    move-object v15, v10

    move-object v10, v11

    move-object v5, v13

    move-object v11, v14

    move-object v9, v8

    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 53
    move-object v8, v1

    check-cast v8, Lcom/truecaller/data/entity/Number;

    .line 54
    iget-object v1, v15, Le/a/k/c/l0;->e:Le/a/k/c/r0;

    invoke-static {v8, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v15, v3, Le/a/k/c/l0$a;->g:Ljava/lang/Object;

    iput-object v14, v3, Le/a/k/c/l0$a;->h:Ljava/lang/Object;

    iput-object v13, v3, Le/a/k/c/l0$a;->i:Ljava/lang/Object;

    iput-object v12, v3, Le/a/k/c/l0$a;->j:Ljava/lang/Object;

    iput-object v11, v3, Le/a/k/c/l0$a;->k:Ljava/lang/Object;

    iput-object v10, v3, Le/a/k/c/l0$a;->l:Ljava/lang/Object;

    iput-object v9, v3, Le/a/k/c/l0$a;->m:Ljava/lang/Object;

    iput-object v8, v3, Le/a/k/c/l0$a;->n:Ljava/lang/Object;

    iput-object v5, v3, Le/a/k/c/l0$a;->o:Ljava/lang/Object;

    move-object/from16 p1, v2

    const/4 v2, 0x3

    iput v2, v3, Le/a/k/c/l0$a;->e:I

    invoke-interface {v1, v0, v3}, Le/a/k/c/r0;->d(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_11

    return-object v4

    :cond_11
    move-object/from16 v2, p1

    :goto_c
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 55
    invoke-static {v8, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 56
    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, v0, v1}, Ljava/lang/Long;-><init>(J)V

    goto :goto_d

    :cond_12
    const/4 v8, 0x0

    :goto_d
    if-eqz v8, :cond_13

    .line 57
    invoke-interface {v10, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_13
    move-object/from16 v0, p0

    goto :goto_b

    :cond_14
    move-object/from16 p1, v2

    .line 58
    check-cast v10, Ljava/util/List;

    .line 59
    invoke-interface {v11, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v1, v5

    move-object v5, v12

    move-object v9, v14

    move-object v10, v15

    goto :goto_e

    :cond_15
    move-object v13, v1

    .line 60
    :goto_e
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object v1, v13

    goto/16 :goto_a

    .line 61
    :cond_16
    check-cast v1, Ljava/util/List;

    :cond_17
    move-object v1, v9

    .line 62
    :cond_18
    invoke-static {v1}, Ls1/u/i;->r(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {v0, v1}, Ls1/u/i;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Ls1/w/d;)Ljava/lang/Object;
    .locals 17
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v3, v1, Le/a/k/c/l0$b;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Le/a/k/c/l0$b;

    iget v4, v3, Le/a/k/c/l0$b;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Le/a/k/c/l0$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Le/a/k/c/l0$b;

    invoke-direct {v3, v0, v1}, Le/a/k/c/l0$b;-><init>(Le/a/k/c/l0;Ls1/w/d;)V

    :goto_0
    move-object v11, v3

    iget-object v1, v11, Le/a/k/c/l0$b;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v11, Le/a/k/c/l0$b;->e:I

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v4, :cond_4

    if-eq v4, v9, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v6, :cond_1

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-wide v12, v11, Le/a/k/c/l0$b;->i:J

    iget-object v4, v11, Le/a/k/c/l0$b;->h:Ljava/lang/Object;

    check-cast v4, Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;

    iget-object v7, v11, Le/a/k/c/l0$b;->g:Ljava/lang/Object;

    check-cast v7, Le/a/k/c/l0;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    iget-object v4, v11, Le/a/k/c/l0$b;->g:Ljava/lang/Object;

    check-cast v4, Le/a/k/c/l0;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Le/a/k/c/l0;->c:Le/a/k/c/d0;

    iput-object v0, v11, Le/a/k/c/l0$b;->g:Ljava/lang/Object;

    iput v9, v11, Le/a/k/c/l0$b;->e:I

    invoke-interface {v1, v11}, Le/a/k/c/d0;->c(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_5

    return-object v3

    :cond_5
    move-object v4, v0

    :goto_1
    check-cast v1, Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;

    if-eqz v1, :cond_d

    .line 5
    iget-object v10, v1, Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;->c:Lcom/truecaller/videocallerid/data/VideoDetails;

    .line 6
    iget-wide v12, v10, Lcom/truecaller/videocallerid/data/VideoDetails;->b:J

    .line 7
    new-instance v10, Ljava/lang/Long;

    invoke-direct {v10, v12, v13}, Ljava/lang/Long;-><init>(J)V

    .line 8
    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_6

    move v12, v9

    goto :goto_2

    :cond_6
    move v12, v5

    .line 9
    :goto_2
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 10
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_7

    goto :goto_3

    :cond_7
    move-object v10, v8

    :goto_3
    if-eqz v10, :cond_d

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 11
    iput-object v4, v11, Le/a/k/c/l0$b;->g:Ljava/lang/Object;

    iput-object v1, v11, Le/a/k/c/l0$b;->h:Ljava/lang/Object;

    iput-wide v12, v11, Le/a/k/c/l0$b;->i:J

    iput v7, v11, Le/a/k/c/l0$b;->e:I

    invoke-virtual {v4, v11}, Le/a/k/c/l0;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_8

    return-object v3

    :cond_8
    move-object/from16 v16, v4

    move-object v4, v1

    move-object v1, v7

    move-object/from16 v7, v16

    .line 12
    :goto_4
    move-object v10, v1

    check-cast v10, Ljava/util/List;

    if-eqz v10, :cond_9

    .line 13
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_a

    :cond_9
    move v5, v9

    :cond_a
    xor-int/2addr v5, v9

    .line 14
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 15
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_5

    :cond_b
    move-object v1, v8

    :goto_5
    move-object v5, v1

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_d

    .line 16
    iget-object v1, v7, Le/a/k/c/l0;->b:Le/a/k/c/k1;

    .line 17
    iget-object v2, v4, Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;->a:Ljava/lang/String;

    .line 18
    iget-object v4, v4, Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;->c:Lcom/truecaller/videocallerid/data/VideoDetails;

    .line 19
    iget-wide v9, v4, Lcom/truecaller/videocallerid/data/VideoDetails;->c:J

    .line 20
    iput-object v8, v11, Le/a/k/c/l0$b;->g:Ljava/lang/Object;

    iput-object v8, v11, Le/a/k/c/l0$b;->h:Ljava/lang/Object;

    iput v6, v11, Le/a/k/c/l0$b;->e:I

    .line 21
    move-object v4, v1

    check-cast v4, Le/a/k/c/n1;

    move-object v6, v2

    move-wide v7, v12

    invoke-virtual/range {v4 .. v11}, Le/a/k/c/n1;->l(Ljava/util/List;Ljava/lang/String;JJLs1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_c

    return-object v3

    :cond_c
    :goto_6
    return-object v1

    :cond_d
    return-object v2
.end method
