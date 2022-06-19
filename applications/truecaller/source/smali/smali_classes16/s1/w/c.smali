.class public final Ls1/w/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/w/f;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/w/c$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0001\u0018\u00002\u00020\u00012\u00060\u0002j\u0002`\u0003:\u0001!B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0000H\u0002J\u0013\u0010\u000c\u001a\u00020\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J5\u0010\u000f\u001a\u0002H\u0010\"\u0004\u0008\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u0002H\u00102\u0018\u0010\u0012\u001a\u0014\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u0002H\u00100\u0013H\u0016\u00a2\u0006\u0002\u0010\u0014J(\u0010\u0015\u001a\u0004\u0018\u0001H\u0016\"\u0008\u0008\u0000\u0010\u0016*\u00020\u00062\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u0002H\u00160\u0018H\u0096\u0002\u00a2\u0006\u0002\u0010\u0019J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u0014\u0010\u001c\u001a\u00020\u00012\n\u0010\u0017\u001a\u0006\u0012\u0002\u0008\u00030\u0018H\u0016J\u0008\u0010\u001d\u001a\u00020\u001bH\u0002J\u0008\u0010\u001e\u001a\u00020\u001fH\u0016J\u0008\u0010 \u001a\u00020\u000eH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lkotlin/coroutines/CombinedContext;",
        "Lkotlin/coroutines/CoroutineContext;",
        "Ljava/io/Serializable;",
        "Lkotlin/io/Serializable;",
        "left",
        "element",
        "Lkotlin/coroutines/CoroutineContext$Element;",
        "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext$Element;)V",
        "contains",
        "",
        "containsAll",
        "context",
        "equals",
        "other",
        "",
        "fold",
        "R",
        "initial",
        "operation",
        "Lkotlin/Function2;",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "get",
        "E",
        "key",
        "Lkotlin/coroutines/CoroutineContext$Key;",
        "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;",
        "hashCode",
        "",
        "minusKey",
        "size",
        "toString",
        "",
        "writeReplace",
        "Serialized",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Ls1/w/f$a;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f$a;)V
    .locals 1

    const-string v0, "left"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/w/c;->a:Ls1/w/f;

    iput-object p2, p0, Ls1/w/c;->b:Ls1/w/f$a;

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ls1/w/c;->a()I

    move-result v0

    .line 2
    new-array v1, v0, [Ls1/w/f;

    .line 3
    new-instance v2, Ls1/z/c/a0;

    invoke-direct {v2}, Ls1/z/c/a0;-><init>()V

    const/4 v3, 0x0

    iput v3, v2, Ls1/z/c/a0;->a:I

    .line 4
    sget-object v4, Ls1/s;->a:Ls1/s;

    new-instance v5, Ls1/w/c$c;

    invoke-direct {v5, v1, v2}, Ls1/w/c$c;-><init>([Ls1/w/f;Ls1/z/c/a0;)V

    invoke-virtual {p0, v4, v5}, Ls1/w/c;->fold(Ljava/lang/Object;Ls1/z/b/p;)Ljava/lang/Object;

    .line 5
    iget v2, v2, Ls1/z/c/a0;->a:I

    if-ne v2, v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_1

    .line 6
    new-instance v0, Ls1/w/c$a;

    invoke-direct {v0, v1}, Ls1/w/c$a;-><init>([Ls1/w/f;)V

    return-object v0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 3

    const/4 v0, 0x2

    move-object v1, p0

    .line 1
    :goto_0
    iget-object v1, v1, Ls1/w/c;->a:Ls1/w/f;

    instance-of v2, v1, Ls1/w/c;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    check-cast v1, Ls1/w/c;

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eq p0, p1, :cond_2

    .line 1
    instance-of v1, p1, Ls1/w/c;

    if-eqz v1, :cond_3

    check-cast p1, Ls1/w/c;

    invoke-virtual {p1}, Ls1/w/c;->a()I

    move-result v1

    invoke-virtual {p0}, Ls1/w/c;->a()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p0

    .line 3
    :goto_0
    iget-object v2, v1, Ls1/w/c;->b:Ls1/w/f$a;

    .line 4
    invoke-interface {v2}, Ls1/w/f$a;->getKey()Ls1/w/f$b;

    move-result-object v3

    invoke-virtual {p1, v3}, Ls1/w/c;->get(Ls1/w/f$b;)Ls1/w/f$a;

    move-result-object v3

    invoke-static {v3, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move p1, v0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v1, v1, Ls1/w/c;->a:Ls1/w/f;

    .line 6
    instance-of v2, v1, Ls1/w/c;

    if-eqz v2, :cond_1

    .line 7
    check-cast v1, Ls1/w/c;

    goto :goto_0

    :cond_1
    const-string v2, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element"

    .line 8
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Ls1/w/f$a;

    .line 9
    invoke-interface {v1}, Ls1/w/f$a;->getKey()Ls1/w/f$b;

    move-result-object v2

    invoke-virtual {p1, v2}, Ls1/w/c;->get(Ls1/w/f$b;)Ls1/w/f$a;

    move-result-object p1

    invoke-static {p1, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public fold(Ljava/lang/Object;Ls1/z/b/p;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Ls1/z/b/p<",
            "-TR;-",
            "Ls1/w/f$a;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/w/c;->a:Ls1/w/f;

    invoke-interface {v0, p1, p2}, Ls1/w/f;->fold(Ljava/lang/Object;Ls1/z/b/p;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Ls1/w/c;->b:Ls1/w/f$a;

    invoke-interface {p2, p1, v0}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ls1/w/f$b;)Ls1/w/f$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ls1/w/f$a;",
            ">(",
            "Ls1/w/f$b<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .line 1
    :goto_0
    iget-object v1, v0, Ls1/w/c;->b:Ls1/w/f$a;

    invoke-interface {v1, p1}, Ls1/w/f$a;->get(Ls1/w/f$b;)Ls1/w/f$a;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, v0, Ls1/w/c;->a:Ls1/w/f;

    .line 3
    instance-of v1, v0, Ls1/w/c;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Ls1/w/c;

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v0, p1}, Ls1/w/f;->get(Ls1/w/f$b;)Ls1/w/f$a;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/w/c;->a:Ls1/w/f;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Ls1/w/c;->b:Ls1/w/f$a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public minusKey(Ls1/w/f$b;)Ls1/w/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f$b<",
            "*>;)",
            "Ls1/w/f;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/w/c;->b:Ls1/w/f$a;

    invoke-interface {v0, p1}, Ls1/w/f$a;->get(Ls1/w/f$b;)Ls1/w/f$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Ls1/w/c;->a:Ls1/w/f;

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Ls1/w/c;->a:Ls1/w/f;

    invoke-interface {v0, p1}, Ls1/w/f;->minusKey(Ls1/w/f$b;)Ls1/w/f;

    move-result-object p1

    .line 3
    iget-object v0, p0, Ls1/w/c;->a:Ls1/w/f;

    if-ne p1, v0, :cond_1

    move-object p1, p0

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Ls1/w/h;->a:Ls1/w/h;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Ls1/w/c;->b:Ls1/w/f$a;

    goto :goto_0

    .line 5
    :cond_2
    new-instance v0, Ls1/w/c;

    iget-object v1, p0, Ls1/w/c;->b:Ls1/w/f$a;

    invoke-direct {v0, p1, v1}, Ls1/w/c;-><init>(Ls1/w/f;Ls1/w/f$a;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public plus(Ls1/w/f;)Ls1/w/f;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Ls1/w/h;->a:Ls1/w/h;

    if-ne p1, v0, :cond_0

    move-object p1, p0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Ls1/w/g;->b:Ls1/w/g;

    invoke-interface {p1, p0, v0}, Ls1/w/f;->fold(Ljava/lang/Object;Ls1/z/b/p;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/w/f;

    :goto_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "["

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ls1/w/c$b;->b:Ls1/w/c$b;

    const-string v2, ""

    invoke-virtual {p0, v2, v1}, Ls1/w/c;->fold(Ljava/lang/Object;Ls1/z/b/p;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "]"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
