.class public final Le/k/a/c/g0/c;
.super Le/k/a/c/g0/b;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/g0/e0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/c/g0/c$a;
    }
.end annotation


# static fields
.field public static final o:Le/k/a/c/g0/c$a;


# instance fields
.field public final a:Le/k/a/c/i;

.field public final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final c:Le/k/a/c/m0/n;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/k/a/c/i;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/k/a/c/b;

.field public final f:Le/k/a/c/m0/o;

.field public final g:Le/k/a/c/g0/t$a;

.field public final h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final i:Z

.field public final j:Le/k/a/c/n0/b;

.field public k:Le/k/a/c/g0/c$a;

.field public l:Le/k/a/c/g0/l;

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/k/a/c/g0/g;",
            ">;"
        }
    .end annotation
.end field

.field public transient n:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Le/k/a/c/g0/c$a;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Le/k/a/c/g0/c$a;-><init>(Le/k/a/c/g0/e;Ljava/util/List;Ljava/util/List;)V

    sput-object v0, Le/k/a/c/g0/c;->o:Le/k/a/c/g0/c$a;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/i;Ljava/lang/Class;Ljava/util/List;Ljava/lang/Class;Le/k/a/c/n0/b;Le/k/a/c/m0/n;Le/k/a/c/b;Le/k/a/c/g0/t$a;Le/k/a/c/m0/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/i;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Le/k/a/c/i;",
            ">;",
            "Ljava/lang/Class<",
            "*>;",
            "Le/k/a/c/n0/b;",
            "Le/k/a/c/m0/n;",
            "Le/k/a/c/b;",
            "Le/k/a/c/g0/t$a;",
            "Le/k/a/c/m0/o;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le/k/a/c/g0/b;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/g0/c;->a:Le/k/a/c/i;

    .line 3
    iput-object p2, p0, Le/k/a/c/g0/c;->b:Ljava/lang/Class;

    .line 4
    iput-object p3, p0, Le/k/a/c/g0/c;->d:Ljava/util/List;

    .line 5
    iput-object p4, p0, Le/k/a/c/g0/c;->h:Ljava/lang/Class;

    .line 6
    iput-object p5, p0, Le/k/a/c/g0/c;->j:Le/k/a/c/n0/b;

    .line 7
    iput-object p6, p0, Le/k/a/c/g0/c;->c:Le/k/a/c/m0/n;

    .line 8
    iput-object p7, p0, Le/k/a/c/g0/c;->e:Le/k/a/c/b;

    .line 9
    iput-object p8, p0, Le/k/a/c/g0/c;->g:Le/k/a/c/g0/t$a;

    .line 10
    iput-object p9, p0, Le/k/a/c/g0/c;->f:Le/k/a/c/m0/o;

    .line 11
    iput-boolean p10, p0, Le/k/a/c/g0/c;->i:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Le/k/a/c/g0/b;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Le/k/a/c/g0/c;->a:Le/k/a/c/i;

    .line 14
    iput-object p1, p0, Le/k/a/c/g0/c;->b:Ljava/lang/Class;

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Le/k/a/c/g0/c;->d:Ljava/util/List;

    .line 16
    iput-object v0, p0, Le/k/a/c/g0/c;->h:Ljava/lang/Class;

    .line 17
    sget-object p1, Le/k/a/c/g0/o;->b:Le/k/a/c/n0/b;

    iput-object p1, p0, Le/k/a/c/g0/c;->j:Le/k/a/c/n0/b;

    .line 18
    sget-object p1, Le/k/a/c/m0/n;->g:Le/k/a/c/m0/n;

    .line 19
    iput-object p1, p0, Le/k/a/c/g0/c;->c:Le/k/a/c/m0/n;

    .line 20
    iput-object v0, p0, Le/k/a/c/g0/c;->e:Le/k/a/c/b;

    .line 21
    iput-object v0, p0, Le/k/a/c/g0/c;->g:Le/k/a/c/g0/t$a;

    .line 22
    iput-object v0, p0, Le/k/a/c/g0/c;->f:Le/k/a/c/m0/o;

    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Le/k/a/c/g0/c;->i:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;)Le/k/a/c/i;
    .locals 3

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/c;->f:Le/k/a/c/m0/o;

    iget-object v1, p0, Le/k/a/c/g0/c;->c:Le/k/a/c/m0/n;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v2, p1, v1}, Le/k/a/c/m0/o;->b(Le/k/a/c/m0/c;Ljava/lang/reflect/Type;Le/k/a/c/m0/n;)Le/k/a/c/i;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/c;->j:Le/k/a/c/n0/b;

    invoke-interface {v0, p1}, Le/k/a/c/n0/b;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1
