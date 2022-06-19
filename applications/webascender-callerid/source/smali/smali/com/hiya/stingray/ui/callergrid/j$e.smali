.class final Lcom/hiya/stingray/ui/callergrid/j$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/callergrid/j;->o(Ljava/util/List;Ljava/util/List;Ljava/util/Map;)Li/c/b0/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "TT;",
        "Li/c/b0/b/a0<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/callergrid/j;

.field final synthetic g:Ljava/util/List;

.field final synthetic h:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/callergrid/j;Ljava/util/List;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/callergrid/j$e;->f:Lcom/hiya/stingray/ui/callergrid/j;

    iput-object p2, p0, Lcom/hiya/stingray/ui/callergrid/j$e;->g:Ljava/util/List;

    iput-object p3, p0, Lcom/hiya/stingray/ui/callergrid/j$e;->h:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Li/c/b0/b/v;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/hiya/stingray/q/c/i/c;",
            ">;)",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/b;",
            ">;>;"
        }
    .end annotation

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    iget-object v2, p0, Lcom/hiya/stingray/ui/callergrid/j$e;->f:Lcom/hiya/stingray/ui/callergrid/j;

    invoke-static {v2}, Lcom/hiya/stingray/ui/callergrid/j;->b(Lcom/hiya/stingray/ui/callergrid/j;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hiya/stingray/q/c/i/c;

    invoke-virtual {v3}, Lcom/hiya/stingray/q/c/i/c;->Z0()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/hiya/stingray/ui/callergrid/j$e;->f:Lcom/hiya/stingray/ui/callergrid/j;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/callergrid/j;->h()Lcom/hiya/stingray/t/i1/k;

    move-result-object p1

    iget-object v1, p0, Lcom/hiya/stingray/ui/callergrid/j$e;->g:Ljava/util/List;

    iget-object v2, p0, Lcom/hiya/stingray/ui/callergrid/j$e;->h:Ljava/util/Map;

    invoke-virtual {p1, v1, v2}, Lcom/hiya/stingray/t/i1/k;->b(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    .line 7
    iget-object v1, p0, Lcom/hiya/stingray/ui/callergrid/j$e;->f:Lcom/hiya/stingray/ui/callergrid/j;

    invoke-virtual {v1}, Lcom/hiya/stingray/ui/callergrid/j;->h()Lcom/hiya/stingray/t/i1/k;

    move-result-object v1

    iget-object v2, p0, Lcom/hiya/stingray/ui/callergrid/j$e;->h:Ljava/util/Map;

    invoke-virtual {v1, v0, v2}, Lcom/hiya/stingray/t/i1/k;->c(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-static {p1, v0}, Lkotlin/s/k;->X(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/callergrid/j$e;->a(Ljava/util/Map;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method
