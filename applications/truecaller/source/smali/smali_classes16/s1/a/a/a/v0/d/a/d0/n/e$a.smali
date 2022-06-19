.class public final Ls1/a/a/a/v0/d/a/d0/n/e$a;
.super Ls1/a/a/a/v0/m/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/d/a/d0/n/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final c:Ls1/a/a/a/v0/l/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/i<",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/w0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic d:Ls1/a/a/a/v0/d/a/d0/n/e;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/n/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/e$a;->d:Ls1/a/a/a/v0/d/a/d0/n/e;

    .line 2
    iget-object v0, p1, Ls1/a/a/a/v0/d/a/d0/n/e;->h:Ls1/a/a/a/v0/d/a/d0/h;

    .line 3
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 4
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/c;->a:Ls1/a/a/a/v0/l/m;

    .line 5
    invoke-direct {p0, v0}, Ls1/a/a/a/v0/m/b;-><init>(Ls1/a/a/a/v0/l/m;)V

    .line 6
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/n/e;->h:Ls1/a/a/a/v0/d/a/d0/h;

    .line 7
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 8
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/c;->a:Ls1/a/a/a/v0/l/m;

    .line 9
    new-instance v0, Ls1/a/a/a/v0/d/a/d0/n/e$a$a;

    invoke-direct {v0, p0}, Ls1/a/a/a/v0/d/a/d0/n/e$a$a;-><init>(Ls1/a/a/a/v0/d/a/d0/n/e$a;)V

    invoke-interface {p1, v0}, Ls1/a/a/a/v0/l/m;->e(Ls1/z/b/a;)Ls1/a/a/a/v0/l/i;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/e$a;->c:Ls1/a/a/a/v0/l/i;

    return-void
.end method