.end method

.method public d()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/c;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public e()Le/k/a/c/i;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/c;->a:Le/k/a/c/i;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    const-class v1, Le/k/a/c/g0/c;

    invoke-static {p1, v1}, Le/k/a/c/n0/g;->u(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Le/k/a/c/g0/c;

    iget-object p1, p1, Le/k/a/c/g0/c;->b:Ljava/lang/Class;

    iget-object v1, p0, Le/k/a/c/g0/c;->b:Ljava/lang/Class;

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final f()Le/k/a/c/g0/c$a;
    .locals 25

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/k/a/c/g0/c;->k:Le/k/a/c/g0/c$a;

    if-nez v1, :cond_3c

    .line 2
    iget-object v1, v0, Le/k/a/c/g0/c;->a:Le/k/a/c/i;

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Le/k/a/c/g0/c;->o:Le/k/a/c/g0/c$a;

    goto/16 :goto_26

    .line 4
    :cond_0
    iget-object v2, v0, Le/k/a/c/g0/c;->e:Le/k/a/c/b;

    iget-object v3, v0, Le/k/a/c/g0/c;->f:Le/k/a/c/m0/o;

    iget-object v4, v0, Le/k/a/c/g0/c;->h:Ljava/lang/Class;

    iget-boolean v5, v0, Le/k/a/c/g0/c;->i:Z

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    move v8, v6

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    or-int/2addr v5, v8

    .line 5
    new-instance v8, Le/k/a/c/g0/f;

    invoke-direct {v8, v2, v0, v5}, Le/k/a/c/g0/f;-><init>(Le/k/a/c/b;Le/k/a/c/g0/e0;Z)V

    .line 6
    sget-object v2, Le/k/a/c/g0/u;->b:[Le/k/a/c/g0/p;

    .line 7
    invoke-virtual {v1}, Le/k/a/c/i;->B()Z

    move-result v5

    const/4 v9, 0x0

    if-nez v5, :cond_5

    .line 8
    iget-object v5, v1, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 9
    invoke-static {v5}, Le/k/a/c/n0/g;->p(Ljava/lang/Class;)[Le/k/a/c/n0/g$a;

    move-result-object v5

    .line 10
    array-length v10, v5

    move-object v12, v9

    move-object v13, v12

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_6

    aget-object v14, v5, v11

    .line 11
    iget-object v15, v14, Le/k/a/c/n0/g$a;->a:Ljava/lang/reflect/Constructor;

    .line 12
    invoke-virtual {v15}, Ljava/lang/reflect/Constructor;->isSynthetic()Z

    move-result v15

    xor-int/2addr v15, v6

    if-nez v15, :cond_2

    goto :goto_2

    .line 13
    :cond_2
    invoke-virtual {v14}, Le/k/a/c/n0/g$a;->a()I

    move-result v15

    if-nez v15, :cond_3

    move-object v12, v14

    goto :goto_2

    :cond_3
    if-nez v13, :cond_4

    .line 14
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 15
    :cond_4
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_5
    move-object v12, v9

    move-object v13, v12

    :cond_6
    if-nez v13, :cond_8

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    if-nez v12, :cond_7

    goto/16 :goto_d

    :cond_7
    const/4 v10, 0x0

    goto :goto_4

    .line 17
    :cond_8
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    .line 18
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v5, :cond_9

    .line 19
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_9
    move-object/from16 v24, v10

    move v10, v5

    move-object/from16 v5, v24

    :goto_4
    if-eqz v4, :cond_12

    .line 20
    invoke-static {v4}, Le/k/a/c/n0/g;->p(Ljava/lang/Class;)[Le/k/a/c/n0/g$a;

    move-result-object v11

    array-length v14, v11

    move-object/from16 v16, v9

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v14, :cond_11

    aget-object v6, v11, v15

    .line 21
    invoke-virtual {v6}, Le/k/a/c/n0/g$a;->a()I

    move-result v17

    if-nez v17, :cond_b

    if-eqz v12, :cond_a

    .line 22
    new-instance v7, Le/k/a/c/g0/e;

    iget-object v9, v8, Le/k/a/c/g0/f;->d:Le/k/a/c/g0/e0;

    move-object/from16 v18, v11

    .line 23
    iget-object v11, v12, Le/k/a/c/n0/g$a;->a:Ljava/lang/reflect/Constructor;

    .line 24
    invoke-virtual {v8, v12, v6}, Le/k/a/c/g0/f;->g(Le/k/a/c/n0/g$a;Le/k/a/c/n0/g$a;)Le/k/a/c/g0/p;

    move-result-object v6

    invoke-direct {v7, v9, v11, v6, v2}, Le/k/a/c/g0/e;-><init>(Le/k/a/c/g0/e0;Ljava/lang/reflect/Constructor;Le/k/a/c/g0/p;[Le/k/a/c/g0/p;)V

    .line 25
    iput-object v7, v8, Le/k/a/c/g0/f;->f:Le/k/a/c/g0/e;

    const/4 v12, 0x0

    goto :goto_b

    :cond_a
    move-object/from16 v18, v11

    goto :goto_9

    :cond_b
    move-object/from16 v18, v11

    if-eqz v13, :cond_f

    if-nez v16, :cond_d

    .line 26
    new-array v7, v10, [Le/k/a/c/g0/y;

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v10, :cond_c

    .line 27
    new-instance v11, Le/k/a/c/g0/y;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v19, v12

    move-object/from16 v12, v16

    check-cast v12, Le/k/a/c/n0/g$a;

    .line 28
    iget-object v12, v12, Le/k/a/c/n0/g$a;->a:Ljava/lang/reflect/Constructor;

    .line 29
    invoke-direct {v11, v12}, Le/k/a/c/g0/y;-><init>(Ljava/lang/reflect/Constructor;)V

    aput-object v11, v7, v9

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v12, v19

    goto :goto_6

    :cond_c
    move-object/from16 v19, v12

    move-object/from16 v16, v7

    goto :goto_7

    :cond_d
    move-object/from16 v19, v12

    .line 30
    :goto_7
    new-instance v7, Le/k/a/c/g0/y;

    .line 31
    iget-object v9, v6, Le/k/a/c/n0/g$a;->a:Ljava/lang/reflect/Constructor;

    .line 32
    invoke-direct {v7, v9}, Le/k/a/c/g0/y;-><init>(Ljava/lang/reflect/Constructor;)V

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v10, :cond_10

    .line 33
    aget-object v11, v16, v9

    invoke-virtual {v7, v11}, Le/k/a/c/g0/y;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 34
    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/k/a/c/n0/g$a;

    invoke-virtual {v8, v7, v6}, Le/k/a/c/g0/f;->k(Le/k/a/c/n0/g$a;Le/k/a/c/n0/g$a;)Le/k/a/c/g0/e;

    move-result-object v6

    .line 35
    invoke-interface {v5, v9, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_f
    :goto_9
    move-object/from16 v19, v12

    :cond_10
    :goto_a
    move-object/from16 v12, v19

    :goto_b
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v11, v18

    const/4 v6, 0x1

    const/4 v9, 0x0

    goto :goto_5

    :cond_11
    move-object/from16 v19, v12

    :cond_12
    if-eqz v12, :cond_13

    .line 36
    new-instance v6, Le/k/a/c/g0/e;

    iget-object v7, v8, Le/k/a/c/g0/f;->d:Le/k/a/c/g0/e0;

    .line 37
    iget-object v9, v12, Le/k/a/c/n0/g$a;->a:Ljava/lang/reflect/Constructor;

    const/4 v11, 0x0

    .line 38
    invoke-virtual {v8, v12, v11}, Le/k/a/c/g0/f;->g(Le/k/a/c/n0/g$a;Le/k/a/c/n0/g$a;)Le/k/a/c/g0/p;

    move-result-object v12

    invoke-direct {v6, v7, v9, v12, v2}, Le/k/a/c/g0/e;-><init>(Le/k/a/c/g0/e0;Ljava/lang/reflect/Constructor;Le/k/a/c/g0/p;[Le/k/a/c/g0/p;)V

    .line 39
    iput-object v6, v8, Le/k/a/c/g0/f;->f:Le/k/a/c/g0/e;

    :cond_13
    const/4 v2, 0x0

    :goto_c
    if-ge v2, v10, :cond_15

    .line 40
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/k/a/c/g0/e;

    if-nez v6, :cond_14

    .line 41
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/k/a/c/n0/g$a;

    const/4 v7, 0x0

    invoke-virtual {v8, v6, v7}, Le/k/a/c/g0/f;->k(Le/k/a/c/n0/g$a;Le/k/a/c/n0/g$a;)Le/k/a/c/g0/e;

    move-result-object v6

    .line 42
    invoke-interface {v5, v2, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 43
    :cond_15
    :goto_d
    iget-object v2, v1, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 44
    invoke-static {v2}, Le/k/a/c/n0/g;->o(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v6, v2

    const/4 v7, 0x0

    const/4 v11, 0x0

    :goto_e
    if-ge v7, v6, :cond_18

    aget-object v9, v2, v7

    .line 45
    invoke-static {v9}, Le/k/a/c/g0/f;->f(Ljava/lang/reflect/Method;)Z

    move-result v10

    if-nez v10, :cond_16

    goto :goto_f

    :cond_16
    if-nez v11, :cond_17

    .line 46
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 47
    :cond_17
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_18
    if-nez v11, :cond_19

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto/16 :goto_23

    .line 49
    :cond_19
    new-instance v6, Le/k/a/c/g0/e0$b;

    invoke-direct {v6, v3}, Le/k/a/c/g0/e0$b;-><init>(Le/k/a/c/m0/o;)V

    .line 50
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    .line 51
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v7}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v10, 0x0

    :goto_10
    if-ge v10, v7, :cond_1a

    const/4 v12, 0x0

    .line 52
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    :cond_1a
    if-eqz v4, :cond_1f

    .line 53
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v10, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_11
    if-ge v13, v10, :cond_1f

    aget-object v14, v4, v13

    .line 54
    invoke-static {v14}, Le/k/a/c/g0/f;->f(Ljava/lang/reflect/Method;)Z

    move-result v15

    if-nez v15, :cond_1b

    move-object/from16 v19, v4

    goto :goto_14

    :cond_1b
    if-nez v12, :cond_1c

    .line 55
    new-array v12, v7, [Le/k/a/c/g0/y;

    const/4 v15, 0x0

    :goto_12
    if-ge v15, v7, :cond_1c

    .line 56
    new-instance v2, Le/k/a/c/g0/y;

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v4

    move-object/from16 v4, v18

    check-cast v4, Ljava/lang/reflect/Method;

    invoke-direct {v2, v4}, Le/k/a/c/g0/y;-><init>(Ljava/lang/reflect/Method;)V

    aput-object v2, v12, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, v19

    goto :goto_12

    :cond_1c
    move-object/from16 v19, v4

    .line 57
    new-instance v2, Le/k/a/c/g0/y;

    invoke-direct {v2, v14}, Le/k/a/c/g0/y;-><init>(Ljava/lang/reflect/Method;)V

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v7, :cond_1e

    .line 58
    aget-object v15, v12, v4

    invoke-virtual {v2, v15}, Le/k/a/c/g0/y;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1d

    .line 59
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    invoke-virtual {v8, v2, v6, v14}, Le/k/a/c/g0/f;->j(Ljava/lang/reflect/Method;Le/k/a/c/g0/e0;Ljava/lang/reflect/Method;)Le/k/a/c/g0/j;

    move-result-object v2

    .line 60
    invoke-virtual {v9, v4, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_1e
    :goto_14
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v4, v19

    goto :goto_11

    :cond_1f
    const/4 v2, 0x0

    :goto_15
    if-ge v2, v7, :cond_36

    .line 61
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/k/a/c/g0/j;

    if-nez v4, :cond_35

    .line 62
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    .line 63
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v10

    .line 64
    array-length v12, v10

    if-eqz v12, :cond_33

    .line 65
    invoke-virtual {v1}, Le/k/a/c/i;->j()Le/k/a/c/m0/n;

    move-result-object v12

    invoke-virtual {v12}, Le/k/a/c/m0/n;->f()Z

    move-result v12

    if-eqz v12, :cond_20

    goto/16 :goto_1d

    .line 66
    :cond_20
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v12

    .line 67
    instance-of v13, v12, Ljava/lang/reflect/ParameterizedType;

    if-nez v13, :cond_21

    goto/16 :goto_1d

    .line 68
    :cond_21
    check-cast v12, Ljava/lang/reflect/ParameterizedType;

    .line 69
    iget-object v13, v1, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 70
    invoke-interface {v12}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v14

    invoke-static {v13, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_22

    goto/16 :goto_1d

    .line 71
    :cond_22
    invoke-interface {v12}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v12

    .line 72
    new-instance v13, Ljava/util/ArrayList;

    array-length v14, v10

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    new-instance v14, Ljava/util/ArrayList;

    array-length v15, v10

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v18, v7

    const/4 v15, 0x0

    .line 74
    :goto_16
    array-length v7, v12

    if-ge v15, v7, :cond_2f

    .line 75
    aget-object v7, v12, v15

    .line 76
    invoke-static {v7}, Ln3/g0/y;->e1(Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    move-result-object v7

    if-eqz v7, :cond_2d

    .line 77
    invoke-interface {v7}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_23

    move-object/from16 v20, v1

    goto/16 :goto_1e

    :cond_23
    move-object/from16 v19, v11

    .line 78
    invoke-virtual {v1}, Le/k/a/c/i;->j()Le/k/a/c/m0/n;

    move-result-object v11

    invoke-virtual {v11, v15}, Le/k/a/c/m0/n;->d(I)Le/k/a/c/i;

    move-result-object v11

    if-nez v11, :cond_24

    move-object/from16 v20, v1

    goto/16 :goto_1f

    :cond_24
    move-object/from16 v20, v1

    .line 79
    array-length v1, v10

    move-object/from16 v21, v12

    const/4 v12, 0x0

    :goto_17
    if-ge v12, v1, :cond_26

    aget-object v22, v10, v12

    move/from16 v23, v1

    .line 80
    invoke-interface/range {v22 .. v22}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_18

    :cond_25
    add-int/lit8 v12, v12, 0x1

    move/from16 v1, v23

    goto :goto_17

    :cond_26
    const/16 v22, 0x0

    :goto_18
    if-nez v22, :cond_27

    goto/16 :goto_1f

    .line 81
    :cond_27
    invoke-interface/range {v22 .. v22}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 82
    array-length v12, v1

    move-object/from16 v22, v10

    const/4 v10, 0x0

    :goto_19
    if-ge v10, v12, :cond_29

    move/from16 v23, v12

    aget-object v12, v1, v10

    .line 83
    invoke-static {v6, v11, v12}, Ln3/g0/y;->C1(Le/k/a/c/g0/e0;Le/k/a/c/i;Ljava/lang/reflect/Type;)Z

    move-result v12

    if-nez v12, :cond_28

    const/4 v1, 0x0

    goto :goto_1a

    :cond_28
    add-int/lit8 v10, v10, 0x1

    move/from16 v12, v23

    goto :goto_19

    :cond_29
    const/4 v1, 0x1

    :goto_1a
    if-eqz v1, :cond_2e

    .line 84
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v10, -0x1

    if-eq v1, v10, :cond_2c

    .line 85
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/k/a/c/i;

    .line 86
    invoke-virtual {v11, v7}, Le/k/a/c/i;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2a

    goto :goto_1b

    .line 87
    :cond_2a
    iget-object v10, v11, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 88
    invoke-virtual {v7, v10}, Le/k/a/c/i;->I(Ljava/lang/Class;)Z

    move-result v10

    .line 89
    iget-object v7, v7, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 90
    invoke-virtual {v11, v7}, Le/k/a/c/i;->I(Ljava/lang/Class;)Z

    move-result v7

    if-nez v10, :cond_2b

    if-nez v7, :cond_2b

    goto :goto_1f

    :cond_2b
    xor-int/2addr v10, v7

    if-eqz v10, :cond_2e

    if-eqz v7, :cond_2e

    .line 91
    invoke-virtual {v14, v1, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 92
    :cond_2c
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_2d
    move-object/from16 v20, v1

    move-object/from16 v22, v10

    move-object/from16 v19, v11

    move-object/from16 v21, v12

    :cond_2e
    :goto_1b
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v11, v19

    move-object/from16 v1, v20

    move-object/from16 v12, v21

    move-object/from16 v10, v22

    goto/16 :goto_16

    :cond_2f
    move-object/from16 v20, v1

    move-object/from16 v19, v11

    .line 94
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_1f

    .line 95
    :cond_30
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_31

    goto :goto_1c

    .line 96
    :cond_31
    new-instance v1, Le/k/a/c/m0/n;

    sget-object v7, Le/k/a/c/m0/n;->e:[Ljava/lang/String;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    sget-object v10, Le/k/a/c/m0/n;->f:[Le/k/a/c/i;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Le/k/a/c/i;

    const/4 v11, 0x0

    invoke-direct {v1, v7, v10, v11}, Le/k/a/c/m0/n;-><init>([Ljava/lang/String;[Le/k/a/c/i;[Ljava/lang/String;)V

    goto :goto_20

    .line 97
    :cond_32
    :goto_1c
    sget-object v1, Le/k/a/c/m0/n;->g:Le/k/a/c/m0/n;

    goto :goto_20

    :cond_33
    :goto_1d
    move-object/from16 v20, v1

    move/from16 v18, v7

    :goto_1e
    move-object/from16 v19, v11

    :goto_1f
    const/4 v1, 0x0

    :goto_20
    if-nez v1, :cond_34

    move-object v7, v6

    goto :goto_21

    .line 98
    :cond_34
    new-instance v7, Le/k/a/c/g0/e0$a;

    invoke-direct {v7, v3, v1}, Le/k/a/c/g0/e0$a;-><init>(Le/k/a/c/m0/o;Le/k/a/c/m0/n;)V

    :goto_21
    const/4 v1, 0x0

    .line 99
    invoke-virtual {v8, v4, v7, v1}, Le/k/a/c/g0/f;->j(Ljava/lang/reflect/Method;Le/k/a/c/g0/e0;Ljava/lang/reflect/Method;)Le/k/a/c/g0/j;

    move-result-object v4

    .line 100
    invoke-virtual {v9, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    :cond_35
    move-object/from16 v20, v1

    move/from16 v18, v7

    move-object/from16 v19, v11

    :goto_22
    add-int/lit8 v2, v2, 0x1

    move/from16 v7, v18

    move-object/from16 v11, v19

    move-object/from16 v1, v20

    goto/16 :goto_15

    :cond_36
    move-object v1, v9

    .line 101
    :goto_23
    iget-boolean v2, v8, Le/k/a/c/g0/f;->e:Z

    if-eqz v2, :cond_3b

    .line 102
    iget-object v2, v8, Le/k/a/c/g0/f;->f:Le/k/a/c/g0/e;

    if-eqz v2, :cond_37

    .line 103
    iget-object v3, v8, Le/k/a/c/g0/u;->a:Le/k/a/c/b;

    invoke-virtual {v3, v2}, Le/k/a/c/b;->l0(Le/k/a/c/g0/i;)Z

    move-result v2

    if-eqz v2, :cond_37

    const/4 v2, 0x0

    .line 104
    iput-object v2, v8, Le/k/a/c/g0/f;->f:Le/k/a/c/g0/e;

    .line 105
    :cond_37
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    :cond_38
    :goto_24
    const/4 v3, -0x1

    add-int/2addr v2, v3

    if-ltz v2, :cond_39

    .line 106
    iget-object v3, v8, Le/k/a/c/g0/u;->a:Le/k/a/c/b;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/k/a/c/g0/i;

    invoke-virtual {v3, v4}, Le/k/a/c/b;->l0(Le/k/a/c/g0/i;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 107
    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_24

    .line 108
    :cond_39
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, -0x1

    :cond_3a
    :goto_25
    add-int/2addr v2, v3

    if-ltz v2, :cond_3b

    .line 109
    iget-object v4, v8, Le/k/a/c/g0/u;->a:Le/k/a/c/b;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/k/a/c/g0/i;

    invoke-virtual {v4, v6}, Le/k/a/c/b;->l0(Le/k/a/c/g0/i;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 110
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_25

    .line 111
    :cond_3b
    new-instance v2, Le/k/a/c/g0/c$a;

    iget-object v3, v8, Le/k/a/c/g0/f;->f:Le/k/a/c/g0/e;

    invoke-direct {v2, v3, v5, v1}, Le/k/a/c/g0/c$a;-><init>(Le/k/a/c/g0/e;Ljava/util/List;Ljava/util/List;)V

    move-object v1, v2

    .line 112
    :goto_26
    iput-object v1, v0, Le/k/a/c/g0/c;->k:Le/k/a/c/g0/c$a;

    :cond_3c
    return-object v1
.end method

.method public final g()Le/k/a/c/g0/l;
    .locals 10

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/c;->l:Le/k/a/c/g0/l;

    if-nez v0, :cond_b

    .line 2
    iget-object v0, p0, Le/k/a/c/g0/c;->a:Le/k/a/c/i;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Le/k/a/c/g0/l;

    invoke-direct {v0}, Le/k/a/c/g0/l;-><init>()V

    goto/16 :goto_6

    .line 4
    :cond_0
    iget-object v1, p0, Le/k/a/c/g0/c;->e:Le/k/a/c/b;

    iget-object v2, p0, Le/k/a/c/g0/c;->g:Le/k/a/c/g0/t$a;

    iget-object v3, p0, Le/k/a/c/g0/c;->f:Le/k/a/c/m0/o;

    iget-object v4, p0, Le/k/a/c/g0/c;->d:Ljava/util/List;

    iget-object v5, p0, Le/k/a/c/g0/c;->h:Ljava/lang/Class;

    iget-boolean v6, p0, Le/k/a/c/g0/c;->i:Z

    .line 5
    new-instance v7, Le/k/a/c/g0/k;

    invoke-direct {v7, v1, v2, v6}, Le/k/a/c/g0/k;-><init>(Le/k/a/c/b;Le/k/a/c/g0/t$a;Z)V

    .line 6
    const-class v1, Ljava/lang/Object;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    iget-object v6, v0, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 8
    invoke-virtual {v7, p0, v6, v2, v5}, Le/k/a/c/g0/k;->f(Le/k/a/c/g0/e0;Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Class;)V

    .line 9
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/k/a/c/i;

    .line 10
    iget-object v8, v7, Le/k/a/c/g0/k;->d:Le/k/a/c/g0/t$a;

    if-nez v8, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    iget-object v6, v5, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 12
    invoke-interface {v8, v6}, Le/k/a/c/g0/t$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    .line 13
    :goto_1
    new-instance v8, Le/k/a/c/g0/e0$a;

    .line 14
    invoke-virtual {v5}, Le/k/a/c/i;->j()Le/k/a/c/m0/n;

    move-result-object v9

    invoke-direct {v8, v3, v9}, Le/k/a/c/g0/e0$a;-><init>(Le/k/a/c/m0/o;Le/k/a/c/m0/n;)V

    .line 15
    iget-object v5, v5, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 16
    invoke-virtual {v7, v8, v5, v2, v6}, Le/k/a/c/g0/k;->f(Le/k/a/c/g0/e0;Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Class;)V

    goto :goto_0

    .line 17
    :cond_2
    iget-object v3, v7, Le/k/a/c/g0/k;->d:Le/k/a/c/g0/t$a;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 18
    invoke-interface {v3, v1}, Le/k/a/c/g0/t$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 19
    iget-object v0, v0, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 20
    invoke-virtual {v7, p0, v0, v2, v3}, Le/k/a/c/g0/k;->g(Le/k/a/c/g0/e0;Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Class;)V

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v4

    :goto_2
    if-eqz v0, :cond_6

    .line 21
    iget-object v0, v7, Le/k/a/c/g0/u;->a:Le/k/a/c/b;

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 22
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 23
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/k/a/c/g0/y;

    .line 24
    iget-object v8, v5, Le/k/a/c/g0/y;->a:Ljava/lang/String;

    const-string v9, "hashCode"

    .line 25
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 26
    iget-object v8, v5, Le/k/a/c/g0/y;->b:[Ljava/lang/Class;

    array-length v8, v8

    if-eqz v8, :cond_5

    goto :goto_3

    .line 27
    :cond_5
    :try_start_0
    iget-object v5, v5, Le/k/a/c/g0/y;->a:Ljava/lang/String;

    new-array v8, v4, [Ljava/lang/Class;

    .line 28
    invoke-virtual {v1, v5, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 29
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/k/a/c/g0/k$a;

    .line 30
    iget-object v8, v3, Le/k/a/c/g0/k$a;->c:Le/k/a/c/g0/o;

    .line 31
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v9

    .line 32
    invoke-virtual {v7, v8, v9}, Le/k/a/c/g0/u;->d(Le/k/a/c/g0/o;[Ljava/lang/annotation/Annotation;)Le/k/a/c/g0/o;

    move-result-object v8

    iput-object v8, v3, Le/k/a/c/g0/k$a;->c:Le/k/a/c/g0/o;

    .line 33
    iput-object v5, v3, Le/k/a/c/g0/k$a;->b:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 34
    :cond_6
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 35
    new-instance v0, Le/k/a/c/g0/l;

    invoke-direct {v0}, Le/k/a/c/g0/l;-><init>()V

    goto :goto_6

    .line 36
    :cond_7
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 37
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 38
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/k/a/c/g0/k$a;

    .line 39
    iget-object v4, v3, Le/k/a/c/g0/k$a;->b:Ljava/lang/reflect/Method;

    if-nez v4, :cond_9

    move-object v5, v6

    goto :goto_5

    .line 40
    :cond_9
    new-instance v5, Le/k/a/c/g0/j;

    iget-object v7, v3, Le/k/a/c/g0/k$a;->a:Le/k/a/c/g0/e0;

    iget-object v3, v3, Le/k/a/c/g0/k$a;->c:Le/k/a/c/g0/o;

    invoke-virtual {v3}, Le/k/a/c/g0/o;->b()Le/k/a/c/g0/p;

    move-result-object v3

    invoke-direct {v5, v7, v4, v3, v6}, Le/k/a/c/g0/j;-><init>(Le/k/a/c/g0/e0;Ljava/lang/reflect/Method;Le/k/a/c/g0/p;[Le/k/a/c/g0/p;)V

    :goto_5
    if-eqz v5, :cond_8

    .line 41
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 42
    :cond_a
    new-instance v1, Le/k/a/c/g0/l;

    invoke-direct {v1, v0}, Le/k/a/c/g0/l;-><init>(Ljava/util/Map;)V

    move-object v0, v1

    .line 43
    :goto_6
    iput-object v0, p0, Le/k/a/c/g0/c;->l:Le/k/a/c/g0/l;

    :cond_b
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/c;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/Iterable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Le/k/a/c/g0/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/c;->m:Ljava/util/List;

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Le/k/a/c/g0/c;->a:Le/k/a/c/i;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v1, p0, Le/k/a/c/g0/c;->e:Le/k/a/c/b;

    iget-object v2, p0, Le/k/a/c/g0/c;->g:Le/k/a/c/g0/t$a;

    iget-object v3, p0, Le/k/a/c/g0/c;->f:Le/k/a/c/m0/o;

    iget-boolean v4, p0, Le/k/a/c/g0/c;->i:Z

    .line 5
    new-instance v5, Le/k/a/c/g0/h;

    invoke-direct {v5, v1, v3, v2, v4}, Le/k/a/c/g0/h;-><init>(Le/k/a/c/b;Le/k/a/c/m0/o;Le/k/a/c/g0/t$a;Z)V

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v5, p0, v0, v1}, Le/k/a/c/g0/h;->f(Le/k/a/c/g0/e0;Le/k/a/c/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 8
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/k/a/c/g0/h$a;

    .line 10
    new-instance v3, Le/k/a/c/g0/g;

    iget-object v4, v2, Le/k/a/c/g0/h$a;->a:Le/k/a/c/g0/e0;

    iget-object v5, v2, Le/k/a/c/g0/h$a;->b:Ljava/lang/reflect/Field;

    iget-object v2, v2, Le/k/a/c/g0/h$a;->c:Le/k/a/c/g0/o;

    invoke-virtual {v2}, Le/k/a/c/g0/o;->b()Le/k/a/c/g0/p;

    move-result-object v2

    invoke-direct {v3, v4, v5, v2}, Le/k/a/c/g0/g;-><init>(Le/k/a/c/g0/e0;Ljava/lang/reflect/Field;Le/k/a/c/g0/p;)V

    .line 11
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 12
    :goto_1
    iput-object v0, p0, Le/k/a/c/g0/c;->m:Ljava/util/List;

    :cond_3
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/c;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/k/a/c/g0/e;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/k/a/c/g0/c;->f()Le/k/a/c/g0/c$a;

    move-result-object v0

    iget-object v0, v0, Le/k/a/c/g0/c$a;->b:Ljava/util/List;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/k/a/c/g0/j;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/k/a/c/g0/c;->f()Le/k/a/c/g0/c$a;

    move-result-object v0

    iget-object v0, v0, Le/k/a/c/g0/c$a;->c:Ljava/util/List;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/c;->n:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/k/a/c/g0/c;->b:Ljava/lang/Class;

    invoke-static {v0}, Le/k/a/c/n0/g;->z(Ljava/lang/Class;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Le/k/a/c/g0/c;->n:Ljava/lang/Boolean;

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "[AnnotedClass "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/k/a/c/g0/c;->b:Ljava/lang/Class;

    const-string v2, "]"

    invoke-static {v1, v0, v2}, Le/d/c/a/a;->b2(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
