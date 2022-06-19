.class public final Lkotlin/u/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/u/g;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/u/c$a;
    }
.end annotation


# instance fields
.field private final f:Lkotlin/u/g;

.field private final g:Lkotlin/u/g$b;


# direct methods
.method public constructor <init>(Lkotlin/u/g;Lkotlin/u/g$b;)V
    .locals 1

    const-string v0, "left"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/u/c;->f:Lkotlin/u/g;

    iput-object p2, p0, Lkotlin/u/c;->g:Lkotlin/u/g$b;

    return-void
.end method

.method private final d(Lkotlin/u/g$b;)Z
    .locals 1

    .line 1
    invoke-interface {p1}, Lkotlin/u/g$b;->getKey()Lkotlin/u/g$c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlin/u/c;->get(Lkotlin/u/g$c;)Lkotlin/u/g$b;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final e(Lkotlin/u/c;)Z
    .locals 1

    .line 1
    :goto_0
    iget-object v0, p1, Lkotlin/u/c;->g:Lkotlin/u/g$b;

    invoke-direct {p0, v0}, Lkotlin/u/c;->d(Lkotlin/u/g$b;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object p1, p1, Lkotlin/u/c;->f:Lkotlin/u/g;

    .line 3
    instance-of v0, p1, Lkotlin/u/c;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lkotlin/u/c;

    goto :goto_0

    :cond_1
    const-string v0, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element"

    .line 5
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lkotlin/u/g$b;

    invoke-direct {p0, p1}, Lkotlin/u/c;->d(Lkotlin/u/g$b;)Z

    move-result p1

    return p1
.end method

.method private final h()I
    .locals 3

    const/4 v0, 0x2

    move-object v1, p0

    .line 1
    :goto_0
    iget-object v1, v1, Lkotlin/u/c;->f:Lkotlin/u/g;

    instance-of v2, v1, Lkotlin/u/c;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    check-cast v1, Lkotlin/u/c;

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-direct {p0}, Lkotlin/u/c;->h()I

    move-result v0

    .line 2
    new-array v1, v0, [Lkotlin/u/g;

    .line 3
    new-instance v2, Lkotlin/w/c/o;

    invoke-direct {v2}, Lkotlin/w/c/o;-><init>()V

    const/4 v3, 0x0

    iput v3, v2, Lkotlin/w/c/o;->f:I

    .line 4
    sget-object v4, Lkotlin/r;->a:Lkotlin/r;

    new-instance v5, Lkotlin/u/c$c;

    invoke-direct {v5, v1, v2}, Lkotlin/u/c$c;-><init>([Lkotlin/u/g;Lkotlin/w/c/o;)V

    invoke-virtual {p0, v4, v5}, Lkotlin/u/c;->fold(Ljava/lang/Object;Lkotlin/w/b/p;)Ljava/lang/Object;

    .line 5
    iget v2, v2, Lkotlin/w/c/o;->f:I

    if-ne v2, v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_1

    .line 6
    new-instance v0, Lkotlin/u/c$a;

    invoke-direct {v0, v1}, Lkotlin/u/c$a;-><init>([Lkotlin/u/g;)V

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
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    .line 1
    instance-of v0, p1, Lkotlin/u/c;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlin/u/c;

    invoke-direct {p1}, Lkotlin/u/c;->h()I

    move-result v0

    invoke-direct {p0}, Lkotlin/u/c;->h()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p1, p0}, Lkotlin/u/c;->e(Lkotlin/u/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public fold(Ljava/lang/Object;Lkotlin/w/b/p;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkotlin/w/b/p<",
            "-TR;-",
            "Lkotlin/u/g$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlin/u/c;->f:Lkotlin/u/g;

    invoke-interface {v0, p1, p2}, Lkotlin/u/g;->fold(Ljava/lang/Object;Lkotlin/w/b/p;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lkotlin/u/c;->g:Lkotlin/u/g$b;

    invoke-interface {p2, p1, v0}, Lkotlin/w/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lkotlin/u/g$c;)Lkotlin/u/g$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/u/g$b;",
            ">(",
            "Lkotlin/u/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .line 1
    :goto_0
    iget-object v1, v0, Lkotlin/u/c;->g:Lkotlin/u/g$b;

    invoke-interface {v1, p1}, Lkotlin/u/g$b;->get(Lkotlin/u/g$c;)Lkotlin/u/g$b;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, v0, Lkotlin/u/c;->f:Lkotlin/u/g;

    .line 3
    instance-of v1, v0, Lkotlin/u/c;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lkotlin/u/c;

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v0, p1}, Lkotlin/u/g;->get(Lkotlin/u/g$c;)Lkotlin/u/g$b;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlin/u/c;->f:Lkotlin/u/g;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lkotlin/u/c;->g:Lkotlin/u/g$b;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public minusKey(Lkotlin/u/g$c;)Lkotlin/u/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/u/g$c<",
            "*>;)",
            "Lkotlin/u/g;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlin/u/c;->g:Lkotlin/u/g$b;

    invoke-interface {v0, p1}, Lkotlin/u/g$b;->get(Lkotlin/u/g$c;)Lkotlin/u/g$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lkotlin/u/c;->f:Lkotlin/u/g;

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lkotlin/u/c;->f:Lkotlin/u/g;

    invoke-interface {v0, p1}, Lkotlin/u/g;->minusKey(Lkotlin/u/g$c;)Lkotlin/u/g;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lkotlin/u/c;->f:Lkotlin/u/g;

    if-ne p1, v0, :cond_1

    move-object p1, p0

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lkotlin/u/h;->f:Lkotlin/u/h;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lkotlin/u/c;->g:Lkotlin/u/g$b;

    goto :goto_0

    .line 5
    :cond_2
    new-instance v0, Lkotlin/u/c;

    iget-object v1, p0, Lkotlin/u/c;->g:Lkotlin/u/g$b;

    invoke-direct {v0, p1, v1}, Lkotlin/u/c;-><init>(Lkotlin/u/g;Lkotlin/u/g$b;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public plus(Lkotlin/u/g;)Lkotlin/u/g;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lkotlin/u/g$a;->a(Lkotlin/u/g;Lkotlin/u/g;)Lkotlin/u/g;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lkotlin/u/c$b;->f:Lkotlin/u/c$b;

    const-string v2, ""

    invoke-virtual {p0, v2, v1}, Lkotlin/u/c;->fold(Ljava/lang/Object;Lkotlin/w/b/p;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
