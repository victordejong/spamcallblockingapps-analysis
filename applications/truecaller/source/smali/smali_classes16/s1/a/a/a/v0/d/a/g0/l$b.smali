.class public final Ls1/a/a/a/v0/d/a/g0/l$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/d/a/g0/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:Ls1/a/a/a/v0/b/f1/a;

.field public final b:Ls1/a/a/a/v0/m/e0;

.field public final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/m/e0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Z

.field public final e:Ls1/a/a/a/v0/d/a/d0/h;

.field public final f:Ls1/a/a/a/v0/d/a/a$a;

.field public final synthetic g:Ls1/a/a/a/v0/d/a/g0/l;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/g0/l;Ls1/a/a/a/v0/b/f1/a;Ls1/a/a/a/v0/m/e0;Ljava/util/Collection;ZLs1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/a$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/b/f1/a;",
            "Ls1/a/a/a/v0/m/e0;",
            "Ljava/util/Collection<",
            "+",
            "Ls1/a/a/a/v0/m/e0;",
            ">;Z",
            "Ls1/a/a/a/v0/d/a/d0/h;",
            "Ls1/a/a/a/v0/d/a/a$a;",
            ")V"
        }
    .end annotation

    const-string v0, "fromOverride"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fromOverridden"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containerContext"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containerApplicabilityType"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/d/a/g0/l$b;->g:Ls1/a/a/a/v0/d/a/g0/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/g0/l$b;->a:Ls1/a/a/a/v0/b/f1/a;

    iput-object p3, p0, Ls1/a/a/a/v0/d/a/g0/l$b;->b:Ls1/a/a/a/v0/m/e0;

    iput-object p4, p0, Ls1/a/a/a/v0/d/a/g0/l$b;->c:Ljava/util/Collection;

    iput-boolean p5, p0, Ls1/a/a/a/v0/d/a/g0/l$b;->d:Z

    iput-object p6, p0, Ls1/a/a/a/v0/d/a/g0/l$b;->e:Ls1/a/a/a/v0/d/a/d0/h;

    iput-object p7, p0, Ls1/a/a/a/v0/d/a/g0/l$b;->f:Ls1/a/a/a/v0/d/a/a$a;

    return-void
.end method


