.class public final Ls1/a/a/a/v0/b/j1/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/d/b/l;


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Ls1/a/a/a/v0/d/b/w/a;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ls1/a/a/a/v0/d/b/w/a;Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/b/j1/a/e;->a:Ljava/lang/Class;

    iput-object p2, p0, Ls1/a/a/a/v0/b/j1/a/e;->b:Ls1/a/a/a/v0/d/b/w/a;

    return-void
.end method

.method public static final d(Ljava/lang/Class;)Ls1/a/a/a/v0/b/j1/a/e;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ls1/a/a/a/v0/b/j1/a/e;"
        }
    .end annotation

    const-string v0, "klass"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Ls1/a/a/a/v0/d/b/w/b;

    invoke-direct {v1}, Ls1/a/a/a/v0/d/b/w/b;-><init>()V

    .line 2
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visitor"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    const-string v6, "annotation"

    .line 4
    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {v5}, Le/q/f/a/d/a;->B0(Ljava/lang/annotation/Annotation;)Ls1/a/c;

    move-result-object v6

    invoke-static {v6}, Le/q/f/a/d/a;->O0(Ls1/a/c;)Ljava/lang/Class;

    move-result-object v6

    .line 6
    invoke-static {v6}, Ls1/a/a/a/v0/b/j1/b/b;->b(Ljava/lang/Class;)Ls1/a/a/a/v0/f/a;

    move-result-object v7

    new-instance v8, Ls1/a/a/a/v0/b/j1/a/b;

    invoke-direct {v8, v5}, Ls1/a/a/a/v0/b/j1/a/b;-><init>(Ljava/lang/annotation/Annotation;)V

    invoke-interface {v1, v7, v8}, Ls1/a/a/a/v0/d/b/l$c;->a(Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/b/r0;)Ls1/a/a/a/v0/d/b/l$a;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 7
    invoke-static {v7, v5, v6}, Ls1/a/a/a/v0/b/j1/a/c;->c(Ls1/a/a/a/v0/d/b/l$a;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Ls1/a/a/a/v0/b/j1/a/e;

    .line 9
    iget-object v2, v1, Ls1/a/a/a/v0/d/b/w/b;->i:Ls1/a/a/a/v0/d/b/w/a$a;

    const/4 v4, 0x0

    if-eqz v2, :cond_9

    iget-object v2, v1, Ls1/a/a/a/v0/d/b/w/b;->a:[I

    if-nez v2, :cond_2

    goto :goto_4

    .line 10
    :cond_2
    new-instance v7, Ls1/a/a/a/v0/e/a0/b/f;

    iget-object v2, v1, Ls1/a/a/a/v0/d/b/w/b;->a:[I

    iget v5, v1, Ls1/a/a/a/v0/d/b/w/b;->d:I

    and-int/lit8 v5, v5, 0x8

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    move v5, v6

    goto :goto_1

    :cond_3
    move v5, v3

    :goto_1
    invoke-direct {v7, v2, v5}, Ls1/a/a/a/v0/e/a0/b/f;-><init>([IZ)V

    .line 11
    invoke-virtual {v7}, Ls1/a/a/a/v0/e/a0/b/f;->b()Z

    move-result v2

    if-nez v2, :cond_4

    .line 12
    iget-object v2, v1, Ls1/a/a/a/v0/d/b/w/b;->f:[Ljava/lang/String;

    iput-object v2, v1, Ls1/a/a/a/v0/d/b/w/b;->h:[Ljava/lang/String;

    .line 13
    iput-object v4, v1, Ls1/a/a/a/v0/d/b/w/b;->f:[Ljava/lang/String;

    goto :goto_2

    .line 14
    :cond_4
    iget-object v2, v1, Ls1/a/a/a/v0/d/b/w/b;->i:Ls1/a/a/a/v0/d/b/w/a$a;

    sget-object v5, Ls1/a/a/a/v0/d/b/w/a$a;->c:Ls1/a/a/a/v0/d/b/w/a$a;

    if-eq v2, v5, :cond_5

    sget-object v5, Ls1/a/a/a/v0/d/b/w/a$a;->d:Ls1/a/a/a/v0/d/b/w/a$a;

    if-eq v2, v5, :cond_5

    sget-object v5, Ls1/a/a/a/v0/d/b/w/a$a;->g:Ls1/a/a/a/v0/d/b/w/a$a;

    if-ne v2, v5, :cond_6

    :cond_5
    move v3, v6

    :cond_6
    if-eqz v3, :cond_7

    .line 15
    iget-object v2, v1, Ls1/a/a/a/v0/d/b/w/b;->f:[Ljava/lang/String;

    if-nez v2, :cond_7

    goto :goto_4

    .line 16
    :cond_7
    :goto_2
    new-instance v2, Ls1/a/a/a/v0/d/b/w/a;

    iget-object v6, v1, Ls1/a/a/a/v0/d/b/w/b;->i:Ls1/a/a/a/v0/d/b/w/a$a;

    iget-object v3, v1, Ls1/a/a/a/v0/d/b/w/b;->b:Ls1/a/a/a/v0/e/a0/b/c;

    if-eqz v3, :cond_8

    goto :goto_3

    :cond_8
    sget-object v3, Ls1/a/a/a/v0/e/a0/b/c;->f:Ls1/a/a/a/v0/e/a0/b/c;

    :goto_3
    move-object v8, v3

    iget-object v9, v1, Ls1/a/a/a/v0/d/b/w/b;->f:[Ljava/lang/String;

    iget-object v10, v1, Ls1/a/a/a/v0/d/b/w/b;->h:[Ljava/lang/String;

    iget-object v11, v1, Ls1/a/a/a/v0/d/b/w/b;->g:[Ljava/lang/String;

    iget-object v12, v1, Ls1/a/a/a/v0/d/b/w/b;->c:Ljava/lang/String;

    iget v13, v1, Ls1/a/a/a/v0/d/b/w/b;->d:I

    iget-object v14, v1, Ls1/a/a/a/v0/d/b/w/b;->e:Ljava/lang/String;

    move-object v5, v2

    invoke-direct/range {v5 .. v14}, Ls1/a/a/a/v0/d/b/w/a;-><init>(Ls1/a/a/a/v0/d/b/w/a$a;Ls1/a/a/a/v0/e/a0/b/f;Ls1/a/a/a/v0/e/a0/b/c;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_5

    :cond_9
    :goto_4
    move-object v2, v4

    :goto_5
    if-eqz v2, :cond_a

    const-string v1, "headerReader.createHeader() ?: return null"

    .line 17
    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, v2, v4}, Ls1/a/a/a/v0/b/j1/a/e;-><init>(Ljava/lang/Class;Ls1/a/a/a/v0/d/b/w/a;Ls1/z/c/f;)V

    return-object v0

    :cond_a
    return-object v4
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/d/b/l$d;[B)V
    .locals 21

    move-object/from16 v0, p1

    const-string v1, "visitor"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Ls1/a/a/a/v0/b/j1/a/e;->a:Ljava/lang/Class;

    const-string v3, "klass"

    .line 2
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "memberVisitor"

    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    const-string v6, "sb.toString()"

    const-string v7, "("

    const-string v8, "annotation"

    if-ge v5, v4, :cond_5

    aget-object v9, v3, v5

    const-string v10, "method"

    .line 4
    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v11

    const-string v12, "Name.identifier(method.name)"

    invoke-static {v11, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {v9, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v12, v7

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_0

    aget-object v14, v7, v13

    .line 9
    invoke-static {v14}, Ls1/a/a/a/v0/b/j1/b/b;->c(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_0
    const-string v7, ")"

    .line 10
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Ls1/a/a/a/v0/b/j1/b/b;->c(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    move-object v6, v0

    check-cast v6, Ls1/a/a/a/v0/d/b/b;

    invoke-virtual {v6, v11, v7}, Ls1/a/a/a/v0/d/b/b;->b(Ls1/a/a/a/v0/f/e;Ljava/lang/String;)Ls1/a/a/a/v0/d/b/l$e;

    move-result-object v6

    .line 14
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v7

    array-length v10, v7

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_1

    aget-object v12, v7, v11

    .line 15
    invoke-static {v12, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v12}, Ls1/a/a/a/v0/b/j1/a/c;->b(Ls1/a/a/a/v0/d/b/l$c;Ljava/lang/annotation/Annotation;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 16
    :cond_1
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v7

    const-string v9, "method.parameterAnnotations"

    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v9, v7

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v9, :cond_4

    aget-object v11, v7, v10

    .line 17
    array-length v12, v11

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v12, :cond_3

    aget-object v14, v11, v13

    .line 18
    invoke-static {v14}, Le/q/f/a/d/a;->B0(Ljava/lang/annotation/Annotation;)Ls1/a/c;

    move-result-object v15

    invoke-static {v15}, Le/q/f/a/d/a;->O0(Ls1/a/c;)Ljava/lang/Class;

    move-result-object v15

    .line 19
    invoke-static {v15}, Ls1/a/a/a/v0/b/j1/b/b;->b(Ljava/lang/Class;)Ls1/a/a/a/v0/f/a;

    move-result-object v1

    move-object/from16 p2, v3

    new-instance v3, Ls1/a/a/a/v0/b/j1/a/b;

    invoke-static {v14, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v14}, Ls1/a/a/a/v0/b/j1/a/b;-><init>(Ljava/lang/annotation/Annotation;)V

    move/from16 v16, v4

    move-object v4, v6

    check-cast v4, Ls1/a/a/a/v0/d/b/b$a;

    invoke-virtual {v4, v10, v1, v3}, Ls1/a/a/a/v0/d/b/b$a;->c(ILs1/a/a/a/v0/f/a;Ls1/a/a/a/v0/b/r0;)Ls1/a/a/a/v0/d/b/l$a;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 20
    invoke-static {v1, v14, v15}, Ls1/a/a/a/v0/b/j1/a/c;->c(Ls1/a/a/a/v0/d/b/l$a;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :cond_2
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move/from16 v4, v16

    goto :goto_4

    :cond_3
    move-object/from16 p2, v3

    move/from16 v16, v4

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p0

    goto :goto_3

    :cond_4
    move-object/from16 p2, v3

    move/from16 v16, v4

    .line 21
    check-cast v6, Ls1/a/a/a/v0/d/b/b$b;

    invoke-virtual {v6}, Ls1/a/a/a/v0/d/b/b$b;->b()V

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 22
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_c

    aget-object v5, v1, v4

    const-string v9, "<init>"

    .line 23
    invoke-static {v9}, Ls1/a/a/a/v0/f/e;->h(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v9

    const-string v10, "Name.special(\"<init>\")"

    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "constructor"

    invoke-static {v5, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-static {v5, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    array-length v12, v11

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v12, :cond_6

    aget-object v14, v11, v13

    .line 28
    invoke-static {v14}, Ls1/a/a/a/v0/b/j1/b/b;->c(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_6
    const-string v11, ")V"

    .line 29
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    move-object v11, v0

    check-cast v11, Ls1/a/a/a/v0/d/b/b;

    invoke-virtual {v11, v9, v10}, Ls1/a/a/a/v0/d/b/b;->b(Ls1/a/a/a/v0/f/e;Ljava/lang/String;)Ls1/a/a/a/v0/d/b/l$e;

    move-result-object v9

    .line 32
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v11, :cond_7

    aget-object v13, v10, v12

    .line 33
    invoke-static {v13, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v13}, Ls1/a/a/a/v0/b/j1/a/c;->b(Ls1/a/a/a/v0/d/b/l$c;Ljava/lang/annotation/Annotation;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 34
    :cond_7
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v10

    const-string v11, "parameterAnnotations"

    .line 35
    invoke-static {v10, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v11, v10

    const/4 v12, 0x1

    if-nez v11, :cond_8

    move v11, v12

    goto :goto_8

    :cond_8
    const/4 v11, 0x0

    :goto_8
    xor-int/2addr v11, v12

    if-eqz v11, :cond_b

    .line 36
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    array-length v11, v10

    sub-int/2addr v5, v11

    .line 37
    array-length v11, v10

    const/4 v12, 0x0

    :goto_9
    if-ge v12, v11, :cond_b

    aget-object v13, v10, v12

    .line 38
    array-length v14, v13

    const/4 v15, 0x0

    :goto_a
    if-ge v15, v14, :cond_a

    move-object/from16 p2, v1

    aget-object v1, v13, v15

    .line 39
    invoke-static {v1}, Le/q/f/a/d/a;->B0(Ljava/lang/annotation/Annotation;)Ls1/a/c;

    move-result-object v16

    move/from16 v17, v3

    invoke-static/range {v16 .. v16}, Le/q/f/a/d/a;->O0(Ls1/a/c;)Ljava/lang/Class;

    move-result-object v3

    move-object/from16 v16, v6

    add-int v6, v12, v5

    move/from16 v18, v5

    .line 40
    invoke-static {v3}, Ls1/a/a/a/v0/b/j1/b/b;->b(Ljava/lang/Class;)Ls1/a/a/a/v0/f/a;

    move-result-object v5

    move-object/from16 v19, v7

    new-instance v7, Ls1/a/a/a/v0/b/j1/a/b;

    invoke-static {v1, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v1}, Ls1/a/a/a/v0/b/j1/a/b;-><init>(Ljava/lang/annotation/Annotation;)V

    move-object/from16 v20, v10

    .line 41
    move-object v10, v9

    check-cast v10, Ls1/a/a/a/v0/d/b/b$a;

    invoke-virtual {v10, v6, v5, v7}, Ls1/a/a/a/v0/d/b/b$a;->c(ILs1/a/a/a/v0/f/a;Ls1/a/a/a/v0/b/r0;)Ls1/a/a/a/v0/d/b/l$a;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 42
    invoke-static {v5, v1, v3}, Ls1/a/a/a/v0/b/j1/a/c;->c(Ls1/a/a/a/v0/d/b/l$a;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :cond_9
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p2

    move-object/from16 v6, v16

    move/from16 v3, v17

    move/from16 v5, v18

    move-object/from16 v7, v19

    move-object/from16 v10, v20

    goto :goto_a

    :cond_a
    move-object/from16 p2, v1

    move/from16 v17, v3

    move/from16 v18, v5

    move-object/from16 v16, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v10

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_b
    move-object/from16 p2, v1

    move/from16 v17, v3

    move-object/from16 v16, v6

    move-object/from16 v19, v7

    .line 43
    check-cast v9, Ls1/a/a/a/v0/d/b/b$b;

    invoke-virtual {v9}, Ls1/a/a/a/v0/d/b/b$b;->b()V

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p2

    move-object/from16 v6, v16

    move/from16 v3, v17

    move-object/from16 v7, v19

    goto/16 :goto_5

    .line 44
    :cond_c
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_e

    aget-object v4, v1, v3

    const-string v5, "field"

    .line 45
    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v6

    const-string v7, "Name.identifier(field.name)"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Ls1/a/a/a/v0/b/j1/b/b;->c(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    .line 48
    move-object v9, v0

    check-cast v9, Ls1/a/a/a/v0/d/b/b;

    invoke-virtual {v9, v6, v5, v7}, Ls1/a/a/a/v0/d/b/b;->a(Ls1/a/a/a/v0/f/e;Ljava/lang/String;Ljava/lang/Object;)Ls1/a/a/a/v0/d/b/l$c;

    move-result-object v5

    .line 49
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v4

    array-length v6, v4

    const/4 v7, 0x0

    :goto_c
    if-ge v7, v6, :cond_d

    aget-object v9, v4, v7

    .line 50
    invoke-static {v9, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v9}, Ls1/a/a/a/v0/b/j1/a/c;->b(Ls1/a/a/a/v0/d/b/l$c;Ljava/lang/annotation/Annotation;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 51
    :cond_d
    check-cast v5, Ls1/a/a/a/v0/d/b/b$b;

    invoke-virtual {v5}, Ls1/a/a/a/v0/d/b/b$b;->b()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_e
    return-void
.end method

.method public b()Ls1/a/a/a/v0/d/b/w/a;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/a/e;->b:Ls1/a/a/a/v0/d/b/w/a;

    return-object v0
.end method

.method public c(Ls1/a/a/a/v0/d/b/l$c;[B)V
    .locals 7

    const-string p2, "visitor"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/a/e;->a:Ljava/lang/Class;

    const-string v1, "klass"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    const-string v3, "annotation"

    .line 4
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {v2}, Le/q/f/a/d/a;->B0(Ljava/lang/annotation/Annotation;)Ls1/a/c;

    move-result-object v3

    invoke-static {v3}, Le/q/f/a/d/a;->O0(Ls1/a/c;)Ljava/lang/Class;

    move-result-object v3

    .line 6
    invoke-static {v3}, Ls1/a/a/a/v0/b/j1/b/b;->b(Ljava/lang/Class;)Ls1/a/a/a/v0/f/a;

    move-result-object v4

    new-instance v5, Ls1/a/a/a/v0/b/j1/a/b;

    invoke-direct {v5, v2}, Ls1/a/a/a/v0/b/j1/a/b;-><init>(Ljava/lang/annotation/Annotation;)V

    move-object v6, p1

    check-cast v6, Ls1/a/a/a/v0/d/b/a$c;

    invoke-virtual {v6, v4, v5}, Ls1/a/a/a/v0/d/b/a$c;->a(Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/b/r0;)Ls1/a/a/a/v0/d/b/l$a;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 7
    invoke-static {v4, v2, v3}, Ls1/a/a/a/v0/b/j1/a/c;->c(Ls1/a/a/a/v0/d/b/l$a;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ls1/a/a/a/v0/b/j1/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/a/e;->a:Ljava/lang/Class;

    check-cast p1, Ls1/a/a/a/v0/b/j1/a/e;

    iget-object p1, p1, Ls1/a/a/a/v0/b/j1/a/e;->a:Ljava/lang/Class;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getClassId()Ls1/a/a/a/v0/f/a;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/a/e;->a:Ljava/lang/Class;

    invoke-static {v0}, Ls1/a/a/a/v0/b/j1/b/b;->b(Ljava/lang/Class;)Ls1/a/a/a/v0/f/a;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ls1/a/a/a/v0/b/j1/a/e;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "klass.name"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v1, v2, v3, v4, v5}, Ls1/f0/r;->s(Ljava/lang/String;CCZI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/a/e;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Ls1/a/a/a/v0/b/j1/a/e;

    const-string v2, ": "

    invoke-static {v1, v0, v2}, Le/d/c/a/a;->z0(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Ls1/a/a/a/v0/b/j1/a/e;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