# virtual methods
.method public d()Ls1/a/a/a/v0/b/h;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/e$a;->d:Ls1/a/a/a/v0/d/a/d0/n/e;

    return-object v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()Ljava/util/Collection;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/m/e0;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls1/a/a/a/v0/m/j1;->c:Ls1/a/a/a/v0/m/j1;

    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/n/e$a;->d:Ls1/a/a/a/v0/d/a/d0/n/e;

    .line 2
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/d0/n/e;->u:Ls1/a/a/a/v0/d/a/f0/g;

    .line 3
    invoke-interface {v1}, Ls1/a/a/a/v0/d/a/f0/g;->c()Ljava/util/Collection;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    iget-object v5, p0, Ls1/a/a/a/v0/d/a/d0/n/e$a;->d:Ls1/a/a/a/v0/d/a/d0/n/e;

    .line 7
    iget-object v5, v5, Ls1/a/a/a/v0/d/a/d0/n/e;->r:Ls1/a/a/a/v0/b/f1/h;

    .line 8
    sget-object v6, Ls1/a/a/a/v0/d/a/v;->i:Ls1/a/a/a/v0/f/b;

    const-string v7, "JvmAnnotationNames.PURELY_IMPLEMENTS_ANNOTATION"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ls1/a/a/a/v0/b/f1/h;->s(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/b/f1/c;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_9

    .line 9
    invoke-interface {v5}, Ls1/a/a/a/v0/b/f1/c;->b()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-static {v5}, Ls1/u/i;->C0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v5

    instance-of v8, v5, Ls1/a/a/a/v0/j/t/w;

    if-nez v8, :cond_0

    move-object v5, v7

    :cond_0
    check-cast v5, Ls1/a/a/a/v0/j/t/w;

    if-eqz v5, :cond_9

    .line 10
    iget-object v5, v5, Ls1/a/a/a/v0/j/t/g;->a:Ljava/lang/Object;

    .line 11
    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_9

    .line 12
    sget-object v8, Ls1/a/a/a/v0/f/h;->c:Ls1/a/a/a/v0/f/h;

    .line 13
    sget-object v9, Ls1/a/a/a/v0/f/h;->a:Ls1/a/a/a/v0/f/h;

    .line 14
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    move v11, v4

    :goto_0
    if-ge v11, v10, :cond_6

    invoke-virtual {v5, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 15
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    if-eqz v13, :cond_3

    if-eq v13, v6, :cond_1

    const/4 v14, 0x2

    if-eq v13, v14, :cond_3

    goto :goto_1

    :cond_1
    const/16 v13, 0x2e

    if-ne v12, v13, :cond_2

    move-object v9, v8

    goto :goto_1

    .line 16
    :cond_2
    invoke-static {v12}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v12

    if-nez v12, :cond_5

    goto :goto_2

    .line 17
    :cond_3
    invoke-static {v12}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_2

    .line 18
    :cond_4
    sget-object v9, Ls1/a/a/a/v0/f/h;->b:Ls1/a/a/a/v0/f/h;

    :cond_5
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_6
    if-eq v9, v8, :cond_7

    move v8, v6

    goto :goto_3

    :cond_7
    :goto_2
    move v8, v4

    :goto_3
    if-nez v8, :cond_8

    goto :goto_4

    .line 19
    :cond_8
    new-instance v8, Ls1/a/a/a/v0/f/b;

    invoke-direct {v8, v5}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    :goto_4
    move-object v8, v7

    :goto_5
    if-eqz v8, :cond_b

    .line 20
    invoke-virtual {v8}, Ls1/a/a/a/v0/f/b;->d()Z

    move-result v5

    if-nez v5, :cond_a

    sget-object v5, Ls1/a/a/a/v0/a/k;->j:Ls1/a/a/a/v0/f/e;

    invoke-virtual {v8, v5}, Ls1/a/a/a/v0/f/b;->i(Ls1/a/a/a/v0/f/e;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v5, v6

    goto :goto_6

    :cond_a
    move v5, v4

    :goto_6
    if-eqz v5, :cond_b

    goto :goto_7

    :cond_b
    move-object v8, v7

    :goto_7
    if-eqz v8, :cond_c

    move-object v5, v8

    goto :goto_8

    .line 21
    :cond_c
    sget-object v5, Ls1/a/a/a/v0/d/a/n;->b:Ls1/a/a/a/v0/d/a/n;

    iget-object v5, p0, Ls1/a/a/a/v0/d/a/d0/n/e$a;->d:Ls1/a/a/a/v0/d/a/d0/n/e;

    invoke-static {v5}, Ls1/a/a/a/v0/j/v/b;->h(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/b;

    move-result-object v5

    const-string v9, "classFqName"

    .line 22
    invoke-static {v5, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v9, Ls1/a/a/a/v0/d/a/n;->a:Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls1/a/a/a/v0/f/b;

    :goto_8
    const/16 v9, 0xa

    if-eqz v5, :cond_11

    .line 24
    iget-object v10, p0, Ls1/a/a/a/v0/d/a/d0/n/e$a;->d:Ls1/a/a/a/v0/d/a/d0/n/e;

    .line 25
    iget-object v10, v10, Ls1/a/a/a/v0/d/a/d0/n/e;->h:Ls1/a/a/a/v0/d/a/d0/h;

    .line 26
    iget-object v10, v10, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 27
    iget-object v10, v10, Ls1/a/a/a/v0/d/a/d0/c;->o:Ls1/a/a/a/v0/b/a0;

    .line 28
    sget-object v11, Ls1/a/a/a/v0/c/a/d;->i:Ls1/a/a/a/v0/c/a/d;

    .line 29
    sget v12, Ls1/a/a/a/v0/j/v/b;->a:I

    const-string v12, "$this$resolveTopLevelClass"

    invoke-static {v10, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "topLevelClassFqName"

    invoke-static {v5, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "location"

    invoke-static {v11, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v5}, Ls1/a/a/a/v0/f/b;->d()Z

    .line 31
    invoke-virtual {v5}, Ls1/a/a/a/v0/f/b;->e()Ls1/a/a/a/v0/f/b;

    move-result-object v12

    const-string v13, "topLevelClassFqName.parent()"

    invoke-static {v12, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10, v12}, Ls1/a/a/a/v0/b/a0;->Q(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/b/g0;

    move-result-object v10

    invoke-interface {v10}, Ls1/a/a/a/v0/b/g0;->s()Ls1/a/a/a/v0/j/y/i;

    move-result-object v10

    .line 32
    invoke-virtual {v5}, Ls1/a/a/a/v0/f/b;->g()Ls1/a/a/a/v0/f/e;

    move-result-object v5

    const-string v12, "topLevelClassFqName.shortName()"

    invoke-static {v5, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-interface {v10, v5, v11}, Ls1/a/a/a/v0/j/y/k;->f(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ls1/a/a/a/v0/b/h;

    move-result-object v5

    instance-of v10, v5, Ls1/a/a/a/v0/b/e;

    if-nez v10, :cond_d

    move-object v5, v7

    :cond_d
    check-cast v5, Ls1/a/a/a/v0/b/e;

    if-eqz v5, :cond_11

    .line 34
    invoke-interface {v5}, Ls1/a/a/a/v0/b/h;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object v10

    const-string v11, "classDescriptor.typeConstructor"

    invoke-static {v10, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10}, Ls1/a/a/a/v0/m/v0;->getParameters()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    .line 35
    iget-object v11, p0, Ls1/a/a/a/v0/d/a/d0/n/e$a;->d:Ls1/a/a/a/v0/d/a/d0/n/e;

    .line 36
    iget-object v11, v11, Ls1/a/a/a/v0/d/a/d0/n/e;->m:Ls1/a/a/a/v0/d/a/d0/n/e$a;

    .line 37
    invoke-virtual {v11}, Ls1/a/a/a/v0/d/a/d0/n/e$a;->getParameters()Ljava/util/List;

    move-result-object v11

    const-string v12, "getTypeConstructor().parameters"

    invoke-static {v11, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-ne v12, v10, :cond_e

    .line 39
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v11, v9}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 41
    check-cast v11, Ls1/a/a/a/v0/b/w0;

    .line 42
    new-instance v12, Ls1/a/a/a/v0/m/a1;

    const-string v13, "parameter"

    invoke-static {v11, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v11}, Ls1/a/a/a/v0/b/h;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object v11

    invoke-direct {v12, v0, v11}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/e0;)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_e
    if-ne v12, v6, :cond_11

    if-le v10, v6, :cond_11

    if-nez v8, :cond_11

    .line 43
    new-instance v8, Ls1/a/a/a/v0/m/a1;

    invoke-static {v11}, Ls1/u/i;->B0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "typeParameters.single()"

    invoke-static {v11, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ls1/a/a/a/v0/b/w0;

    invoke-interface {v11}, Ls1/a/a/a/v0/b/h;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object v11

    invoke-direct {v8, v0, v11}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/e0;)V

    .line 44
    new-instance v11, Ls1/d0/i;

    invoke-direct {v11, v6, v10}, Ls1/d0/i;-><init>(II)V

    .line 45
    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v11, v9}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    invoke-virtual {v11}, Ls1/d0/g;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_a
    move-object v12, v11

    check-cast v12, Ls1/d0/h;

    .line 47
    iget-boolean v12, v12, Ls1/d0/h;->b:Z

    if-eqz v12, :cond_f

    .line 48
    move-object v12, v11

    check-cast v12, Ls1/u/z;

    invoke-virtual {v12}, Ls1/u/z;->a()I

    .line 49
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_f
    move-object v8, v10

    .line 50
    :cond_10
    sget-object v10, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 51
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v10, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    .line 53
    invoke-static {v10, v5, v8}, Ls1/a/a/a/v0/m/f0;->e(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/e;Ljava/util/List;)Ls1/a/a/a/v0/m/l0;

    move-result-object v5

    goto :goto_b

    :cond_11
    move-object v5, v7

    .line 54
    :goto_b
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ls1/a/a/a/v0/d/a/f0/j;

    .line 55
    iget-object v10, p0, Ls1/a/a/a/v0/d/a/d0/n/e$a;->d:Ls1/a/a/a/v0/d/a/d0/n/e;

    .line 56
    iget-object v10, v10, Ls1/a/a/a/v0/d/a/d0/n/e;->h:Ls1/a/a/a/v0/d/a/d0/h;

    .line 57
    iget-object v10, v10, Ls1/a/a/a/v0/d/a/d0/h;->b:Ls1/a/a/a/v0/d/a/d0/o/g;

    .line 58
    sget-object v11, Ls1/a/a/a/v0/d/a/b0/k;->a:Ls1/a/a/a/v0/d/a/b0/k;

    const/4 v12, 0x3

    invoke-static {v11, v4, v7, v12}, Ls1/a/a/a/v0/d/a/d0/o/i;->c(Ls1/a/a/a/v0/d/a/b0/k;ZLs1/a/a/a/v0/b/w0;I)Ls1/a/a/a/v0/d/a/d0/o/a;

    move-result-object v11

    invoke-virtual {v10, v8, v11}, Ls1/a/a/a/v0/d/a/d0/o/g;->d(Ls1/a/a/a/v0/d/a/f0/v;Ls1/a/a/a/v0/d/a/d0/o/a;)Ls1/a/a/a/v0/m/e0;

    move-result-object v10

    .line 59
    invoke-virtual {v10}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v11

    invoke-interface {v11}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object v11

    instance-of v11, v11, Ls1/a/a/a/v0/b/b0$b;

    if-eqz v11, :cond_13

    .line 60
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_13
    invoke-virtual {v10}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v8

    if-eqz v5, :cond_14

    invoke-virtual {v5}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v11

    goto :goto_d

    :cond_14
    move-object v11, v7

    :goto_d
    invoke-static {v8, v11}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    goto :goto_c

    .line 62
    :cond_15
    invoke-static {v10}, Ls1/a/a/a/v0/a/g;->x(Ls1/a/a/a/v0/m/e0;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 63
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 64
    :cond_16
    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/n/e$a;->d:Ls1/a/a/a/v0/d/a/d0/n/e;

    .line 65
    iget-object v4, v1, Ls1/a/a/a/v0/d/a/d0/n/e;->v:Ls1/a/a/a/v0/b/e;

    if-eqz v4, :cond_17

    .line 66
    invoke-static {v4, v1}, Le/q/f/a/d/a;->e0(Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/b/e;)Ls1/a/a/a/v0/m/x0;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, Ls1/a/a/a/v0/m/b1;->c()Ls1/a/a/a/v0/m/d1;

    move-result-object v1

    invoke-interface {v4}, Ls1/a/a/a/v0/b/e;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Ls1/a/a/a/v0/m/d1;->k(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/j1;)Ls1/a/a/a/v0/m/e0;

    move-result-object v7

    .line 68
    :cond_17
    invoke-static {v2, v7}, Ls1/a/a/a/v0/f/d;->r(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 69
    invoke-static {v2, v5}, Ls1/a/a/a/v0/f/d;->r(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v6

    if-eqz v0, :cond_19

    .line 71
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/e$a;->d:Ls1/a/a/a/v0/d/a/d0/n/e;

    .line 72
    iget-object v1, v0, Ls1/a/a/a/v0/d/a/d0/n/e;->h:Ls1/a/a/a/v0/d/a/d0/h;

    .line 73
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 74
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/d0/c;->f:Ls1/a/a/a/v0/k/b/p;

    .line 75
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3, v9}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 77
    check-cast v5, Ls1/a/a/a/v0/d/a/f0/v;

    const-string v7, "null cannot be cast to non-null type org.jetbrains.kotlin.load.java.structure.JavaClassifierType"

    .line 78
    invoke-static {v5, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v5, Ls1/a/a/a/v0/d/a/f0/j;

    invoke-interface {v5}, Ls1/a/a/a/v0/d/a/f0/j;->u()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 79
    :cond_18
    invoke-interface {v1, v0, v4}, Ls1/a/a/a/v0/k/b/p;->b(Ls1/a/a/a/v0/b/e;Ljava/util/List;)V

    .line 80
    :cond_19
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v6

    if-eqz v0, :cond_1a

    invoke-static {v2}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto :goto_f

    :cond_1a
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/e$a;->d:Ls1/a/a/a/v0/d/a/d0/n/e;

    .line 81
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/n/e;->h:Ls1/a/a/a/v0/d/a/d0/h;

    .line 82
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 83
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/c;->o:Ls1/a/a/a/v0/b/a0;

    .line 84
    invoke-interface {v0}, Ls1/a/a/a/v0/b/a0;->q()Ls1/a/a/a/v0/a/g;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/a/g;->f()Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/w0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/e$a;->c:Ls1/a/a/a/v0/l/i;

    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public j()Ls1/a/a/a/v0/b/u0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/e$a;->d:Ls1/a/a/a/v0/d/a/d0/n/e;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/n/e;->h:Ls1/a/a/a/v0/d/a/d0/h;

    .line 3
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 4
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/c;->m:Ls1/a/a/a/v0/b/u0;

    return-object v0
.end method

.method public n()Ls1/a/a/a/v0/b/e;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/e$a;->d:Ls1/a/a/a/v0/d/a/d0/n/e;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/e$a;->d:Ls1/a/a/a/v0/d/a/d0/n/e;

    invoke-virtual {v0}, Ls1/a/a/a/v0/b/h1/b;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name.asString()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