# virtual methods
.method public final a(Ls1/a/a/a/v0/d/a/g0/w;)Ls1/a/a/a/v0/d/a/g0/l$a;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Ls1/a/a/a/v0/d/a/g0/l$b;->c:Ljava/util/Collection;

    .line 2
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 4
    check-cast v5, Ls1/a/a/a/v0/m/e0;

    .line 5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    new-instance v6, Ls1/a/a/a/v0/d/a/g0/p;

    invoke-direct {v6, v7}, Ls1/a/a/a/v0/d/a/g0/p;-><init>(Ljava/util/ArrayList;)V

    .line 7
    iget-object v8, v0, Ls1/a/a/a/v0/d/a/g0/l$b;->e:Ls1/a/a/a/v0/d/a/d0/h;

    invoke-virtual {v6, v5, v8}, Ls1/a/a/a/v0/d/a/g0/p;->a(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/d/a/d0/h;)V

    .line 8
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    iget-object v2, v0, Ls1/a/a/a/v0/d/a/g0/l$b;->b:Ls1/a/a/a/v0/m/e0;

    .line 10
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    new-instance v7, Ls1/a/a/a/v0/d/a/g0/p;

    invoke-direct {v7, v5}, Ls1/a/a/a/v0/d/a/g0/p;-><init>(Ljava/util/ArrayList;)V

    .line 12
    iget-object v8, v0, Ls1/a/a/a/v0/d/a/g0/l$b;->e:Ls1/a/a/a/v0/d/a/d0/h;

    invoke-virtual {v7, v2, v8}, Ls1/a/a/a/v0/d/a/g0/p;->a(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/d/a/d0/h;)V

    .line 13
    iget-boolean v2, v0, Ls1/a/a/a/v0/d/a/g0/l$b;->d:Z

    if-eqz v2, :cond_4

    iget-object v2, v0, Ls1/a/a/a/v0/d/a/g0/l$b;->c:Ljava/util/Collection;

    .line 14
    instance-of v8, v2, Ljava/util/Collection;

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    .line 15
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ls1/a/a/a/v0/m/e0;

    .line 16
    sget-object v9, Ls1/a/a/a/v0/m/l1/d;->a:Ls1/a/a/a/v0/m/l1/d;

    iget-object v10, v0, Ls1/a/a/a/v0/d/a/g0/l$b;->b:Ls1/a/a/a/v0/m/e0;

    invoke-interface {v9, v8, v10}, Ls1/a/a/a/v0/m/l1/d;->a(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/e0;)Z

    move-result v8

    xor-int/2addr v8, v6

    if-eqz v8, :cond_2

    move v2, v6

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_4

    move v2, v6

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_5

    move v2, v6

    goto :goto_4

    .line 17
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 18
    :goto_4
    new-array v8, v2, [Ls1/a/a/a/v0/d/a/g0/e;

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v2, :cond_2f

    if-nez v9, :cond_6

    move v11, v6

    goto :goto_6

    :cond_6
    const/4 v11, 0x0

    .line 19
    :goto_6
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ls1/a/a/a/v0/d/a/g0/u;

    .line 20
    iget-object v13, v12, Ls1/a/a/a/v0/d/a/g0/u;->a:Ls1/a/a/a/v0/m/e0;

    .line 21
    iget-object v12, v12, Ls1/a/a/a/v0/d/a/g0/u;->b:Ls1/a/a/a/v0/d/a/g0/e;

    .line 22
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_7
    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 24
    move-object/from16 v10, v16

    check-cast v10, Ljava/util/List;

    .line 25
    invoke-static {v10, v9}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ls1/a/a/a/v0/d/a/g0/u;

    if-eqz v10, :cond_8

    .line 26
    iget-object v10, v10, Ls1/a/a/a/v0/d/a/g0/u;->a:Ls1/a/a/a/v0/m/e0;

    goto :goto_8

    :cond_8
    const/4 v10, 0x0

    :goto_8
    if-eqz v10, :cond_7

    .line 27
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 28
    :cond_9
    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v14, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v15

    invoke-direct {v10, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_9
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 30
    move-object/from16 v4, v16

    check-cast v4, Ls1/a/a/a/v0/m/e0;

    .line 31
    invoke-virtual {v0, v4}, Ls1/a/a/a/v0/d/a/g0/l$b;->b(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/d/a/g0/e;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0xa

    goto :goto_9

    .line 32
    :cond_a
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_b
    :goto_a
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 34
    move-object/from16 v7, v16

    check-cast v7, Ls1/a/a/a/v0/d/a/g0/e;

    .line 35
    iget-object v7, v7, Ls1/a/a/a/v0/d/a/g0/e;->b:Ls1/a/a/a/v0/d/a/g0/f;

    if-eqz v7, :cond_b

    .line 36
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 37
    :cond_c
    invoke-static {v4}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    .line 38
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_b
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 40
    move-object/from16 v6, v16

    check-cast v6, Ls1/a/a/a/v0/d/a/g0/e;

    .line 41
    iget-object v6, v6, Ls1/a/a/a/v0/d/a/g0/e;->a:Ls1/a/a/a/v0/d/a/g0/h;

    if-eqz v6, :cond_d

    .line 42
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    const/4 v6, 0x1

    goto :goto_b

    .line 43
    :cond_e
    invoke-static {v7}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v6

    .line 44
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_c
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_11

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 46
    check-cast v15, Ls1/a/a/a/v0/m/e0;

    move/from16 v16, v2

    const-string v2, "$this$unwrapEnhancement"

    .line 47
    invoke-static {v15, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static {v15}, Ls1/a/a/a/v0/f/d;->o1(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object v2

    if-eqz v2, :cond_f

    move-object v15, v2

    .line 49
    :cond_f
    invoke-virtual {v0, v15}, Ls1/a/a/a/v0/d/a/g0/l$b;->b(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/d/a/g0/e;

    move-result-object v2

    .line 50
    iget-object v2, v2, Ls1/a/a/a/v0/d/a/g0/e;->a:Ls1/a/a/a/v0/d/a/g0/h;

    if-eqz v2, :cond_10

    .line 51
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    move/from16 v2, v16

    goto :goto_c

    :cond_11
    move/from16 v16, v2

    .line 52
    invoke-static {v7}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    if-eqz v11, :cond_12

    .line 53
    iget-object v7, v0, Ls1/a/a/a/v0/d/a/g0/l$b;->a:Ls1/a/a/a/v0/b/f1/a;

    if-eqz v7, :cond_12

    .line 54
    invoke-interface {v7}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v7

    invoke-interface {v13}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v14

    invoke-static {v7, v14}, Le/q/f/a/d/a;->L(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/b/f1/h;

    move-result-object v7

    goto :goto_d

    .line 55
    :cond_12
    invoke-interface {v13}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v7

    .line 56
    :goto_d
    new-instance v14, Ls1/a/a/a/v0/d/a/g0/n;

    invoke-direct {v14, v7}, Ls1/a/a/a/v0/d/a/g0/n;-><init>(Ls1/a/a/a/v0/b/f1/h;)V

    .line 57
    sget-object v15, Ls1/a/a/a/v0/d/a/g0/o;->b:Ls1/a/a/a/v0/d/a/g0/o;

    if-eqz v11, :cond_14

    .line 58
    iget-object v12, v0, Ls1/a/a/a/v0/d/a/g0/l$b;->e:Ls1/a/a/a/v0/d/a/d0/h;

    invoke-virtual {v12}, Ls1/a/a/a/v0/d/a/d0/h;->a()Ls1/a/a/a/v0/d/a/d0/e;

    move-result-object v12

    move-object/from16 v17, v3

    if-eqz v12, :cond_13

    iget-object v3, v0, Ls1/a/a/a/v0/d/a/g0/l$b;->f:Ls1/a/a/a/v0/d/a/a$a;

    invoke-virtual {v12, v3}, Ls1/a/a/a/v0/d/a/d0/e;->a(Ls1/a/a/a/v0/d/a/a$a;)Ls1/a/a/a/v0/d/a/g0/e;

    move-result-object v12

    goto :goto_e

    :cond_13
    const/4 v12, 0x0

    goto :goto_e

    :cond_14
    move-object/from16 v17, v3

    .line 59
    :goto_e
    iget-object v3, v0, Ls1/a/a/a/v0/d/a/g0/l$b;->g:Ls1/a/a/a/v0/d/a/g0/l;

    .line 60
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v5

    .line 61
    move-object/from16 v5, v18

    check-cast v5, Ls1/a/a/a/v0/b/f1/c;

    .line 62
    invoke-virtual {v3, v5}, Ls1/a/a/a/v0/d/a/g0/l;->b(Ls1/a/a/a/v0/b/f1/c;)Ls1/a/a/a/v0/d/a/g0/i;

    move-result-object v5

    if-eqz v5, :cond_15

    goto :goto_10

    :cond_15
    move-object/from16 v5, v19

    goto :goto_f

    :cond_16
    move-object/from16 v19, v5

    const/4 v5, 0x0

    :goto_10
    if-eqz v5, :cond_17

    goto :goto_11

    :cond_17
    if-eqz v12, :cond_18

    .line 63
    iget-object v3, v12, Ls1/a/a/a/v0/d/a/g0/e;->a:Ls1/a/a/a/v0/d/a/g0/h;

    if-eqz v3, :cond_18

    .line 64
    new-instance v5, Ls1/a/a/a/v0/d/a/g0/i;

    .line 65
    iget-boolean v7, v12, Ls1/a/a/a/v0/d/a/g0/e;->d:Z

    .line 66
    invoke-direct {v5, v3, v7}, Ls1/a/a/a/v0/d/a/g0/i;-><init>(Ls1/a/a/a/v0/d/a/g0/h;Z)V

    goto :goto_11

    :cond_18
    const/4 v5, 0x0

    .line 67
    :goto_11
    new-instance v3, Ls1/a/a/a/v0/d/a/g0/e;

    if-eqz v5, :cond_19

    .line 68
    iget-object v7, v5, Ls1/a/a/a/v0/d/a/g0/i;->a:Ls1/a/a/a/v0/d/a/g0/h;

    goto :goto_12

    :cond_19
    const/4 v7, 0x0

    .line 69
    :goto_12
    sget-object v12, Ls1/a/a/a/v0/d/a/w;->i:Ljava/util/List;

    .line 70
    sget-object v1, Ls1/a/a/a/v0/d/a/g0/f;->a:Ls1/a/a/a/v0/d/a/g0/f;

    .line 71
    invoke-virtual {v14, v12, v1}, Ls1/a/a/a/v0/d/a/g0/n;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v18, v8

    .line 72
    sget-object v8, Ls1/a/a/a/v0/d/a/w;->j:Ljava/util/List;

    move/from16 v20, v9

    .line 73
    sget-object v9, Ls1/a/a/a/v0/d/a/g0/f;->b:Ls1/a/a/a/v0/d/a/g0/f;

    .line 74
    invoke-virtual {v14, v8, v9}, Ls1/a/a/a/v0/d/a/g0/n;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 75
    invoke-virtual {v15, v12, v8}, Ls1/a/a/a/v0/d/a/g0/o;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ls1/a/a/a/v0/d/a/g0/f;

    if-eqz v5, :cond_1a

    .line 76
    iget-object v12, v5, Ls1/a/a/a/v0/d/a/g0/i;->a:Ls1/a/a/a/v0/d/a/g0/h;

    goto :goto_13

    :cond_1a
    const/4 v12, 0x0

    .line 77
    :goto_13
    sget-object v14, Ls1/a/a/a/v0/d/a/g0/h;->b:Ls1/a/a/a/v0/d/a/g0/h;

    if-ne v12, v14, :cond_1b

    invoke-static {v13}, Ls1/a/a/a/v0/f/d;->o2(Ls1/a/a/a/v0/m/e0;)Z

    move-result v12

    if-eqz v12, :cond_1b

    const/4 v12, 0x1

    goto :goto_14

    :cond_1b
    const/4 v12, 0x0

    :goto_14
    if-eqz v5, :cond_1c

    .line 78
    iget-boolean v5, v5, Ls1/a/a/a/v0/d/a/g0/i;->b:Z

    const/4 v13, 0x1

    if-ne v5, v13, :cond_1d

    move v5, v13

    goto :goto_15

    :cond_1c
    const/4 v13, 0x1

    :cond_1d
    const/4 v5, 0x0

    .line 79
    :goto_15
    invoke-direct {v3, v7, v8, v12, v5}, Ls1/a/a/a/v0/d/a/g0/e;-><init>(Ls1/a/a/a/v0/d/a/g0/h;Ls1/a/a/a/v0/d/a/g0/f;ZZ)V

    xor-int/2addr v5, v13

    if-eqz v5, :cond_1e

    move-object v5, v3

    goto :goto_16

    :cond_1e
    const/4 v5, 0x0

    :goto_16
    if-eqz v5, :cond_1f

    .line 80
    iget-object v5, v5, Ls1/a/a/a/v0/d/a/g0/e;->a:Ls1/a/a/a/v0/d/a/g0/h;

    goto :goto_17

    :cond_1f
    const/4 v5, 0x0

    .line 81
    :goto_17
    iget-boolean v8, v0, Ls1/a/a/a/v0/d/a/g0/l$b;->d:Z

    if-eqz v8, :cond_20

    if-eqz v11, :cond_20

    const/4 v8, 0x1

    goto :goto_18

    :cond_20
    const/4 v8, 0x0

    .line 82
    :goto_18
    invoke-static {v6, v5, v8}, Le/q/f/a/d/a;->O2(Ljava/util/Set;Ls1/a/a/a/v0/d/a/g0/h;Z)Ls1/a/a/a/v0/d/a/g0/h;

    move-result-object v12

    if-eqz v12, :cond_25

    .line 83
    iget-object v13, v0, Ls1/a/a/a/v0/d/a/g0/l$b;->a:Ls1/a/a/a/v0/b/f1/a;

    .line 84
    instance-of v14, v13, Ls1/a/a/a/v0/b/b1;

    if-nez v14, :cond_21

    const/4 v13, 0x0

    :cond_21
    check-cast v13, Ls1/a/a/a/v0/b/b1;

    if-eqz v13, :cond_22

    invoke-interface {v13}, Ls1/a/a/a/v0/b/b1;->H0()Ls1/a/a/a/v0/m/e0;

    move-result-object v13

    goto :goto_19

    :cond_22
    const/4 v13, 0x0

    :goto_19
    if-eqz v13, :cond_23

    const/4 v13, 0x1

    goto :goto_1a

    :cond_23
    const/4 v13, 0x0

    :goto_1a
    if-eqz v13, :cond_24

    if-eqz v11, :cond_24

    .line 85
    sget-object v11, Ls1/a/a/a/v0/d/a/g0/h;->a:Ls1/a/a/a/v0/d/a/g0/h;

    if-ne v12, v11, :cond_24

    const/4 v11, 0x1

    goto :goto_1b

    :cond_24
    const/4 v11, 0x0

    :goto_1b
    if-nez v11, :cond_25

    goto :goto_1c

    :cond_25
    const/4 v12, 0x0

    .line 86
    :goto_1c
    iget-object v11, v3, Ls1/a/a/a/v0/d/a/g0/e;->b:Ls1/a/a/a/v0/d/a/g0/f;

    .line 87
    invoke-static {v4, v9, v1, v11, v8}, Le/q/f/a/d/a;->N2(Ljava/util/Set;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    .line 88
    check-cast v1, Ls1/a/a/a/v0/d/a/g0/f;

    if-ne v7, v5, :cond_27

    .line 89
    invoke-static {v2, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    if-eqz v4, :cond_26

    goto :goto_1d

    :cond_26
    const/4 v4, 0x0

    goto :goto_1e

    :cond_27
    :goto_1d
    const/4 v4, 0x1

    .line 90
    :goto_1e
    iget-boolean v3, v3, Ls1/a/a/a/v0/d/a/g0/e;->c:Z

    if-nez v3, :cond_2c

    .line 91
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_28

    goto :goto_1f

    .line 92
    :cond_28
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls1/a/a/a/v0/d/a/g0/e;

    .line 93
    iget-boolean v5, v5, Ls1/a/a/a/v0/d/a/g0/e;->c:Z

    if-eqz v5, :cond_29

    const/4 v3, 0x1

    goto :goto_20

    :cond_2a
    :goto_1f
    const/4 v3, 0x0

    :goto_20
    if-eqz v3, :cond_2b

    goto :goto_21

    :cond_2b
    const/4 v3, 0x0

    goto :goto_22

    :cond_2c
    :goto_21
    const/4 v3, 0x1

    :goto_22
    if-nez v12, :cond_2d

    if-eqz v4, :cond_2d

    .line 94
    invoke-static {v2, v7, v8}, Le/q/f/a/d/a;->O2(Ljava/util/Set;Ls1/a/a/a/v0/d/a/g0/h;Z)Ls1/a/a/a/v0/d/a/g0/h;

    move-result-object v2

    const/4 v4, 0x1

    .line 95
    invoke-static {v2, v1, v4, v3}, Le/q/f/a/d/a;->d0(Ls1/a/a/a/v0/d/a/g0/h;Ls1/a/a/a/v0/d/a/g0/f;ZZ)Ls1/a/a/a/v0/d/a/g0/e;

    move-result-object v1

    goto :goto_24

    :cond_2d
    if-nez v12, :cond_2e

    const/4 v2, 0x1

    goto :goto_23

    :cond_2e
    const/4 v2, 0x0

    .line 96
    :goto_23
    invoke-static {v12, v1, v2, v3}, Le/q/f/a/d/a;->d0(Ls1/a/a/a/v0/d/a/g0/h;Ls1/a/a/a/v0/d/a/g0/f;ZZ)Ls1/a/a/a/v0/d/a/g0/e;

    move-result-object v1

    .line 97
    :goto_24
    aput-object v1, v18, v20

    add-int/lit8 v9, v20, 0x1

    move-object/from16 v1, p1

    move/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v8, v18

    move-object/from16 v5, v19

    const/16 v4, 0xa

    const/4 v6, 0x1

    goto/16 :goto_5

    :cond_2f
    move-object/from16 v18, v8

    .line 98
    new-instance v1, Ls1/a/a/a/v0/d/a/g0/m;

    move-object/from16 v2, v18

    invoke-direct {v1, v2}, Ls1/a/a/a/v0/d/a/g0/m;-><init>([Ls1/a/a/a/v0/d/a/g0/e;)V

    move-object/from16 v2, p1

    if-eqz v2, :cond_30

    .line 99
    new-instance v3, Ls1/a/a/a/v0/d/a/g0/l$b$a;

    invoke-direct {v3, v2, v1}, Ls1/a/a/a/v0/d/a/g0/l$b$a;-><init>(Ls1/a/a/a/v0/d/a/g0/w;Ls1/z/b/l;)V

    goto :goto_25

    :cond_30
    const/4 v3, 0x0

    .line 100
    :goto_25
    iget-object v2, v0, Ls1/a/a/a/v0/d/a/g0/l$b;->b:Ls1/a/a/a/v0/m/e0;

    sget-object v4, Ls1/a/a/a/v0/d/a/g0/l$b$b;->b:Ls1/a/a/a/v0/d/a/g0/l$b$b;

    invoke-static {v2, v4}, Ls1/a/a/a/v0/m/f1;->c(Ls1/a/a/a/v0/m/e0;Ls1/z/b/l;)Z

    move-result v2

    .line 101
    iget-object v4, v0, Ls1/a/a/a/v0/d/a/g0/l$b;->g:Ls1/a/a/a/v0/d/a/g0/l;

    .line 102
    iget-object v4, v4, Ls1/a/a/a/v0/d/a/g0/l;->c:Ls1/a/a/a/v0/d/a/g0/d;

    .line 103
    iget-object v5, v0, Ls1/a/a/a/v0/d/a/g0/l$b;->b:Ls1/a/a/a/v0/m/e0;

    if-eqz v3, :cond_31

    move-object v1, v3

    .line 104
    :cond_31
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "$this$enhance"

    invoke-static {v5, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "qualifiers"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v5}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v1, v5}, Ls1/a/a/a/v0/d/a/g0/d;->b(Ls1/a/a/a/v0/m/i1;Ls1/z/b/l;I)Ls1/a/a/a/v0/d/a/g0/d$a;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Ls1/a/a/a/v0/d/a/g0/d$a;->a()Ls1/a/a/a/v0/m/e0;

    move-result-object v3

    iget-boolean v1, v1, Ls1/a/a/a/v0/d/a/g0/d$a;->c:Z

    if-eqz v1, :cond_32

    move-object v10, v3

    goto :goto_26

    :cond_32
    const/4 v10, 0x0

    :goto_26
    if-eqz v10, :cond_33

    .line 107
    new-instance v1, Ls1/a/a/a/v0/d/a/g0/l$a;

    const/4 v3, 0x1

    invoke-direct {v1, v10, v3, v2}, Ls1/a/a/a/v0/d/a/g0/l$a;-><init>(Ls1/a/a/a/v0/m/e0;ZZ)V

    goto :goto_27

    .line 108
    :cond_33
    new-instance v1, Ls1/a/a/a/v0/d/a/g0/l$a;

    iget-object v3, v0, Ls1/a/a/a/v0/d/a/g0/l$b;->b:Ls1/a/a/a/v0/m/e0;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Ls1/a/a/a/v0/d/a/g0/l$a;-><init>(Ls1/a/a/a/v0/m/e0;ZZ)V

    :goto_27
    return-object v1
.end method

.method public final b(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/d/a/g0/e;
    .locals 10

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->a2(Ls1/a/a/a/v0/m/e0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->y(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/y;

    move-result-object v0

    new-instance v1, Ls1/k;

    .line 3
    iget-object v2, v0, Ls1/a/a/a/v0/m/y;->b:Ls1/a/a/a/v0/m/l0;

    .line 4
    iget-object v0, v0, Ls1/a/a/a/v0/m/y;->c:Ls1/a/a/a/v0/m/l0;

    .line 5
    invoke-direct {v1, v2, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Ls1/k;

    invoke-direct {v1, p1, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    :goto_0
    iget-object v0, v1, Ls1/k;->a:Ljava/lang/Object;

    .line 8
    check-cast v0, Ls1/a/a/a/v0/m/e0;

    .line 9
    iget-object v1, v1, Ls1/k;->b:Ljava/lang/Object;

    .line 10
    check-cast v1, Ls1/a/a/a/v0/m/e0;

    .line 11
    new-instance v8, Ls1/a/a/a/v0/d/a/g0/e;

    .line 12
    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->P0()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    sget-object v2, Ls1/a/a/a/v0/d/a/g0/h;->a:Ls1/a/a/a/v0/d/a/g0/h;

    :goto_1
    move-object v4, v2

    goto :goto_2

    .line 13
    :cond_1
    invoke-virtual {v1}, Ls1/a/a/a/v0/m/e0;->P0()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Ls1/a/a/a/v0/d/a/g0/h;->b:Ls1/a/a/a/v0/d/a/g0/h;

    goto :goto_1

    :cond_2
    move-object v4, v3

    :goto_2
    const-string v2, "type"

    .line 14
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {v0}, Ls1/a/a/a/v0/m/f1;->e(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/b/e;

    move-result-object v0

    const/4 v5, 0x1

    const-string v6, "null cannot be cast to non-null type kotlin.collections.Map<K, *>"

    const/4 v7, 0x0

    if-eqz v0, :cond_3

    const-string v9, "readOnly"

    .line 16
    invoke-static {v0, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v9, Ls1/a/a/a/v0/a/p/c;->m:Ls1/a/a/a/v0/a/p/c;

    invoke-static {v0}, Ls1/a/a/a/v0/j/g;->g(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/c;

    move-result-object v0

    .line 18
    sget-object v9, Ls1/a/a/a/v0/a/p/c;->k:Ljava/util/HashMap;

    invoke-static {v9, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {v9, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v5

    goto :goto_3

    :cond_3
    move v0, v7

    :goto_3
    if-eqz v0, :cond_4

    .line 19
    sget-object v0, Ls1/a/a/a/v0/d/a/g0/f;->a:Ls1/a/a/a/v0/d/a/g0/f;

    goto :goto_5

    .line 20
    :cond_4
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {v1}, Ls1/a/a/a/v0/m/f1;->e(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/b/e;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "mutable"

    .line 22
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v1, Ls1/a/a/a/v0/a/p/c;->m:Ls1/a/a/a/v0/a/p/c;

    invoke-static {v0}, Ls1/a/a/a/v0/j/g;->g(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/c;

    move-result-object v0

    .line 24
    sget-object v1, Ls1/a/a/a/v0/a/p/c;->j:Ljava/util/HashMap;

    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    move v5, v7

    :goto_4
    if-eqz v5, :cond_6

    .line 25
    sget-object v0, Ls1/a/a/a/v0/d/a/g0/f;->b:Ls1/a/a/a/v0/d/a/g0/f;

    goto :goto_5

    :cond_6
    move-object v0, v3

    .line 26
    :goto_5
    invoke-virtual {p1}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object p1

    instance-of v5, p1, Ls1/a/a/a/v0/d/a/g0/g;

    const/4 v6, 0x0

    const/16 v7, 0x8

    move-object v2, v8

    move-object v3, v4

    move-object v4, v0

    .line 27
    invoke-direct/range {v2 .. v7}, Ls1/a/a/a/v0/d/a/g0/e;-><init>(Ls1/a/a/a/v0/d/a/g0/h;Ls1/a/a/a/v0/d/a/g0/f;ZZI)V

    return-object v8
.end method
