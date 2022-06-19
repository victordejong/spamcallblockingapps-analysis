.class Li/a/a/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/a/c/k;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li/a/a/c/d;->a:Ljava/util/List;

    return-void
.end method

.method private synthetic d(Li/a/a/c/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Li/a/a/c/d;->b(Li/a/a/c/f;Ljava/lang/Object;)Li/a/a/c/k;

    return-void
.end method


# virtual methods
.method public a(Li/a/a/c/j;)Li/a/a/c/k;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Li/a/a/c/a;

    invoke-direct {v0, p0}, Li/a/a/c/a;-><init>(Li/a/a/c/d;)V

    invoke-interface {p1, v0}, Li/a/a/c/j;->forEach(Ljava/util/function/BiConsumer;)V

    return-object p0
.end method

.method public b(Li/a/a/c/f;Ljava/lang/Object;)Li/a/a/c/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/a/a/c/f<",
            "TT;>;TT;)",
            "Li/a/a/c/k;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Li/a/a/c/f;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Li/a/a/c/f;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Li/a/a/c/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Li/a/a/c/d;->a:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-object p0
.end method

.method public c()Li/a/a/c/j;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/a/c/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Li/a/a/c/c;->i([Ljava/lang/Object;)Li/a/a/c/j;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e(Li/a/a/c/f;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Li/a/a/c/d;->d(Li/a/a/c/f;Ljava/lang/Object;)V

    return-void
.end method
