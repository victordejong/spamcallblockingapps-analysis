.class public final Lp3/a/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Lp3/a/a;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lp3/a/a$c<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp3/a/a;Lp3/a/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp3/a/a$b;->a:Lp3/a/a;

    return-void
.end method


# virtual methods
.method public a()Lp3/a/a;
    .locals 4

    .line 1
    iget-object v0, p0, Lp3/a/a$b;->b:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lp3/a/a$b;->a:Lp3/a/a;

    .line 3
    iget-object v0, v0, Lp3/a/a;->a:Ljava/util/Map;

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    iget-object v2, p0, Lp3/a/a$b;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    iget-object v2, p0, Lp3/a/a$b;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Lp3/a/a;

    iget-object v1, p0, Lp3/a/a$b;->b:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lp3/a/a;-><init>(Ljava/util/Map;Lp3/a/a$a;)V

    iput-object v0, p0, Lp3/a/a$b;->a:Lp3/a/a;

    .line 8
    iput-object v2, p0, Lp3/a/a$b;->b:Ljava/util/Map;

    .line 9
    :cond_2
    iget-object v0, p0, Lp3/a/a$b;->a:Lp3/a/a;

    return-object v0
.end method

.method public b(Lp3/a/a$c;)Lp3/a/a$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lp3/a/a$c<",
            "TT;>;)",
            "Lp3/a/a$b;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/a/a$b;->a:Lp3/a/a;

    .line 2
    iget-object v0, v0, Lp3/a/a;->a:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/IdentityHashMap;

    iget-object v1, p0, Lp3/a/a$b;->a:Lp3/a/a;

    .line 5
    iget-object v1, v1, Lp3/a/a;->a:Ljava/util/Map;

    .line 6
    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, Lp3/a/a;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lp3/a/a;-><init>(Ljava/util/Map;Lp3/a/a$a;)V

    iput-object v1, p0, Lp3/a/a$b;->a:Lp3/a/a;

    .line 9
    :cond_0
    iget-object v0, p0, Lp3/a/a$b;->b:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 10
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p0
.end method

.method public c(Lp3/a/a$c;Ljava/lang/Object;)Lp3/a/a$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lp3/a/a$c<",
            "TT;>;TT;)",
            "Lp3/a/a$b;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/a/a$b;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/IdentityHashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    iput-object v0, p0, Lp3/a/a$b;->b:Ljava/util/Map;

    .line 3
    :cond_0
    iget-object v0, p0, Lp3/a/a$b;->b:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
