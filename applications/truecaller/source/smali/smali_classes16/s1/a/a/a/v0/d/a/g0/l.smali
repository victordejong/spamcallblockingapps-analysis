.class public final Ls1/a/a/a/v0/d/a/g0/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/d/a/g0/l$b;,
        Ls1/a/a/a/v0/d/a/g0/l$a;,
        Ls1/a/a/a/v0/d/a/g0/l$c;
    }
.end annotation


# instance fields
.field public final a:Ls1/a/a/a/v0/d/a/a;

.field public final b:Ls1/a/a/a/v0/o/i;

.field public final c:Ls1/a/a/a/v0/d/a/g0/d;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/a;Ls1/a/a/a/v0/o/i;Ls1/a/a/a/v0/d/a/g0/d;)V
    .locals 1

    const-string v0, "annotationTypeQualifierResolver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsr305State"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeEnhancement"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/g0/l;->a:Ls1/a/a/a/v0/d/a/a;

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/g0/l;->b:Ls1/a/a/a/v0/o/i;

    iput-object p3, p0, Ls1/a/a/a/v0/d/a/g0/l;->c:Ls1/a/a/a/v0/d/a/g0/d;

    return-void
.end method


# virtual methods
.method public final a(Ls1/a/a/a/v0/d/a/d0/h;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Ls1/a/a/a/v0/b/b;",
            ">(",
            "Ls1/a/a/a/v0/d/a/d0/h;",
            "Ljava/util/Collection<",
            "+TD;>;)",
            "Ljava/util/Collection<",
            "TD;>;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    const-string v1, "c"

    invoke-static {v8, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "platformSignatures"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v0, v10}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3
    move-object v12, v0

    check-cast v12, Ls1/a/a/a/v0/b/b;

    .line 4
    instance-of v0, v12, Ls1/a/a/a/v0/d/a/c0/b;

    if-nez v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    move-object v0, v12

    check-cast v0, Ls1/a/a/a/v0/d/a/c0/b;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/b;->getKind()Ls1/a/a/a/v0/b/b$a;

    move-result-object v1

    sget-object v2, Ls1/a/a/a/v0/b/b$a;->b:Ls1/a/a/a/v0/b/b$a;

    const/4 v13, 0x1

    if-ne v1, v2, :cond_1

    invoke-interface {v0}, Ls1/a/a/a/v0/b/b;->a()Ls1/a/a/a/v0/b/b;

    move-result-object v0

    const-string v1, "original"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ls1/a/a/a/v0/b/b;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-ne v0, v13, :cond_1

    :goto_1
    move v2, v10

    goto/16 :goto_28

    .line 6
    :cond_1
    invoke-interface {v12}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v0

    invoke-static {v8, v0}, Le/q/f/a/d/a;->W(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/d/a/d0/h;

    move-result-object v4

    .line 7
    instance-of v0, v12, Ls1/a/a/a/v0/d/a/c0/g;

    if-eqz v0, :cond_2

    move-object v0, v12

    check-cast v0, Ls1/a/a/a/v0/d/a/c0/g;

    .line 8
    iget-object v0, v0, Ls1/a/a/a/v0/b/h1/e0;->v:Ls1/a/a/a/v0/b/h1/f0;

    if-eqz v0, :cond_2

    .line 9
    iget-boolean v1, v0, Ls1/a/a/a/v0/b/h1/d0;->e:Z

    if-nez v1, :cond_2

    .line 10
    invoke-static {v0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    const-string v1, "getter!!"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object v2, v12

    .line 11
    :goto_2
    move-object v14, v12

    check-cast v14, Ls1/a/a/a/v0/d/a/c0/b;

    invoke-interface {v14}, Ls1/a/a/a/v0/b/a;->n0()Ls1/a/a/a/v0/b/n0;

    move-result-object v0

    const/4 v15, 0x0

    if-eqz v0, :cond_5

    .line 12
    instance-of v0, v2, Ls1/a/a/a/v0/b/v;

    if-nez v0, :cond_3

    move-object v0, v15

    goto :goto_3

    :cond_3
    move-object v0, v2

    :goto_3
    check-cast v0, Ls1/a/a/a/v0/b/v;

    if-eqz v0, :cond_4

    .line 13
    sget-object v1, Ls1/a/a/a/v0/d/a/c0/f;->E:Ls1/a/a/a/v0/b/a$a;

    invoke-interface {v0, v1}, Ls1/a/a/a/v0/b/a;->R(Ls1/a/a/a/v0/b/a$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/b/b1;

    goto :goto_4

    :cond_4
    move-object v0, v15

    .line 14
    :goto_4
    sget-object v1, Ls1/a/a/a/v0/d/a/g0/q;->b:Ls1/a/a/a/v0/d/a/g0/q;

    .line 15
    invoke-virtual {v7, v12, v0, v4, v1}, Ls1/a/a/a/v0/d/a/g0/l;->e(Ls1/a/a/a/v0/b/b;Ls1/a/a/a/v0/b/b1;Ls1/a/a/a/v0/d/a/d0/h;Ls1/z/b/l;)Ls1/a/a/a/v0/d/a/g0/l$b;

    move-result-object v0

    .line 16
    invoke-virtual {v0, v15}, Ls1/a/a/a/v0/d/a/g0/l$b;->a(Ls1/a/a/a/v0/d/a/g0/w;)Ls1/a/a/a/v0/d/a/g0/l$a;

    move-result-object v0

    move-object v6, v0

    goto :goto_5

    :cond_5
    move-object v6, v15

    .line 17
    :goto_5
    instance-of v0, v12, Ls1/a/a/a/v0/d/a/c0/f;

    if-nez v0, :cond_6

    move-object v0, v15

    goto :goto_6

    :cond_6
    move-object v0, v12

    :goto_6
    check-cast v0, Ls1/a/a/a/v0/d/a/c0/f;

    const/4 v5, 0x0

    if-eqz v0, :cond_7

    .line 18
    sget-object v1, Ls1/a/a/a/v0/d/b/s;->a:Ls1/a/a/a/v0/d/b/s;

    invoke-virtual {v0}, Ls1/a/a/a/v0/b/h1/n;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v3

    const-string v15, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {v3, v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Ls1/a/a/a/v0/b/e;

    const/4 v15, 0x3

    invoke-static {v0, v5, v5, v15}, Ls1/a/a/a/v0/d/b/p;->c(Ls1/a/a/a/v0/b/v;ZZI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Le/q/f/a/d/a;->P2(Ls1/a/a/a/v0/d/b/s;Ls1/a/a/a/v0/b/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 19
    sget-object v1, Ls1/a/a/a/v0/d/a/g0/j;->d:Ljava/util/Map;

    .line 20
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/d/a/g0/k;

    move-object v15, v0

    goto :goto_7

    :cond_7
    const/4 v15, 0x0

    :goto_7
    if-eqz v15, :cond_8

    .line 21
    iget-object v0, v15, Ls1/a/a/a/v0/d/a/g0/k;->b:Ljava/util/List;

    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    invoke-interface {v14}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 23
    :cond_8
    invoke-interface {v2}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object v0

    const-string v1, "annotationOwnerForMember.valueParameters"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0, v10}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 26
    check-cast v1, Ls1/a/a/a/v0/b/b1;

    .line 27
    new-instance v13, Ls1/a/a/a/v0/d/a/g0/s;

    invoke-direct {v13, v1}, Ls1/a/a/a/v0/d/a/g0/s;-><init>(Ls1/a/a/a/v0/b/b1;)V

    invoke-virtual {v7, v12, v1, v4, v13}, Ls1/a/a/a/v0/d/a/g0/l;->e(Ls1/a/a/a/v0/b/b;Ls1/a/a/a/v0/b/b1;Ls1/a/a/a/v0/d/a/d0/h;Ls1/z/b/l;)Ls1/a/a/a/v0/d/a/g0/l$b;

    move-result-object v13

    if-eqz v15, :cond_9

    .line 28
    iget-object v10, v15, Ls1/a/a/a/v0/d/a/g0/k;->b:Ljava/util/List;

    if-eqz v10, :cond_9

    .line 29
    invoke-interface {v1}, Ls1/a/a/a/v0/b/b1;->j()I

    move-result v5

    invoke-static {v10, v5}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls1/a/a/a/v0/d/a/g0/w;

    goto :goto_9

    :cond_9
    const/4 v5, 0x0

    :goto_9
    invoke-virtual {v13, v5}, Ls1/a/a/a/v0/d/a/g0/l$b;->a(Ls1/a/a/a/v0/d/a/g0/w;)Ls1/a/a/a/v0/d/a/g0/l$a;

    move-result-object v5

    .line 30
    iget-boolean v10, v5, Ls1/a/a/a/v0/d/a/g0/l$a;->b:Z

    const-string v13, "p"

    if-eqz v10, :cond_a

    .line 31
    iget-object v10, v5, Ls1/a/a/a/v0/d/a/g0/l$a;->a:Ls1/a/a/a/v0/m/e0;

    move-object/from16 v16, v0

    goto :goto_a

    .line 32
    :cond_a
    invoke-static {v1, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ls1/a/a/a/v0/b/a1;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v10

    move-object/from16 v16, v0

    const-string v0, "p.type"

    invoke-static {v10, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    :goto_a
    invoke-static {v1, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Ls1/a/a/a/v0/d/a/c0/h;->a:Ls1/a/a/a/v0/d/a/c0/h;

    const-string v13, "$this$getDefaultValueFromAnnotation"

    invoke-static {v1, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-interface {v1}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v13

    move-object/from16 v17, v6

    sget-object v6, Ls1/a/a/a/v0/d/a/v;->m:Ls1/a/a/a/v0/f/b;

    const-string v7, "JvmAnnotationNames.DEFAULT_VALUE_FQ_NAME"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v13, v6}, Ls1/a/a/a/v0/b/f1/h;->s(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/b/f1/c;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 36
    invoke-static {v6}, Ls1/a/a/a/v0/j/v/b;->b(Ls1/a/a/a/v0/b/f1/c;)Ls1/a/a/a/v0/j/t/g;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 37
    instance-of v7, v6, Ls1/a/a/a/v0/j/t/w;

    if-nez v7, :cond_b

    const/4 v6, 0x0

    :cond_b
    check-cast v6, Ls1/a/a/a/v0/j/t/w;

    if-eqz v6, :cond_c

    .line 38
    iget-object v6, v6, Ls1/a/a/a/v0/j/t/g;->a:Ljava/lang/Object;

    .line 39
    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_c

    .line 40
    new-instance v7, Ls1/a/a/a/v0/d/a/c0/j;

    invoke-direct {v7, v6}, Ls1/a/a/a/v0/d/a/c0/j;-><init>(Ljava/lang/String;)V

    goto :goto_b

    .line 41
    :cond_c
    invoke-interface {v1}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v6

    sget-object v7, Ls1/a/a/a/v0/d/a/v;->n:Ls1/a/a/a/v0/f/b;

    const-string v13, "JvmAnnotationNames.DEFAULT_NULL_FQ_NAME"

    invoke-static {v7, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ls1/a/a/a/v0/b/f1/h;->Y1(Ls1/a/a/a/v0/f/b;)Z

    move-result v6

    if-eqz v6, :cond_d

    move-object v7, v0

    goto :goto_b

    :cond_d
    const/4 v7, 0x0

    .line 42
    :goto_b
    instance-of v6, v7, Ls1/a/a/a/v0/d/a/c0/j;

    if-eqz v6, :cond_24

    check-cast v7, Ls1/a/a/a/v0/d/a/c0/j;

    .line 43
    iget-object v0, v7, Ls1/a/a/a/v0/d/a/c0/j;->a:Ljava/lang/String;

    const-string v6, "$this$lexicalCastFrom"

    .line 44
    invoke-static {v10, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "value"

    invoke-static {v0, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v10}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v7

    invoke-interface {v7}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object v7

    .line 46
    instance-of v13, v7, Ls1/a/a/a/v0/b/e;

    if-eqz v13, :cond_f

    check-cast v7, Ls1/a/a/a/v0/b/e;

    invoke-interface {v7}, Ls1/a/a/a/v0/b/e;->getKind()Ls1/a/a/a/v0/b/f;

    move-result-object v13

    sget-object v8, Ls1/a/a/a/v0/b/f;->c:Ls1/a/a/a/v0/b/f;

    if-ne v13, v8, :cond_f

    .line 47
    invoke-interface {v7}, Ls1/a/a/a/v0/b/e;->I()Ls1/a/a/a/v0/j/y/i;

    move-result-object v6

    .line 48
    invoke-static {v0}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v0

    const-string v7, "Name.identifier(value)"

    invoke-static {v0, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object v7, Ls1/a/a/a/v0/c/a/d;->a:Ls1/a/a/a/v0/c/a/d;

    .line 50
    invoke-interface {v6, v0, v7}, Ls1/a/a/a/v0/j/y/k;->f(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ls1/a/a/a/v0/b/h;

    move-result-object v0

    .line 51
    instance-of v6, v0, Ls1/a/a/a/v0/b/e;

    if-eqz v6, :cond_e

    check-cast v0, Ls1/a/a/a/v0/b/e;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->getKind()Ls1/a/a/a/v0/b/f;

    move-result-object v6

    sget-object v7, Ls1/a/a/a/v0/b/f;->d:Ls1/a/a/a/v0/b/f;

    if-ne v6, v7, :cond_e

    new-instance v6, Ls1/a/a/a/v0/d/a/l;

    invoke-direct {v6, v0}, Ls1/a/a/a/v0/d/a/l;-><init>(Ls1/a/a/a/v0/b/e;)V

    const/4 v13, 0x0

    goto/16 :goto_15

    :cond_e
    const/4 v13, 0x0

    goto/16 :goto_14

    :cond_f
    const-string v7, "$this$makeNotNullable"

    .line 52
    invoke-static {v10, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-static {v10}, Ls1/a/a/a/v0/m/f1;->i(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object v7

    const-string v8, "TypeUtils.makeNotNullable(this)"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-static {v0, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x2

    const-string v8, "0x"

    const/4 v10, 0x0

    .line 55
    invoke-static {v0, v8, v10, v6}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v8

    const-string v13, "(this as java.lang.String).substring(startIndex)"

    if-nez v8, :cond_13

    const-string v8, "0X"

    invoke-static {v0, v8, v10, v6}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v8

    if-eqz v8, :cond_10

    goto :goto_d

    :cond_10
    const-string v8, "0b"

    .line 56
    invoke-static {v0, v8, v10, v6}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v8

    if-nez v8, :cond_12

    const-string v8, "0B"

    invoke-static {v0, v8, v10, v6}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v8

    if-eqz v8, :cond_11

    goto :goto_c

    .line 57
    :cond_11
    new-instance v6, Ls1/a/a/a/v0/o/j;

    const/16 v8, 0xa

    invoke-direct {v6, v0, v8}, Ls1/a/a/a/v0/o/j;-><init>(Ljava/lang/String;I)V

    goto :goto_f

    .line 58
    :cond_12
    :goto_c
    new-instance v8, Ls1/a/a/a/v0/o/j;

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v10, v6}, Ls1/a/a/a/v0/o/j;-><init>(Ljava/lang/String;I)V

    goto :goto_e

    .line 59
    :cond_13
    :goto_d
    new-instance v8, Ls1/a/a/a/v0/o/j;

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0x10

    invoke-direct {v8, v6, v10}, Ls1/a/a/a/v0/o/j;-><init>(Ljava/lang/String;I)V

    :goto_e
    move-object v6, v8

    .line 60
    :goto_f
    iget-object v8, v6, Ls1/a/a/a/v0/o/j;->a:Ljava/lang/String;

    .line 61
    iget v6, v6, Ls1/a/a/a/v0/o/j;->b:I

    .line 62
    :try_start_0
    sget-object v10, Ls1/a/a/a/v0/a/g;->e:Ls1/a/a/a/v0/f/e;

    .line 63
    sget-object v10, Ls1/a/a/a/v0/a/k$a;->h:Ls1/a/a/a/v0/f/c;

    invoke-static {v7, v10}, Ls1/a/a/a/v0/a/g;->B(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/f/c;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 64
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v13, 0x0

    goto/16 :goto_13

    .line 65
    :cond_14
    sget-object v10, Ls1/a/a/a/v0/a/k$a;->i:Ls1/a/a/a/v0/f/c;

    invoke-static {v7, v10}, Ls1/a/a/a/v0/a/g;->B(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/f/c;)Z

    move-result v10

    if-eqz v10, :cond_15

    const-string v6, "$this$singleOrNull"

    .line 66
    invoke-static {v0, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_20

    const/4 v13, 0x0

    :try_start_1
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto/16 :goto_13

    :cond_15
    const/4 v13, 0x0

    .line 68
    sget-object v10, Ls1/a/a/a/v0/a/k$a;->j:Ls1/a/a/a/v0/f/c;

    invoke-static {v7, v10}, Ls1/a/a/a/v0/a/g;->B(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/f/c;)Z

    move-result v10

    if-eqz v10, :cond_17

    const-string v0, "$this$toByteOrNull"

    .line 69
    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-static {v8, v6}, Ls1/f0/q;->i(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v6, -0x80

    if-lt v0, v6, :cond_21

    const/16 v6, 0x7f

    if-le v0, v6, :cond_16

    goto/16 :goto_12

    :cond_16
    int-to-byte v0, v0

    .line 71
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto/16 :goto_13

    .line 72
    :cond_17
    sget-object v10, Ls1/a/a/a/v0/a/k$a;->k:Ls1/a/a/a/v0/f/c;

    invoke-static {v7, v10}, Ls1/a/a/a/v0/a/g;->B(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/f/c;)Z

    move-result v10

    if-eqz v10, :cond_19

    const-string v0, "$this$toShortOrNull"

    .line 73
    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-static {v8, v6}, Ls1/f0/q;->i(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v6, -0x8000

    if-lt v0, v6, :cond_21

    const/16 v6, 0x7fff

    if-le v0, v6, :cond_18

    goto :goto_12

    :cond_18
    int-to-short v0, v0

    .line 75
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_13

    .line 76
    :cond_19
    sget-object v10, Ls1/a/a/a/v0/a/k$a;->l:Ls1/a/a/a/v0/f/c;

    invoke-static {v7, v10}, Ls1/a/a/a/v0/a/g;->B(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/f/c;)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 77
    invoke-static {v8, v6}, Ls1/f0/q;->i(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_13

    .line 78
    :cond_1a
    sget-object v10, Ls1/a/a/a/v0/a/k$a;->m:Ls1/a/a/a/v0/f/c;

    invoke-static {v7, v10}, Ls1/a/a/a/v0/a/g;->B(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/f/c;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 79
    invoke-static {v8, v6}, Ls1/f0/q;->k(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v0

    goto :goto_13

    .line 80
    :cond_1b
    sget-object v6, Ls1/a/a/a/v0/a/k$a;->n:Ls1/a/a/a/v0/f/c;

    invoke-static {v7, v6}, Ls1/a/a/a/v0/a/g;->A(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/f/c;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 81
    invoke-virtual {v7}, Ls1/a/a/a/v0/m/e0;->P0()Z

    move-result v6

    if-nez v6, :cond_1c

    const/4 v6, 0x1

    goto :goto_10

    :cond_1c
    move v6, v13

    :goto_10
    if-eqz v6, :cond_1d

    .line 82
    invoke-static {v0}, Ls1/f0/q;->g(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    goto :goto_13

    .line 83
    :cond_1d
    sget-object v6, Ls1/a/a/a/v0/a/k$a;->o:Ls1/a/a/a/v0/f/c;

    invoke-static {v7, v6}, Ls1/a/a/a/v0/a/g;->A(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/f/c;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 84
    invoke-virtual {v7}, Ls1/a/a/a/v0/m/e0;->P0()Z

    move-result v6

    if-nez v6, :cond_1e

    const/4 v6, 0x1

    goto :goto_11

    :cond_1e
    move v6, v13

    :goto_11
    if-eqz v6, :cond_1f

    .line 85
    invoke-static {v0}, Ls1/f0/q;->f(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    goto :goto_13

    .line 86
    :cond_1f
    invoke-static {v7}, Ls1/a/a/a/v0/a/g;->J(Ls1/a/a/a/v0/m/e0;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v6, :cond_21

    goto :goto_13

    :catch_0
    :cond_20
    const/4 v13, 0x0

    :catch_1
    :cond_21
    :goto_12
    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_22

    .line 87
    new-instance v6, Ls1/a/a/a/v0/d/a/j;

    invoke-direct {v6, v0}, Ls1/a/a/a/v0/d/a/j;-><init>(Ljava/lang/Object;)V

    goto :goto_15

    :cond_22
    :goto_14
    const/4 v6, 0x0

    :goto_15
    if-eqz v6, :cond_23

    const/4 v0, 0x1

    goto :goto_16

    :cond_23
    move v0, v13

    goto :goto_16

    :cond_24
    const/4 v13, 0x0

    .line 88
    invoke-static {v7, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {v10}, Ls1/a/a/a/v0/m/f1;->b(Ls1/a/a/a/v0/m/e0;)Z

    move-result v0

    goto :goto_16

    :cond_25
    if-nez v7, :cond_29

    .line 89
    invoke-interface {v1}, Ls1/a/a/a/v0/b/b1;->U()Z

    move-result v0

    :goto_16
    if-eqz v0, :cond_26

    .line 90
    invoke-interface {v1}, Ls1/a/a/a/v0/b/b1;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_17

    :cond_26
    move v0, v13

    .line 91
    :goto_17
    iget-boolean v6, v5, Ls1/a/a/a/v0/d/a/g0/l$a;->b:Z

    if-nez v6, :cond_28

    .line 92
    invoke-interface {v1}, Ls1/a/a/a/v0/b/b1;->U()Z

    move-result v1

    if-eq v0, v1, :cond_27

    goto :goto_18

    :cond_27
    move v1, v13

    goto :goto_19

    :cond_28
    :goto_18
    const/4 v1, 0x1

    .line 93
    :goto_19
    new-instance v6, Ls1/a/a/a/v0/d/a/g0/l$c;

    .line 94
    iget-object v7, v5, Ls1/a/a/a/v0/d/a/g0/l$a;->a:Ls1/a/a/a/v0/m/e0;

    .line 95
    iget-boolean v5, v5, Ls1/a/a/a/v0/d/a/g0/l$a;->c:Z

    .line 96
    invoke-direct {v6, v7, v0, v1, v5}, Ls1/a/a/a/v0/d/a/g0/l$c;-><init>(Ls1/a/a/a/v0/m/e0;ZZZ)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move v5, v13

    move-object/from16 v0, v16

    move-object/from16 v6, v17

    const/16 v10, 0xa

    const/4 v13, 0x1

    goto/16 :goto_8

    .line 97
    :cond_29
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    :cond_2a
    move v13, v5

    move-object/from16 v17, v6

    const/4 v5, 0x1

    .line 98
    instance-of v0, v12, Ls1/a/a/a/v0/b/k0;

    if-nez v0, :cond_2b

    const/4 v0, 0x0

    goto :goto_1a

    :cond_2b
    move-object v0, v12

    :goto_1a
    check-cast v0, Ls1/a/a/a/v0/b/k0;

    if-eqz v0, :cond_2c

    .line 99
    invoke-static {v0}, Le/q/f/a/d/a;->z1(Ls1/a/a/a/v0/b/k0;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2c

    .line 100
    sget-object v0, Ls1/a/a/a/v0/d/a/a$a;->c:Ls1/a/a/a/v0/d/a/a$a;

    goto :goto_1b

    .line 101
    :cond_2c
    sget-object v0, Ls1/a/a/a/v0/d/a/a$a;->a:Ls1/a/a/a/v0/d/a/a$a;

    :goto_1b
    move-object v6, v0

    .line 102
    sget-object v7, Ls1/a/a/a/v0/d/a/g0/r;->b:Ls1/a/a/a/v0/d/a/g0/r;

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v8, v3

    move v3, v5

    move v10, v13

    move-object v5, v6

    move-object/from16 v13, v17

    move-object v6, v7

    .line 103
    invoke-virtual/range {v0 .. v6}, Ls1/a/a/a/v0/d/a/g0/l;->d(Ls1/a/a/a/v0/b/b;Ls1/a/a/a/v0/b/f1/a;ZLs1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/a$a;Ls1/z/b/l;)Ls1/a/a/a/v0/d/a/g0/l$b;

    move-result-object v0

    if-eqz v15, :cond_2d

    .line 104
    iget-object v1, v15, Ls1/a/a/a/v0/d/a/g0/k;->a:Ls1/a/a/a/v0/d/a/g0/w;

    goto :goto_1c

    :cond_2d
    const/4 v1, 0x0

    .line 105
    :goto_1c
    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/d/a/g0/l$b;->a(Ls1/a/a/a/v0/d/a/g0/w;)Ls1/a/a/a/v0/d/a/g0/l$a;

    move-result-object v0

    if-eqz v13, :cond_2e

    .line 106
    iget-boolean v1, v13, Ls1/a/a/a/v0/d/a/g0/l$a;->c:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_33

    :cond_2e
    iget-boolean v1, v0, Ls1/a/a/a/v0/d/a/g0/l$a;->c:Z

    if-nez v1, :cond_33

    .line 107
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2f

    goto :goto_1d

    .line 108
    :cond_2f
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/a/a/a/v0/d/a/g0/l$c;

    .line 109
    iget-boolean v2, v2, Ls1/a/a/a/v0/d/a/g0/l$a;->c:Z

    if-eqz v2, :cond_30

    const/4 v5, 0x1

    goto :goto_1e

    :cond_31
    :goto_1d
    move v5, v10

    :goto_1e
    if-eqz v5, :cond_32

    goto :goto_1f

    :cond_32
    move v5, v10

    goto :goto_20

    :cond_33
    :goto_1f
    const/4 v5, 0x1

    :goto_20
    if-eqz v13, :cond_34

    .line 110
    iget-boolean v1, v13, Ls1/a/a/a/v0/d/a/g0/l$a;->b:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_39

    goto :goto_21

    :cond_34
    const/4 v2, 0x1

    :goto_21
    iget-boolean v1, v0, Ls1/a/a/a/v0/d/a/g0/l$a;->b:Z

    if-nez v1, :cond_39

    .line 111
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_35

    goto :goto_22

    .line 112
    :cond_35
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/d/a/g0/l$c;

    .line 113
    iget-boolean v3, v3, Ls1/a/a/a/v0/d/a/g0/l$a;->b:Z

    if-eqz v3, :cond_36

    goto :goto_23

    :cond_37
    :goto_22
    move v2, v10

    :goto_23
    if-nez v2, :cond_39

    if-eqz v5, :cond_38

    goto :goto_24

    :cond_38
    const/16 v2, 0xa

    goto :goto_28

    :cond_39
    :goto_24
    if-eqz v5, :cond_3a

    .line 114
    sget-object v1, Ls1/a/a/a/v0/j/u/a;->a:Ls1/a/a/a/v0/b/a$a;

    new-instance v2, Ls1/a/a/a/v0/d/a/k;

    invoke-direct {v2, v12}, Ls1/a/a/a/v0/d/a/k;-><init>(Ls1/a/a/a/v0/b/k;)V

    .line 115
    new-instance v3, Ls1/k;

    invoke-direct {v3, v1, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_25

    :cond_3a
    const/4 v3, 0x0

    :goto_25
    if-eqz v13, :cond_3b

    .line 116
    iget-object v15, v13, Ls1/a/a/a/v0/d/a/g0/l$a;->a:Ls1/a/a/a/v0/m/e0;

    goto :goto_26

    :cond_3b
    const/4 v15, 0x0

    .line 117
    :goto_26
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v8, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 118
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 119
    check-cast v5, Ls1/a/a/a/v0/d/a/g0/l$c;

    .line 120
    new-instance v6, Ls1/a/a/a/v0/d/a/c0/k;

    .line 121
    iget-object v7, v5, Ls1/a/a/a/v0/d/a/g0/l$a;->a:Ls1/a/a/a/v0/m/e0;

    .line 122
    iget-boolean v5, v5, Ls1/a/a/a/v0/d/a/g0/l$c;->d:Z

    .line 123
    invoke-direct {v6, v7, v5}, Ls1/a/a/a/v0/d/a/c0/k;-><init>(Ls1/a/a/a/v0/m/e0;Z)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 124
    :cond_3c
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/g0/l$a;->a:Ls1/a/a/a/v0/m/e0;

    .line 125
    invoke-interface {v14, v15, v1, v0, v3}, Ls1/a/a/a/v0/d/a/c0/b;->q0(Ls1/a/a/a/v0/m/e0;Ljava/util/List;Ls1/a/a/a/v0/m/e0;Ls1/k;)Ls1/a/a/a/v0/d/a/c0/b;

    move-result-object v12

    const-string v0, "null cannot be cast to non-null type D"

    invoke-static {v12, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    :goto_28
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move v10, v2

    goto/16 :goto_0

    :cond_3d
    return-object v9
.end method

.method public final b(Ls1/a/a/a/v0/b/f1/c;)Ls1/a/a/a/v0/d/a/g0/i;
    .locals 4

    const-string v0, "annotationDescriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/d/a/g0/l;->c(Ls1/a/a/a/v0/b/f1/c;)Ls1/a/a/a/v0/d/a/g0/i;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/g0/l;->a:Ls1/a/a/a/v0/d/a/a;

    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/d/a/a;->d(Ls1/a/a/a/v0/b/f1/c;)Ls1/a/a/a/v0/b/f1/c;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3
    iget-object v2, p0, Ls1/a/a/a/v0/d/a/g0/l;->a:Ls1/a/a/a/v0/d/a/a;

    invoke-virtual {v2, p1}, Ls1/a/a/a/v0/d/a/a;->b(Ls1/a/a/a/v0/b/f1/c;)Ls1/a/a/a/v0/o/k;

    move-result-object p1

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v2, Ls1/a/a/a/v0/o/k;->b:Ls1/a/a/a/v0/o/k;

    const/4 v3, 0x1

    if-ne p1, v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    return-object v1

    .line 6
    :cond_2
    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/d/a/g0/l;->c(Ls1/a/a/a/v0/b/f1/c;)Ls1/a/a/a/v0/d/a/g0/i;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ls1/a/a/a/v0/o/k;->a()Z

    move-result p1

    invoke-static {v0, v1, p1, v3}, Ls1/a/a/a/v0/d/a/g0/i;->a(Ls1/a/a/a/v0/d/a/g0/i;Ls1/a/a/a/v0/d/a/g0/h;ZI)Ls1/a/a/a/v0/d/a/g0/i;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method public final c(Ls1/a/a/a/v0/b/f1/c;)Ls1/a/a/a/v0/d/a/g0/i;
    .locals 7

    .line 1
    sget-object v0, Ls1/a/a/a/v0/d/a/g0/h;->b:Ls1/a/a/a/v0/d/a/g0/h;

    sget-object v1, Ls1/a/a/a/v0/d/a/g0/h;->a:Ls1/a/a/a/v0/d/a/g0/h;

    invoke-interface {p1}, Ls1/a/a/a/v0/b/f1/c;->d()Ls1/a/a/a/v0/f/b;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    .line 2
    sget-object v4, Ls1/a/a/a/v0/d/a/w;->a:Ljava/util/List;

    .line 3
    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    new-instance v0, Ls1/a/a/a/v0/d/a/g0/i;

    .line 4
    invoke-direct {v0, v1, v6}, Ls1/a/a/a/v0/d/a/g0/i;-><init>(Ls1/a/a/a/v0/d/a/g0/h;Z)V

    goto/16 :goto_3

    .line 5
    :cond_0
    sget-object v4, Ls1/a/a/a/v0/d/a/w;->d:Ljava/util/List;

    .line 6
    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v1, Ls1/a/a/a/v0/d/a/g0/i;

    .line 7
    invoke-direct {v1, v0, v6}, Ls1/a/a/a/v0/d/a/g0/i;-><init>(Ls1/a/a/a/v0/d/a/g0/h;Z)V

    :goto_0
    move-object v0, v1

    goto/16 :goto_3

    .line 8
    :cond_1
    sget-object v4, Ls1/a/a/a/v0/d/a/w;->b:Ls1/a/a/a/v0/f/b;

    .line 9
    invoke-static {v2, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 10
    invoke-static {p1}, Ls1/a/a/a/v0/j/v/b;->b(Ls1/a/a/a/v0/b/f1/c;)Ls1/a/a/a/v0/j/t/g;

    move-result-object v2

    instance-of v4, v2, Ls1/a/a/a/v0/j/t/k;

    if-nez v4, :cond_2

    move-object v2, v3

    :cond_2
    check-cast v2, Ls1/a/a/a/v0/j/t/k;

    if-eqz v2, :cond_3

    .line 11
    iget-object v2, v2, Ls1/a/a/a/v0/j/t/k;->c:Ls1/a/a/a/v0/f/e;

    .line 12
    invoke-virtual {v2}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v1, "ALWAYS"

    .line 13
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Ls1/a/a/a/v0/d/a/g0/i;

    .line 14
    invoke-direct {v1, v0, v6}, Ls1/a/a/a/v0/d/a/g0/i;-><init>(Ls1/a/a/a/v0/d/a/g0/h;Z)V

    goto :goto_0

    :sswitch_1
    const-string v0, "UNKNOWN"

    .line 15
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ls1/a/a/a/v0/d/a/g0/i;

    sget-object v1, Ls1/a/a/a/v0/d/a/g0/h;->c:Ls1/a/a/a/v0/d/a/g0/h;

    .line 16
    invoke-direct {v0, v1, v6}, Ls1/a/a/a/v0/d/a/g0/i;-><init>(Ls1/a/a/a/v0/d/a/g0/h;Z)V

    goto :goto_3

    :sswitch_2
    const-string v0, "NEVER"

    .line 17
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    :sswitch_3
    const-string v0, "MAYBE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_1
    new-instance v0, Ls1/a/a/a/v0/d/a/g0/i;

    .line 18
    invoke-direct {v0, v1, v6}, Ls1/a/a/a/v0/d/a/g0/i;-><init>(Ls1/a/a/a/v0/d/a/g0/h;Z)V

    goto :goto_3

    .line 19
    :cond_3
    new-instance v1, Ls1/a/a/a/v0/d/a/g0/i;

    .line 20
    invoke-direct {v1, v0, v6}, Ls1/a/a/a/v0/d/a/g0/i;-><init>(Ls1/a/a/a/v0/d/a/g0/h;Z)V

    goto :goto_0

    .line 21
    :cond_4
    sget-object v4, Ls1/a/a/a/v0/d/a/w;->e:Ls1/a/a/a/v0/f/b;

    .line 22
    invoke-static {v2, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Ls1/a/a/a/v0/d/a/g0/l;->b:Ls1/a/a/a/v0/o/i;

    .line 23
    iget-boolean v4, v4, Ls1/a/a/a/v0/o/i;->e:Z

    if-eqz v4, :cond_5

    .line 24
    new-instance v0, Ls1/a/a/a/v0/d/a/g0/i;

    .line 25
    invoke-direct {v0, v1, v6}, Ls1/a/a/a/v0/d/a/g0/i;-><init>(Ls1/a/a/a/v0/d/a/g0/h;Z)V

    goto :goto_3

    .line 26
    :cond_5
    sget-object v4, Ls1/a/a/a/v0/d/a/w;->f:Ls1/a/a/a/v0/f/b;

    .line 27
    invoke-static {v2, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Ls1/a/a/a/v0/d/a/g0/l;->b:Ls1/a/a/a/v0/o/i;

    .line 28
    iget-boolean v4, v4, Ls1/a/a/a/v0/o/i;->e:Z

    if-eqz v4, :cond_6

    .line 29
    new-instance v1, Ls1/a/a/a/v0/d/a/g0/i;

    .line 30
    invoke-direct {v1, v0, v6}, Ls1/a/a/a/v0/d/a/g0/i;-><init>(Ls1/a/a/a/v0/d/a/g0/h;Z)V

    goto/16 :goto_0

    .line 31
    :cond_6
    sget-object v4, Ls1/a/a/a/v0/d/a/w;->h:Ls1/a/a/a/v0/f/b;

    .line 32
    invoke-static {v2, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v1, Ls1/a/a/a/v0/d/a/g0/i;

    invoke-direct {v1, v0, v5}, Ls1/a/a/a/v0/d/a/g0/i;-><init>(Ls1/a/a/a/v0/d/a/g0/h;Z)V

    goto/16 :goto_0

    .line 33
    :cond_7
    sget-object v0, Ls1/a/a/a/v0/d/a/w;->g:Ls1/a/a/a/v0/f/b;

    .line 34
    invoke-static {v2, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ls1/a/a/a/v0/d/a/g0/i;

    invoke-direct {v0, v1, v5}, Ls1/a/a/a/v0/d/a/g0/i;-><init>(Ls1/a/a/a/v0/d/a/g0/h;Z)V

    goto :goto_3

    :cond_8
    :goto_2
    move-object v0, v3

    :goto_3
    if-eqz v0, :cond_a

    .line 35
    iget-boolean v1, v0, Ls1/a/a/a/v0/d/a/g0/i;->b:Z

    if-nez v1, :cond_9

    .line 36
    instance-of v1, p1, Ls1/a/a/a/v0/d/a/c0/i;

    if-eqz v1, :cond_9

    check-cast p1, Ls1/a/a/a/v0/d/a/c0/i;

    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/c0/i;->a()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 37
    invoke-static {v0, v3, v5, v5}, Ls1/a/a/a/v0/d/a/g0/i;->a(Ls1/a/a/a/v0/d/a/g0/i;Ls1/a/a/a/v0/d/a/g0/h;ZI)Ls1/a/a/a/v0/d/a/g0/i;

    move-result-object v3

    goto :goto_4

    :cond_9
    move-object v3, v0

    :cond_a
    :goto_4
    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x45bf448 -> :sswitch_3
        0x46bd26c -> :sswitch_2
        0x19d1382a -> :sswitch_1
        0x7342860f -> :sswitch_0
    .end sparse-switch
.end method

.method public final d(Ls1/a/a/a/v0/b/b;Ls1/a/a/a/v0/b/f1/a;ZLs1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/a$a;Ls1/z/b/l;)Ls1/a/a/a/v0/d/a/g0/l$b;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/b/b;",
            "Ls1/a/a/a/v0/b/f1/a;",
            "Z",
            "Ls1/a/a/a/v0/d/a/d0/h;",
            "Ls1/a/a/a/v0/d/a/a$a;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/b/b;",
            "+",
            "Ls1/a/a/a/v0/m/e0;",
            ">;)",
            "Ls1/a/a/a/v0/d/a/g0/l$b;"
        }
    .end annotation

    .line 1
    invoke-interface {p6, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ls1/a/a/a/v0/m/e0;

    .line 2
    invoke-interface {p1}, Ls1/a/a/a/v0/b/b;->e()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "this.overriddenDescriptors"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v5, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ls1/a/a/a/v0/b/b;

    const-string v2, "it"

    .line 6
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p6, v1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/m/e0;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {p6, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/m/e0;

    invoke-interface {p1}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object p1

    invoke-static {p4, p1}, Le/q/f/a/d/a;->W(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/d/a/d0/h;

    move-result-object v7

    .line 8
    new-instance p1, Ls1/a/a/a/v0/d/a/g0/l$b;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move v6, p3

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Ls1/a/a/a/v0/d/a/g0/l$b;-><init>(Ls1/a/a/a/v0/d/a/g0/l;Ls1/a/a/a/v0/b/f1/a;Ls1/a/a/a/v0/m/e0;Ljava/util/Collection;ZLs1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/a$a;)V

    return-object p1
.end method

.method public final e(Ls1/a/a/a/v0/b/b;Ls1/a/a/a/v0/b/b1;Ls1/a/a/a/v0/d/a/d0/h;Ls1/z/b/l;)Ls1/a/a/a/v0/d/a/g0/l$b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/b/b;",
            "Ls1/a/a/a/v0/b/b1;",
            "Ls1/a/a/a/v0/d/a/d0/h;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/b/b;",
            "+",
            "Ls1/a/a/a/v0/m/e0;",
            ">;)",
            "Ls1/a/a/a/v0/d/a/g0/l$b;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p2}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v0

    invoke-static {p3, v0}, Le/q/f/a/d/a;->W(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/d/a/d0/h;

    move-result-object p3

    :cond_0
    move-object v4, p3

    .line 2
    sget-object v5, Ls1/a/a/a/v0/d/a/a$a;->b:Ls1/a/a/a/v0/d/a/a$a;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p4

    .line 3
    invoke-virtual/range {v0 .. v6}, Ls1/a/a/a/v0/d/a/g0/l;->d(Ls1/a/a/a/v0/b/b;Ls1/a/a/a/v0/b/f1/a;ZLs1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/a$a;Ls1/z/b/l;)Ls1/a/a/a/v0/d/a/g0/l$b;

    move-result-object p1

    return-object p1
.end method
