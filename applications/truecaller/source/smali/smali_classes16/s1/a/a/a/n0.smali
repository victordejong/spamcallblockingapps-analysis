.class public Ls1/a/a/a/n0;
.super Ls1/z/c/e0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls1/z/c/e0;-><init>()V

    return-void
.end method

.method public static j(Ls1/z/c/b;)Ls1/a/a/a/n;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/z/c/b;->getOwner()Ls1/a/e;

    move-result-object p0

    .line 2
    instance-of v0, p0, Ls1/a/a/a/n;

    if-eqz v0, :cond_0

    check-cast p0, Ls1/a/a/a/n;

    goto :goto_0

    :cond_0
    sget-object p0, Ls1/a/a/a/d;->c:Ls1/a/a/a/d;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public a(Ls1/z/c/i;)Ls1/a/f;
    .locals 7

    .line 1
    new-instance v6, Ls1/a/a/a/b;

    invoke-static {p1}, Ls1/a/a/a/n0;->j(Ls1/z/c/b;)Ls1/a/a/a/n;

    move-result-object v1

    invoke-virtual {p1}, Ls1/z/c/b;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ls1/z/c/b;->getSignature()Ljava/lang/String;

    move-result-object v3

    .line 2
    iget-object v5, p1, Ls1/z/c/b;->b:Ljava/lang/Object;

    const-string p1, "container"

    .line 3
    invoke-static {v1, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "name"

    invoke-static {v2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "signature"

    invoke-static {v3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, v6

    .line 4
    invoke-direct/range {v0 .. v5}, Ls1/a/a/a/b;-><init>(Ls1/a/a/a/n;Ljava/lang/String;Ljava/lang/String;Ls1/a/a/a/v0/b/v;Ljava/lang/Object;)V

    return-object v6
.end method

.method public b(Ljava/lang/Class;)Ls1/a/c;
    .locals 9

    .line 1
    sget-object v0, Ls1/a/a/a/k;->a:Ls1/a/a/a/w0/b;

    const-string v0, "jClass"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Ls1/a/a/a/k;->a:Ls1/a/a/a/w0/b;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 6
    iget-object v1, v1, Ls1/a/a/a/w0/b;->a:Ls1/a/a/a/w0/d;

    .line 7
    iget-object v1, v1, Ls1/a/a/a/w0/d;->a:Ls1/a/a/a/w0/c;

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ls1/a/a/a/w0/c;->a(J)Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Ls1/a/a/a/w0/a;

    if-nez v1, :cond_0

    .line 9
    sget-object v1, Ls1/a/a/a/w0/a;->d:Ls1/a/a/a/w0/a;

    :cond_0
    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 10
    iget v3, v1, Ls1/a/a/a/w0/a;->c:I

    if-lez v3, :cond_2

    .line 11
    iget-object v3, v1, Ls1/a/a/a/w0/a;->a:Ljava/lang/Object;

    check-cast v3, Ls1/a/a/a/w0/e;

    .line 12
    iget-object v4, v3, Ls1/a/a/a/w0/e;->a:Ljava/lang/Object;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 13
    iget-object v1, v3, Ls1/a/a/a/w0/e;->b:Ljava/lang/Object;

    goto :goto_1

    .line 14
    :cond_1
    iget-object v1, v1, Ls1/a/a/a/w0/a;->b:Ls1/a/a/a/w0/a;

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 15
    :goto_1
    instance-of v3, v1, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_4

    .line 16
    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/a;

    if-eqz v1, :cond_3

    .line 17
    iget-object v2, v1, Ls1/a/a/a/a;->d:Ljava/lang/Class;

    .line 18
    :cond_3
    invoke-static {v2, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    :cond_4
    if-eqz v1, :cond_8

    .line 19
    move-object v3, v1

    check-cast v3, [Ljava/lang/ref/WeakReference;

    .line 20
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_2
    if-ge v6, v4, :cond_7

    aget-object v7, v3, v6

    .line 21
    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls1/a/a/a/a;

    if-eqz v7, :cond_5

    .line 22
    iget-object v8, v7, Ls1/a/a/a/a;->d:Ljava/lang/Class;

    goto :goto_3

    :cond_5
    move-object v8, v2

    .line 23
    :goto_3
    invoke-static {v8, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v1, v7

    goto :goto_4

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 24
    :cond_7
    move-object v2, v1

    check-cast v2, [Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v3, v2, 0x1

    .line 25
    new-array v3, v3, [Ljava/lang/ref/WeakReference;

    .line 26
    invoke-static {v1, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    new-instance v1, Ls1/a/a/a/a;

    invoke-direct {v1, p1}, Ls1/a/a/a/a;-><init>(Ljava/lang/Class;)V

    .line 28
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    aput-object p1, v3, v2

    .line 29
    sget-object p1, Ls1/a/a/a/k;->a:Ls1/a/a/a/w0/b;

    invoke-virtual {p1, v0, v3}, Ls1/a/a/a/w0/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ls1/a/a/a/w0/b;

    move-result-object p1

    const-string v0, "K_CLASS_CACHE.plus(name, newArray)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Ls1/a/a/a/k;->a:Ls1/a/a/a/w0/b;

    goto :goto_4

    .line 30
    :cond_8
    new-instance v1, Ls1/a/a/a/a;

    invoke-direct {v1, p1}, Ls1/a/a/a/a;-><init>(Ljava/lang/Class;)V

    .line 31
    sget-object p1, Ls1/a/a/a/k;->a:Ls1/a/a/a/w0/b;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v2}, Ls1/a/a/a/w0/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ls1/a/a/a/w0/b;

    move-result-object p1

    const-string v0, "K_CLASS_CACHE.plus(name, WeakReference(newKClass))"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Ls1/a/a/a/k;->a:Ls1/a/a/a/w0/b;

    :goto_4
    return-object v1
.end method

.method public c(Ljava/lang/Class;Ljava/lang/String;)Ls1/a/e;
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/u;

    invoke-direct {v0, p1, p2}, Ls1/a/a/a/u;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method public d(Ls1/z/c/n;)Ls1/a/g;
    .locals 4

    .line 1
    new-instance v0, Ls1/a/a/a/r;

    invoke-static {p1}, Ls1/a/a/a/n0;->j(Ls1/z/c/b;)Ls1/a/a/a/n;

    move-result-object v1

    .line 2
    iget-object v2, p1, Ls1/z/c/b;->d:Ljava/lang/String;

    .line 3
    iget-object v3, p1, Ls1/z/c/b;->e:Ljava/lang/String;

    .line 4
    iget-object p1, p1, Ls1/z/c/b;->b:Ljava/lang/Object;

    .line 5
    invoke-direct {v0, v1, v2, v3, p1}, Ls1/a/a/a/r;-><init>(Ls1/a/a/a/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public e(Ls1/z/c/p;)Ls1/a/h;
    .locals 4

    .line 1
    new-instance v0, Ls1/a/a/a/s;

    invoke-static {p1}, Ls1/a/a/a/n0;->j(Ls1/z/c/b;)Ls1/a/a/a/n;

    move-result-object v1

    .line 2
    iget-object v2, p1, Ls1/z/c/b;->d:Ljava/lang/String;

    .line 3
    iget-object v3, p1, Ls1/z/c/b;->e:Ljava/lang/String;

    .line 4
    iget-object p1, p1, Ls1/z/c/b;->b:Ljava/lang/Object;

    .line 5
    invoke-direct {v0, v1, v2, v3, p1}, Ls1/a/a/a/s;-><init>(Ls1/a/a/a/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public f(Ls1/z/c/t;)Ls1/a/j;
    .locals 4

    .line 1
    new-instance v0, Ls1/a/a/a/w;

    invoke-static {p1}, Ls1/a/a/a/n0;->j(Ls1/z/c/b;)Ls1/a/a/a/n;

    move-result-object v1

    .line 2
    iget-object v2, p1, Ls1/z/c/b;->d:Ljava/lang/String;

    .line 3
    iget-object v3, p1, Ls1/z/c/b;->e:Ljava/lang/String;

    .line 4
    iget-object p1, p1, Ls1/z/c/b;->b:Ljava/lang/Object;

    .line 5
    invoke-direct {v0, v1, v2, v3, p1}, Ls1/a/a/a/w;-><init>(Ls1/a/a/a/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public g(Ls1/z/c/v;)Ls1/a/k;
    .locals 4

    .line 1
    new-instance v0, Ls1/a/a/a/x;

    invoke-static {p1}, Ls1/a/a/a/n0;->j(Ls1/z/c/b;)Ls1/a/a/a/n;

    move-result-object v1

    invoke-virtual {p1}, Ls1/z/c/b;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ls1/z/c/b;->getSignature()Ljava/lang/String;

    move-result-object v3

    .line 2
    iget-object p1, p1, Ls1/z/c/b;->b:Ljava/lang/Object;

    .line 3
    invoke-direct {v0, v1, v2, v3, p1}, Ls1/a/a/a/x;-><init>(Ls1/a/a/a/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public h(Ls1/z/c/h;)Ljava/lang/String;
    .locals 13

    const-string v0, "$this$reflect"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lkotlin/Metadata;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lkotlin/Metadata;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3
    invoke-interface {v0}, Lkotlin/Metadata;->d1()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_3

    .line 4
    invoke-interface {v0}, Lkotlin/Metadata;->d2()[Ljava/lang/String;

    move-result-object v3

    .line 5
    sget-object v6, Ls1/a/a/a/v0/e/a0/b/h;->a:Ls1/a/a/a/v0/h/f;

    const-string v6, "data"

    invoke-static {v2, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "strings"

    invoke-static {v3, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-static {v2}, Ls1/a/a/a/v0/e/a0/b/a;->b([Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 7
    new-instance v9, Ls1/a/a/a/v0/e/a0/b/g;

    sget-object v2, Ls1/a/a/a/v0/e/a0/b/h;->a:Ls1/a/a/a/v0/h/f;

    .line 8
    sget-object v7, Ls1/a/a/a/v0/e/a0/a$e;->h:Ls1/a/a/a/v0/h/r;

    check-cast v7, Ls1/a/a/a/v0/h/b;

    invoke-virtual {v7, v6, v2}, Ls1/a/a/a/v0/h/b;->c(Ljava/io/InputStream;Ls1/a/a/a/v0/h/f;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls1/a/a/a/v0/e/a0/a$e;

    const-string v8, "JvmProtoBuf.StringTableT\u2026this, EXTENSION_REGISTRY)"

    .line 9
    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v7, v3}, Ls1/a/a/a/v0/e/a0/b/g;-><init>(Ls1/a/a/a/v0/e/a0/a$e;[Ljava/lang/String;)V

    .line 10
    sget-object v3, Ls1/a/a/a/v0/e/i;->s:Ls1/a/a/a/v0/h/r;

    check-cast v3, Ls1/a/a/a/v0/h/b;

    .line 11
    invoke-virtual {v3, v6, v2}, Ls1/a/a/a/v0/h/b;->d(Ljava/io/InputStream;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object v2

    invoke-virtual {v3, v2}, Ls1/a/a/a/v0/h/b;->b(Ls1/a/a/a/v0/h/p;)Ls1/a/a/a/v0/h/p;

    .line 12
    move-object v8, v2

    check-cast v8, Ls1/a/a/a/v0/e/i;

    .line 13
    new-instance v11, Ls1/a/a/a/v0/e/a0/b/f;

    .line 14
    invoke-interface {v0}, Lkotlin/Metadata;->mv()[I

    move-result-object v2

    .line 15
    invoke-interface {v0}, Lkotlin/Metadata;->xi()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v4, v5

    .line 16
    :goto_2
    invoke-direct {v11, v2, v4}, Ls1/a/a/a/v0/e/a0/b/f;-><init>([IZ)V

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    new-instance v10, Ls1/a/a/a/v0/e/z/e;

    .line 18
    iget-object v0, v8, Ls1/a/a/a/v0/e/i;->m:Ls1/a/a/a/v0/e/t;

    const-string v2, "proto.typeTable"

    .line 19
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v0}, Ls1/a/a/a/v0/e/z/e;-><init>(Ls1/a/a/a/v0/e/t;)V

    sget-object v12, Ls1/a/a/b;->j:Ls1/a/a/b;

    .line 20
    invoke-static/range {v7 .. v12}, Ls1/a/a/a/s0;->c(Ljava/lang/Class;Ls1/a/a/a/v0/h/p;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/e/z/a;Ls1/z/b/p;)Ls1/a/a/a/v0/b/a;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/b/q0;

    if-eqz v0, :cond_3

    .line 21
    new-instance v1, Ls1/a/a/a/b;

    sget-object v2, Ls1/a/a/a/d;->c:Ls1/a/a/a/d;

    invoke-direct {v1, v2, v0}, Ls1/a/a/a/b;-><init>(Ls1/a/a/a/n;Ls1/a/a/a/v0/b/v;)V

    :cond_3
    if-eqz v1, :cond_4

    .line 22
    invoke-static {v1}, Ls1/a/a/a/s0;->a(Ljava/lang/Object;)Ls1/a/a/a/b;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 23
    sget-object p1, Ls1/a/a/a/o0;->b:Ls1/a/a/a/o0;

    invoke-virtual {v0}, Ls1/a/a/a/b;->m()Ls1/a/a/a/v0/b/v;

    move-result-object p1

    const-string v0, "invoke"

    .line 24
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    invoke-static {v0, p1}, Ls1/a/a/a/o0;->b(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/b/a;)V

    .line 27
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object v1

    const-string v2, "invoke.valueParameters"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Ls1/a/a/a/p0;->b:Ls1/a/a/a/p0;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x30

    const-string v3, ", "

    const-string v4, "("

    const-string v5, ")"

    move-object v2, v0

    invoke-static/range {v1 .. v9}, Ls1/u/i;->M(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/Appendable;

    const-string v1, " -> "

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a;->g()Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    invoke-static {p1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    const-string v1, "invoke.returnType!!"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ls1/a/a/a/o0;->e(Ls1/a/a/a/v0/m/e0;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 31
    :cond_4
    invoke-super {p0, p1}, Ls1/z/c/e0;->h(Ls1/z/c/h;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public i(Ls1/z/c/m;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/n0;->h(Ls1/z/c/h;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
