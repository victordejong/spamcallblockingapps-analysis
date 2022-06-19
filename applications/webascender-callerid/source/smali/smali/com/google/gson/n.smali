.class public final Lcom/google/gson/n;
.super Lcom/google/gson/l;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/gson/w/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/w/h<",
            "Ljava/lang/String;",
            "Lcom/google/gson/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/gson/l;-><init>()V

    .line 2
    new-instance v0, Lcom/google/gson/w/h;

    invoke-direct {v0}, Lcom/google/gson/w/h;-><init>()V

    iput-object v0, p0, Lcom/google/gson/n;->a:Lcom/google/gson/w/h;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    .line 1
    instance-of v0, p1, Lcom/google/gson/n;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/gson/n;

    iget-object p1, p1, Lcom/google/gson/n;->a:Lcom/google/gson/w/h;

    iget-object v0, p0, Lcom/google/gson/n;->a:Lcom/google/gson/w/h;

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

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

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/gson/n;->a:Lcom/google/gson/w/h;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public n(Ljava/lang/String;Lcom/google/gson/l;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/gson/n;->a:Lcom/google/gson/w/h;

    if-nez p2, :cond_0

    sget-object p2, Lcom/google/gson/m;->a:Lcom/google/gson/m;

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/gson/w/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    sget-object p2, Lcom/google/gson/m;->a:Lcom/google/gson/m;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/gson/p;

    invoke-direct {v0, p2}, Lcom/google/gson/p;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/n;->n(Ljava/lang/String;Lcom/google/gson/l;)V

    return-void
.end method

.method public q()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/google/gson/l;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/gson/n;->a:Lcom/google/gson/w/h;

    invoke-virtual {v0}, Lcom/google/gson/w/h;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public s(Ljava/lang/String;)Lcom/google/gson/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/gson/n;->a:Lcom/google/gson/w/h;

    invoke-virtual {v0, p1}, Lcom/google/gson/w/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/l;

    return-object p1
.end method

.method public t(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/gson/n;->a:Lcom/google/gson/w/h;

    invoke-virtual {v0, p1}, Lcom/google/gson/w/h;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public u(Ljava/lang/String;)Lcom/google/gson/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/gson/n;->a:Lcom/google/gson/w/h;

    invoke-virtual {v0, p1}, Lcom/google/gson/w/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/l;

    return-object p1
.end method
