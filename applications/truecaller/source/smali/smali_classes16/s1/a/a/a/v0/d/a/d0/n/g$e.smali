.class public final Ls1/a/a/a/v0/d/a/d0/n/g$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/d/a/d0/n/g;-><init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/d/a/f0/g;ZLs1/a/a/a/v0/d/a/d0/n/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/List<",
        "+",
        "Ls1/a/a/a/v0/b/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/d/a/d0/n/g;

.field public final synthetic c:Ls1/a/a/a/v0/d/a/d0/h;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/n/g;Ls1/a/a/a/v0/d/a/d0/h;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/g$e;->b:Ls1/a/a/a/v0/d/a/d0/n/g;

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/g$e;->c:Ls1/a/a/a/v0/d/a/d0/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Ls1/a/a/a/v0/d/a/d0/n/g$e;->b:Ls1/a/a/a/v0/d/a/d0/n/g;

    .line 2
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/d0/n/g;->s:Ls1/a/a/a/v0/d/a/f0/g;

    .line 3
    invoke-interface {v1}, Ls1/a/a/a/v0/d/a/f0/g;->p()Ljava/util/Collection;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/d/a/f0/k;

    .line 6
    iget-object v5, v0, Ls1/a/a/a/v0/d/a/d0/n/g$e;->b:Ls1/a/a/a/v0/d/a/d0/n/g;

    .line 7
    iget-object v6, v5, Ls1/a/a/a/v0/d/a/d0/n/g;->r:Ls1/a/a/a/v0/b/e;

    .line 8
    iget-object v7, v5, Ls1/a/a/a/v0/d/a/d0/n/k;->k:Ls1/a/a/a/v0/d/a/d0/h;

    .line 9
    invoke-static {v7, v3}, Le/q/f/a/d/a;->B2(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/f0/d;)Ls1/a/a/a/v0/b/f1/h;

    move-result-object v7

    .line 10
    iget-object v8, v5, Ls1/a/a/a/v0/d/a/d0/n/k;->k:Ls1/a/a/a/v0/d/a/d0/h;

    .line 11
    iget-object v8, v8, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 12
    iget-object v8, v8, Ls1/a/a/a/v0/d/a/d0/c;->j:Ls1/a/a/a/v0/d/a/e0/b;

    .line 13
    invoke-interface {v8, v3}, Ls1/a/a/a/v0/d/a/e0/b;->a(Ls1/a/a/a/v0/d/a/f0/l;)Ls1/a/a/a/v0/d/a/e0/a;

    move-result-object v8

    .line 14
    invoke-static {v6, v7, v4, v8}, Ls1/a/a/a/v0/d/a/c0/c;->a1(Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/b/f1/h;ZLs1/a/a/a/v0/b/r0;)Ls1/a/a/a/v0/d/a/c0/c;

    move-result-object v7

    const-string v8, "JavaClassConstructorDesc\u2026ce(constructor)\n        )"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v8, v5, Ls1/a/a/a/v0/d/a/d0/n/k;->k:Ls1/a/a/a/v0/d/a/d0/h;

    .line 16
    invoke-interface {v6}, Ls1/a/a/a/v0/b/e;->u()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v8, v7, v3, v9}, Le/q/f/a/d/a;->B(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/d/a/f0/x;I)Ls1/a/a/a/v0/d/a/d0/h;

    move-result-object v8

    .line 17
    invoke-interface {v3}, Ls1/a/a/a/v0/d/a/f0/k;->i()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v5, v8, v7, v9}, Ls1/a/a/a/v0/d/a/d0/n/k;->t(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/b/v;Ljava/util/List;)Ls1/a/a/a/v0/d/a/d0/n/k$b;

    move-result-object v5

    .line 18
    invoke-interface {v6}, Ls1/a/a/a/v0/b/e;->u()Ljava/util/List;

    move-result-object v9

    const-string v10, "classDescriptor.declaredTypeParameters"

    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-interface {v3}, Ls1/a/a/a/v0/d/a/f0/x;->getTypeParameters()Ljava/util/List;

    move-result-object v10

    .line 20
    new-instance v11, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v10, v12}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 22
    check-cast v12, Ls1/a/a/a/v0/d/a/f0/w;

    .line 23
    iget-object v13, v8, Ls1/a/a/a/v0/d/a/d0/h;->d:Ls1/a/a/a/v0/d/a/d0/m;

    .line 24
    invoke-interface {v13, v12}, Ls1/a/a/a/v0/d/a/d0/m;->a(Ls1/a/a/a/v0/d/a/f0/w;)Ls1/a/a/a/v0/b/w0;

    move-result-object v12

    invoke-static {v12}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 25
    :cond_0
    invoke-static {v9, v11}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v9

    .line 26
    iget-object v10, v5, Ls1/a/a/a/v0/d/a/d0/n/k$b;->a:Ljava/util/List;

    .line 27
    invoke-interface {v3}, Ls1/a/a/a/v0/d/a/f0/r;->f()Ls1/a/a/a/v0/b/e1;

    move-result-object v3

    invoke-static {v3}, Le/q/f/a/d/a;->c3(Ls1/a/a/a/v0/b/e1;)Ls1/a/a/a/v0/b/r;

    move-result-object v3

    invoke-virtual {v7, v10, v3, v9}, Ls1/a/a/a/v0/b/h1/i;->Z0(Ljava/util/List;Ls1/a/a/a/v0/b/r;Ljava/util/List;)Ls1/a/a/a/v0/b/h1/i;

    .line 28
    invoke-virtual {v7, v4}, Ls1/a/a/a/v0/d/a/c0/c;->T0(Z)V

    .line 29
    iget-boolean v3, v5, Ls1/a/a/a/v0/d/a/d0/n/k$b;->b:Z

    .line 30
    invoke-virtual {v7, v3}, Ls1/a/a/a/v0/d/a/c0/c;->U0(Z)V

    .line 31
    invoke-interface {v6}, Ls1/a/a/a/v0/b/e;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object v3

    invoke-virtual {v7, v3}, Ls1/a/a/a/v0/b/h1/r;->V0(Ls1/a/a/a/v0/m/e0;)V

    .line 32
    iget-object v3, v8, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 33
    iget-object v3, v3, Ls1/a/a/a/v0/d/a/d0/c;->g:Ls1/a/a/a/v0/d/a/b0/g;

    .line 34
    check-cast v3, Ls1/a/a/a/v0/d/a/b0/g$a;

    .line 35
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 37
    :cond_1
    iget-object v1, v0, Ls1/a/a/a/v0/d/a/d0/n/g$e;->c:Ls1/a/a/a/v0/d/a/d0/h;

    .line 38
    iget-object v3, v1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 39
    iget-object v3, v3, Ls1/a/a/a/v0/d/a/d0/c;->r:Ls1/a/a/a/v0/d/a/g0/l;

    .line 40
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 41
    iget-object v2, v0, Ls1/a/a/a/v0/d/a/d0/n/g$e;->b:Ls1/a/a/a/v0/d/a/d0/n/g;

    .line 42
    iget-object v5, v2, Ls1/a/a/a/v0/d/a/d0/n/g;->s:Ls1/a/a/a/v0/d/a/f0/g;

    invoke-interface {v5}, Ls1/a/a/a/v0/d/a/f0/g;->k()Z

    move-result v5

    .line 43
    iget-object v6, v2, Ls1/a/a/a/v0/d/a/d0/n/g;->s:Ls1/a/a/a/v0/d/a/f0/g;

    invoke-interface {v6}, Ls1/a/a/a/v0/d/a/f0/g;->J()Z

    move-result v6

    const/4 v13, 0x0

    if-nez v6, :cond_2

    iget-object v6, v2, Ls1/a/a/a/v0/d/a/d0/n/g;->s:Ls1/a/a/a/v0/d/a/f0/g;

    invoke-interface {v6}, Ls1/a/a/a/v0/d/a/f0/g;->A()Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    if-nez v5, :cond_3

    goto/16 :goto_9

    .line 44
    :cond_3
    iget-object v14, v2, Ls1/a/a/a/v0/d/a/d0/n/g;->r:Ls1/a/a/a/v0/b/e;

    .line 45
    sget-object v6, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 46
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v6, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    .line 48
    iget-object v7, v2, Ls1/a/a/a/v0/d/a/d0/n/k;->k:Ls1/a/a/a/v0/d/a/d0/h;

    .line 49
    iget-object v7, v7, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 50
    iget-object v7, v7, Ls1/a/a/a/v0/d/a/d0/c;->j:Ls1/a/a/a/v0/d/a/e0/b;

    .line 51
    iget-object v8, v2, Ls1/a/a/a/v0/d/a/d0/n/g;->s:Ls1/a/a/a/v0/d/a/f0/g;

    invoke-interface {v7, v8}, Ls1/a/a/a/v0/d/a/e0/b;->a(Ls1/a/a/a/v0/d/a/f0/l;)Ls1/a/a/a/v0/d/a/e0/a;

    move-result-object v7

    const/4 v15, 0x1

    .line 52
    invoke-static {v14, v6, v15, v7}, Ls1/a/a/a/v0/d/a/c0/c;->a1(Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/b/f1/h;ZLs1/a/a/a/v0/b/r0;)Ls1/a/a/a/v0/d/a/c0/c;

    move-result-object v12

    const-string v6, "JavaClassConstructorDesc\u2026.source(jClass)\n        )"

    invoke-static {v12, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v5, :cond_a

    .line 53
    iget-object v5, v2, Ls1/a/a/a/v0/d/a/d0/n/g;->s:Ls1/a/a/a/v0/d/a/f0/g;

    invoke-interface {v5}, Ls1/a/a/a/v0/d/a/f0/g;->r()Ljava/util/Collection;

    move-result-object v5

    .line 54
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-direct {v11, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    sget-object v6, Ls1/a/a/a/v0/d/a/b0/k;->b:Ls1/a/a/a/v0/d/a/b0/k;

    const/4 v7, 0x2

    invoke-static {v6, v15, v13, v7}, Ls1/a/a/a/v0/d/a/d0/o/i;->c(Ls1/a/a/a/v0/d/a/b0/k;ZLs1/a/a/a/v0/b/w0;I)Ls1/a/a/a/v0/d/a/d0/o/a;

    move-result-object v10

    .line 56
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 57
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 59
    move-object v8, v7

    check-cast v8, Ls1/a/a/a/v0/d/a/f0/q;

    .line 60
    invoke-interface {v8}, Ls1/a/a/a/v0/d/a/f0/s;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v8

    sget-object v4, Ls1/a/a/a/v0/d/a/v;->b:Ls1/a/a/a/v0/f/e;

    invoke-static {v8, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 61
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 62
    :cond_4
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    const/4 v4, 0x0

    goto :goto_2

    .line 63
    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 64
    invoke-static {v6}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/d/a/f0/q;

    if-eqz v4, :cond_7

    .line 65
    invoke-interface {v4}, Ls1/a/a/a/v0/d/a/f0/q;->g()Ls1/a/a/a/v0/d/a/f0/v;

    move-result-object v5

    .line 66
    instance-of v6, v5, Ls1/a/a/a/v0/d/a/f0/f;

    if-eqz v6, :cond_6

    .line 67
    new-instance v6, Ls1/k;

    .line 68
    iget-object v7, v2, Ls1/a/a/a/v0/d/a/d0/n/k;->k:Ls1/a/a/a/v0/d/a/d0/h;

    .line 69
    iget-object v7, v7, Ls1/a/a/a/v0/d/a/d0/h;->b:Ls1/a/a/a/v0/d/a/d0/o/g;

    .line 70
    check-cast v5, Ls1/a/a/a/v0/d/a/f0/f;

    invoke-virtual {v7, v5, v10, v15}, Ls1/a/a/a/v0/d/a/d0/o/g;->c(Ls1/a/a/a/v0/d/a/f0/f;Ls1/a/a/a/v0/d/a/d0/o/a;Z)Ls1/a/a/a/v0/m/e0;

    move-result-object v7

    .line 71
    iget-object v8, v2, Ls1/a/a/a/v0/d/a/d0/n/k;->k:Ls1/a/a/a/v0/d/a/d0/h;

    .line 72
    iget-object v8, v8, Ls1/a/a/a/v0/d/a/d0/h;->b:Ls1/a/a/a/v0/d/a/d0/o/g;

    .line 73
    invoke-interface {v5}, Ls1/a/a/a/v0/d/a/f0/f;->j()Ls1/a/a/a/v0/d/a/f0/v;

    move-result-object v5

    invoke-virtual {v8, v5, v10}, Ls1/a/a/a/v0/d/a/d0/o/g;->d(Ls1/a/a/a/v0/d/a/f0/v;Ls1/a/a/a/v0/d/a/d0/o/a;)Ls1/a/a/a/v0/m/e0;

    move-result-object v5

    .line 74
    invoke-direct {v6, v7, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 75
    :cond_6
    new-instance v6, Ls1/k;

    .line 76
    iget-object v7, v2, Ls1/a/a/a/v0/d/a/d0/n/k;->k:Ls1/a/a/a/v0/d/a/d0/h;

    .line 77
    iget-object v7, v7, Ls1/a/a/a/v0/d/a/d0/h;->b:Ls1/a/a/a/v0/d/a/d0/o/g;

    .line 78
    invoke-virtual {v7, v5, v10}, Ls1/a/a/a/v0/d/a/d0/o/g;->d(Ls1/a/a/a/v0/d/a/f0/v;Ls1/a/a/a/v0/d/a/d0/o/a;)Ls1/a/a/a/v0/m/e0;

    move-result-object v5

    invoke-direct {v6, v5, v13}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    :goto_4
    iget-object v5, v6, Ls1/k;->a:Ljava/lang/Object;

    .line 80
    check-cast v5, Ls1/a/a/a/v0/m/e0;

    .line 81
    iget-object v6, v6, Ls1/k;->b:Ljava/lang/Object;

    .line 82
    move-object/from16 v16, v6

    check-cast v16, Ls1/a/a/a/v0/m/e0;

    const/16 v17, 0x0

    move-object v6, v2

    move-object v7, v11

    move-object v8, v12

    move-object/from16 v18, v9

    move/from16 v9, v17

    move-object v13, v10

    move-object v10, v4

    move-object/from16 v19, v11

    move-object v11, v5

    move-object v5, v12

    move-object/from16 v12, v16

    .line 83
    invoke-virtual/range {v6 .. v12}, Ls1/a/a/a/v0/d/a/d0/n/g;->w(Ljava/util/List;Ls1/a/a/a/v0/b/j;ILs1/a/a/a/v0/d/a/f0/q;Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/e0;)V

    goto :goto_5

    :cond_7
    move-object/from16 v18, v9

    move-object v13, v10

    move-object/from16 v19, v11

    move-object v5, v12

    :goto_5
    if-eqz v4, :cond_8

    move v4, v15

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    .line 84
    :goto_6
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/16 v18, 0x0

    :goto_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Ls1/a/a/a/v0/d/a/f0/q;

    .line 85
    iget-object v6, v2, Ls1/a/a/a/v0/d/a/d0/n/k;->k:Ls1/a/a/a/v0/d/a/d0/h;

    .line 86
    iget-object v6, v6, Ls1/a/a/a/v0/d/a/d0/h;->b:Ls1/a/a/a/v0/d/a/d0/o/g;

    .line 87
    invoke-interface {v10}, Ls1/a/a/a/v0/d/a/f0/q;->g()Ls1/a/a/a/v0/d/a/f0/v;

    move-result-object v7

    invoke-virtual {v6, v7, v13}, Ls1/a/a/a/v0/d/a/d0/o/g;->d(Ls1/a/a/a/v0/d/a/f0/v;Ls1/a/a/a/v0/d/a/d0/o/a;)Ls1/a/a/a/v0/m/e0;

    move-result-object v11

    add-int v9, v18, v4

    const/4 v12, 0x0

    move-object v6, v2

    move-object/from16 v7, v19

    move-object v8, v5

    .line 88
    invoke-virtual/range {v6 .. v12}, Ls1/a/a/a/v0/d/a/d0/n/g;->w(Ljava/util/List;Ls1/a/a/a/v0/b/j;ILs1/a/a/a/v0/d/a/f0/q;Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/e0;)V

    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    :cond_9
    move-object/from16 v11, v19

    goto :goto_8

    :cond_a
    move-object v5, v12

    .line 89
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    :goto_8
    const/4 v4, 0x0

    .line 90
    invoke-virtual {v5, v4}, Ls1/a/a/a/v0/d/a/c0/c;->U0(Z)V

    .line 91
    invoke-interface {v14}, Ls1/a/a/a/v0/b/e;->f()Ls1/a/a/a/v0/b/r;

    move-result-object v4

    const-string v6, "classDescriptor.visibility"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    sget-object v6, Ls1/a/a/a/v0/d/a/s;->b:Ls1/a/a/a/v0/b/r;

    invoke-static {v4, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 93
    sget-object v4, Ls1/a/a/a/v0/d/a/s;->c:Ls1/a/a/a/v0/b/r;

    const-string v6, "JavaDescriptorVisibilities.PROTECTED_AND_PACKAGE"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    :cond_b
    invoke-virtual {v5, v11, v4}, Ls1/a/a/a/v0/b/h1/i;->Y0(Ljava/util/List;Ls1/a/a/a/v0/b/r;)Ls1/a/a/a/v0/b/h1/i;

    .line 95
    invoke-virtual {v5, v15}, Ls1/a/a/a/v0/d/a/c0/c;->T0(Z)V

    .line 96
    invoke-interface {v14}, Ls1/a/a/a/v0/b/e;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object v4

    invoke-virtual {v5, v4}, Ls1/a/a/a/v0/b/h1/r;->V0(Ls1/a/a/a/v0/m/e0;)V

    .line 97
    iget-object v4, v2, Ls1/a/a/a/v0/d/a/d0/n/k;->k:Ls1/a/a/a/v0/d/a/d0/h;

    .line 98
    iget-object v4, v4, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 99
    iget-object v4, v4, Ls1/a/a/a/v0/d/a/d0/c;->g:Ls1/a/a/a/v0/d/a/b0/g;

    .line 100
    iget-object v2, v2, Ls1/a/a/a/v0/d/a/d0/n/g;->s:Ls1/a/a/a/v0/d/a/f0/g;

    check-cast v4, Ls1/a/a/a/v0/d/a/b0/g$a;

    .line 101
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_c

    move-object v13, v5

    .line 102
    :goto_9
    invoke-static {v13}, Ls1/u/i;->U(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_a

    :cond_c
    const/4 v1, 0x3

    .line 103
    invoke-static {v1}, Ls1/a/a/a/v0/d/a/b0/g$a;->a(I)V

    const/4 v1, 0x0

    throw v1

    .line 104
    :cond_d
    :goto_a
    invoke-virtual {v3, v1, v2}, Ls1/a/a/a/v0/d/a/g0/l;->a(Ls1/a/a/a/v0/d/a/d0/h;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    .line 105
    invoke-static {v1}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
