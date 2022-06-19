.class public final Ls1/a/a/a/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls1/a/a/a/v0/f/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ls1/a/a/a/v0/f/b;

    const-string v1, "kotlin.jvm.JvmStatic"

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Ls1/a/a/a/s0;->a:Ls1/a/a/a/v0/f/b;

    return-void
.end method

.method public static final a(Ljava/lang/Object;)Ls1/a/a/a/b;
    .locals 2

    .line 1
    instance-of v0, p0, Ls1/a/a/a/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Ls1/a/a/a/b;

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    instance-of v0, p0, Ls1/z/c/i;

    if-nez v0, :cond_2

    move-object p0, v1

    :cond_2
    check-cast p0, Ls1/z/c/i;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ls1/z/c/b;->compute()Ls1/a/b;

    move-result-object p0

    goto :goto_1

    :cond_3
    move-object p0, v1

    :goto_1
    instance-of v0, p0, Ls1/a/a/a/b;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, p0

    :goto_2
    move-object v0, v1

    check-cast v0, Ls1/a/a/a/b;

    :goto_3
    return-object v0
.end method

.method public static final b(Ls1/a/a/a/v0/b/f1/a;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/b/f1/a;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$computeAnnotations"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Ls1/a/a/a/v0/b/f1/c;

    .line 5
    invoke-interface {v1}, Ls1/a/a/a/v0/b/f1/c;->getSource()Ls1/a/a/a/v0/b/r0;

    move-result-object v2

    .line 6
    instance-of v3, v2, Ls1/a/a/a/v0/b/j1/a/b;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    check-cast v2, Ls1/a/a/a/v0/b/j1/a/b;

    .line 7
    iget-object v4, v2, Ls1/a/a/a/v0/b/j1/a/b;->b:Ljava/lang/annotation/Annotation;

    goto :goto_1

    .line 8
    :cond_1
    instance-of v3, v2, Ls1/a/a/a/v0/b/j1/a/j$a;

    if-eqz v3, :cond_3

    check-cast v2, Ls1/a/a/a/v0/b/j1/a/j$a;

    .line 9
    iget-object v1, v2, Ls1/a/a/a/v0/b/j1/a/j$a;->b:Ls1/a/a/a/v0/b/j1/b/u;

    .line 10
    instance-of v2, v1, Ls1/a/a/a/v0/b/j1/b/c;

    if-nez v2, :cond_2

    move-object v1, v4

    :cond_2
    check-cast v1, Ls1/a/a/a/v0/b/j1/b/c;

    if-eqz v1, :cond_4

    .line 11
    iget-object v4, v1, Ls1/a/a/a/v0/b/j1/b/c;->a:Ljava/lang/annotation/Annotation;

    goto :goto_1

    .line 12
    :cond_3
    invoke-static {v1}, Ls1/a/a/a/s0;->f(Ls1/a/a/a/v0/b/f1/c;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    :cond_4
    :goto_1
    if-eqz v4, :cond_0

    .line 13
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public static final c(Ljava/lang/Class;Ls1/a/a/a/v0/h/p;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/e/z/a;Ls1/z/b/p;)Ls1/a/a/a/v0/b/a;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Ls1/a/a/a/v0/h/p;",
            "D::",
            "Ls1/a/a/a/v0/b/a;",
            ">(",
            "Ljava/lang/Class<",
            "*>;TM;",
            "Ls1/a/a/a/v0/e/z/c;",
            "Ls1/a/a/a/v0/e/z/e;",
            "Ls1/a/a/a/v0/e/z/a;",
            "Ls1/z/b/p<",
            "-",
            "Ls1/a/a/a/v0/k/b/v;",
            "-TM;+TD;>;)TD;"
        }
    .end annotation

    move-object v0, p1

    move-object/from16 v1, p5

    const-string v2, "moduleAnchor"

    move-object v3, p0

    invoke-static {p0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "proto"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "nameResolver"

    move-object/from16 v5, p2

    invoke-static {v5, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "typeTable"

    move-object/from16 v7, p3

    invoke-static {v7, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "metadataVersion"

    move-object/from16 v9, p4

    invoke-static {v9, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "createDescriptor"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Ls1/a/a/a/j0;->a(Ljava/lang/Class;)Ls1/a/a/a/v0/b/j1/a/i;

    move-result-object v2

    .line 2
    instance-of v3, v0, Ls1/a/a/a/v0/e/i;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Ls1/a/a/a/v0/e/i;

    .line 3
    iget-object v3, v3, Ls1/a/a/a/v0/e/i;->i:Ljava/util/List;

    :goto_0
    move-object v12, v3

    goto :goto_1

    .line 4
    :cond_0
    instance-of v3, v0, Ls1/a/a/a/v0/e/n;

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Ls1/a/a/a/v0/e/n;

    .line 5
    iget-object v3, v3, Ls1/a/a/a/v0/e/n;->i:Ljava/util/List;

    goto :goto_0

    .line 6
    :goto_1
    new-instance v13, Ls1/a/a/a/v0/k/b/l;

    .line 7
    iget-object v4, v2, Ls1/a/a/a/v0/b/j1/a/i;->a:Ls1/a/a/a/v0/k/b/j;

    .line 8
    iget-object v6, v4, Ls1/a/a/a/v0/k/b/j;->c:Ls1/a/a/a/v0/b/a0;

    .line 9
    sget-object v2, Ls1/a/a/a/v0/e/z/g;->c:Ls1/a/a/a/v0/e/z/g$a;

    .line 10
    sget-object v2, Ls1/a/a/a/v0/e/z/g;->b:Ls1/a/a/a/v0/e/z/g;

    sget-object v8, Ls1/a/a/a/v0/e/z/g;->b:Ls1/a/a/a/v0/e/z/g;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v2, "typeParameters"

    .line 11
    invoke-static {v12, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v13

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    .line 12
    invoke-direct/range {v3 .. v12}, Ls1/a/a/a/v0/k/b/l;-><init>(Ls1/a/a/a/v0/k/b/j;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/e/z/g;Ls1/a/a/a/v0/e/z/a;Ls1/a/a/a/v0/k/b/g0/f;Ls1/a/a/a/v0/k/b/c0;Ljava/util/List;)V

    .line 13
    new-instance v2, Ls1/a/a/a/v0/k/b/v;

    invoke-direct {v2, v13}, Ls1/a/a/a/v0/k/b/v;-><init>(Ls1/a/a/a/v0/k/b/l;)V

    invoke-interface {v1, v2, p1}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/b/a;

    return-object v0

    .line 14
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final d(Ls1/a/a/a/v0/b/a;)Ls1/a/a/a/v0/b/n0;
    .locals 1

    const-string v0, "$this$instanceReceiverParameter"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Ls1/a/a/a/v0/b/a;->k0()Ls1/a/a/a/v0/b/n0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ls1/a/a/a/v0/b/l;->b()Ls1/a/a/a/v0/b/k;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Ls1/a/a/a/v0/b/e;

    invoke-interface {p0}, Ls1/a/a/a/v0/b/e;->a0()Ls1/a/a/a/v0/b/n0;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final e(Ljava/lang/ClassLoader;Ls1/a/a/a/v0/f/a;I)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ls1/a/a/a/v0/f/a;",
            "I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls1/a/a/a/v0/a/p/c;->m:Ls1/a/a/a/v0/a/p/c;

    invoke-virtual {p1}, Ls1/a/a/a/v0/f/a;->b()Ls1/a/a/a/v0/f/b;

    move-result-object v1

    invoke-virtual {v1}, Ls1/a/a/a/v0/f/b;->j()Ls1/a/a/a/v0/f/c;

    move-result-object v1

    const-string v2, "kotlinClassId.asSingleFqName().toUnsafe()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/a/p/c;->h(Ls1/a/a/a/v0/f/c;)Ls1/a/a/a/v0/f/a;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ls1/a/a/a/v0/f/a;->h()Ls1/a/a/a/v0/f/b;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/f/b;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javaClassId.packageFqName.asString()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ls1/a/a/a/v0/f/a;->i()Ls1/a/a/a/v0/f/b;

    move-result-object p1

    invoke-virtual {p1}, Ls1/a/a/a/v0/f/b;->b()Ljava/lang/String;

    move-result-object p1

    const-string v1, "javaClassId.relativeClassName.asString()"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "kotlin"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "LongArray"

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class p0, [J

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "FloatArray"

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class p0, [F

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "IntArray"

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class p0, [I

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "Array"

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class p0, [Ljava/lang/Object;

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "DoubleArray"

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class p0, [D

    goto :goto_1

    :sswitch_5
    const-string v1, "ByteArray"

    .line 10
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class p0, [B

    goto :goto_1

    :sswitch_6
    const-string v1, "CharArray"

    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class p0, [C

    goto :goto_1

    :sswitch_7
    const-string v1, "ShortArray"

    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class p0, [S

    goto :goto_1

    :sswitch_8
    const-string v1, "BooleanArray"

    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class p0, [Z

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0x2e

    .line 14
    invoke-static {v0, v1}, Le/d/c/a/a;->D(Ljava/lang/String;C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x24

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {p1, v1, v2, v3, v4}, Ls1/f0/r;->s(Ljava/lang/String;CCZI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-lez p2, :cond_2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-static {v1, p2}, Ls1/f0/r;->r(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x4c

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3b

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    :cond_2
    invoke-static {p0, p1}, Le/q/f/a/d/a;->m3(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    :goto_1
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x35c13ccf -> :sswitch_8
        -0x2d7eb8a3 -> :sswitch_7
        -0x2d0e4b7d -> :sswitch_6
        -0x47759ef -> :sswitch_5
        0x15568e8 -> :sswitch_4
        0x3c98239 -> :sswitch_3
        0x23deebca -> :sswitch_2
        0x388e557d -> :sswitch_1
        0x7d6d891d -> :sswitch_0
    .end sparse-switch
.end method

.method public static final f(Ls1/a/a/a/v0/b/f1/c;)Ljava/lang/annotation/Annotation;
    .locals 7

    .line 1
    invoke-static {p0}, Ls1/a/a/a/v0/j/v/b;->e(Ls1/a/a/a/v0/b/f1/c;)Ls1/a/a/a/v0/b/e;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ls1/a/a/a/s0;->g(Ls1/a/a/a/v0/b/e;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Ljava/lang/Class;

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_1
    if-eqz v0, :cond_6

    .line 2
    invoke-interface {p0}, Ls1/a/a/a/v0/b/f1/c;->b()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/f/e;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/j/t/g;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const-string v6, "annotationClass.classLoader"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v5}, Ls1/a/a/a/s0;->h(Ls1/a/a/a/v0/j/t/g;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v4}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v4

    .line 7
    new-instance v5, Ls1/k;

    invoke-direct {v5, v4, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    move-object v5, v1

    :goto_2
    if-eqz v5, :cond_2

    .line 8
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_4
    invoke-static {v2}, Ls1/u/i;->V0(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 13
    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    .line 14
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 15
    :cond_5
    invoke-static {v0, p0, v2}, Le/q/f/a/d/a;->Y(Ljava/lang/Class;Ljava/util/Map;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    .line 16
    check-cast p0, Ljava/lang/annotation/Annotation;

    return-object p0

    :cond_6
    return-object v1
.end method

.method public static final g(Ls1/a/a/a/v0/b/e;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/b/e;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-string v0, "$this$toJavaClass"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Ls1/a/a/a/v0/b/n;->getSource()Ls1/a/a/a/v0/b/r0;

    move-result-object v0

    const-string v1, "source"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v1, v0, Ls1/a/a/a/v0/d/b/n;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ls1/a/a/a/v0/d/b/n;

    .line 4
    iget-object p0, v0, Ls1/a/a/a/v0/d/b/n;->b:Ls1/a/a/a/v0/d/b/l;

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.runtime.components.ReflectKotlinClass"

    .line 5
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Ls1/a/a/a/v0/b/j1/a/e;

    .line 6
    iget-object p0, p0, Ls1/a/a/a/v0/b/j1/a/e;->a:Ljava/lang/Class;

    goto :goto_0

    .line 7
    :cond_0
    instance-of v1, v0, Ls1/a/a/a/v0/b/j1/a/j$a;

    if-eqz v1, :cond_1

    .line 8
    check-cast v0, Ls1/a/a/a/v0/b/j1/a/j$a;

    .line 9
    iget-object p0, v0, Ls1/a/a/a/v0/b/j1/a/j$a;->b:Ls1/a/a/a/v0/b/j1/b/u;

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.runtime.structure.ReflectJavaClass"

    .line 10
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Ls1/a/a/a/v0/b/j1/b/q;

    .line 11
    iget-object p0, p0, Ls1/a/a/a/v0/b/j1/b/q;->a:Ljava/lang/Class;

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {p0}, Ls1/a/a/a/v0/j/v/b;->g(Ls1/a/a/a/v0/b/h;)Ls1/a/a/a/v0/f/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ls1/a/a/a/v0/b/j1/b/b;->e(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Ls1/a/a/a/s0;->e(Ljava/lang/ClassLoader;Ls1/a/a/a/v0/f/a;I)Ljava/lang/Class;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final h(Ls1/a/a/a/v0/j/t/g;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/j/t/g<",
            "*>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ls1/a/a/a/v0/j/t/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Ls1/a/a/a/v0/j/t/a;

    .line 2
    iget-object p0, p0, Ls1/a/a/a/v0/j/t/g;->a:Ljava/lang/Object;

    .line 3
    check-cast p0, Ls1/a/a/a/v0/b/f1/c;

    invoke-static {p0}, Ls1/a/a/a/s0;->f(Ls1/a/a/a/v0/b/f1/c;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    goto/16 :goto_1

    .line 4
    :cond_0
    instance-of v0, p0, Ls1/a/a/a/v0/j/t/b;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p0, Ls1/a/a/a/v0/j/t/b;

    .line 5
    iget-object p0, p0, Ls1/a/a/a/v0/j/t/g;->a:Ljava/lang/Object;

    .line 6
    check-cast p0, Ljava/lang/Iterable;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 9
    check-cast v1, Ls1/a/a/a/v0/j/t/g;

    .line 10
    invoke-static {v1, p1}, Ls1/a/a/a/s0;->h(Ls1/a/a/a/v0/j/t/g;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-array p0, v2, [Ljava/lang/Object;

    .line 11
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string p0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 12
    :cond_2
    instance-of v0, p0, Ls1/a/a/a/v0/j/t/k;

    if-eqz v0, :cond_3

    .line 13
    check-cast p0, Ls1/a/a/a/v0/j/t/k;

    .line 14
    iget-object p0, p0, Ls1/a/a/a/v0/j/t/g;->a:Ljava/lang/Object;

    .line 15
    check-cast p0, Ls1/k;

    .line 16
    iget-object v0, p0, Ls1/k;->a:Ljava/lang/Object;

    .line 17
    check-cast v0, Ls1/a/a/a/v0/f/a;

    .line 18
    iget-object p0, p0, Ls1/k;->b:Ljava/lang/Object;

    .line 19
    check-cast p0, Ls1/a/a/a/v0/f/e;

    .line 20
    invoke-static {p1, v0, v2}, Ls1/a/a/a/s0;->e(Ljava/lang/ClassLoader;Ls1/a/a/a/v0/f/a;I)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 21
    invoke-virtual {p0}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object p0

    .line 22
    invoke-static {p1, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    goto :goto_1

    .line 23
    :cond_3
    instance-of v0, p0, Ls1/a/a/a/v0/j/t/s;

    if-eqz v0, :cond_7

    check-cast p0, Ls1/a/a/a/v0/j/t/s;

    .line 24
    iget-object p0, p0, Ls1/a/a/a/v0/j/t/g;->a:Ljava/lang/Object;

    .line 25
    check-cast p0, Ls1/a/a/a/v0/j/t/s$a;

    .line 26
    instance-of v0, p0, Ls1/a/a/a/v0/j/t/s$a$b;

    if-eqz v0, :cond_4

    .line 27
    check-cast p0, Ls1/a/a/a/v0/j/t/s$a$b;

    .line 28
    iget-object p0, p0, Ls1/a/a/a/v0/j/t/s$a$b;->a:Ls1/a/a/a/v0/j/t/f;

    .line 29
    iget-object v0, p0, Ls1/a/a/a/v0/j/t/f;->a:Ls1/a/a/a/v0/f/a;

    .line 30
    iget p0, p0, Ls1/a/a/a/v0/j/t/f;->b:I

    .line 31
    invoke-static {p1, v0, p0}, Ls1/a/a/a/s0;->e(Ljava/lang/ClassLoader;Ls1/a/a/a/v0/f/a;I)Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    .line 32
    :cond_4
    instance-of p1, p0, Ls1/a/a/a/v0/j/t/s$a$a;

    if-eqz p1, :cond_6

    .line 33
    check-cast p0, Ls1/a/a/a/v0/j/t/s$a$a;

    .line 34
    iget-object p0, p0, Ls1/a/a/a/v0/j/t/s$a$a;->a:Ls1/a/a/a/v0/m/e0;

    .line 35
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object p0

    invoke-interface {p0}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object p0

    instance-of p1, p0, Ls1/a/a/a/v0/b/e;

    if-nez p1, :cond_5

    move-object p0, v1

    :cond_5
    check-cast p0, Ls1/a/a/a/v0/b/e;

    if-eqz p0, :cond_a

    invoke-static {p0}, Ls1/a/a/a/s0;->g(Ls1/a/a/a/v0/b/e;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    :cond_6
    new-instance p0, Ls1/i;

    invoke-direct {p0}, Ls1/i;-><init>()V

    throw p0

    .line 36
    :cond_7
    instance-of p1, p0, Ls1/a/a/a/v0/j/t/l;

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    instance-of p1, p0, Ls1/a/a/a/v0/j/t/u;

    if-eqz p1, :cond_9

    goto :goto_1

    .line 37
    :cond_9
    invoke-virtual {p0}, Ls1/a/a/a/v0/j/t/g;->b()Ljava/lang/Object;

    move-result-object v1

    :cond_a
    :goto_1
    return-object v1
.end method
