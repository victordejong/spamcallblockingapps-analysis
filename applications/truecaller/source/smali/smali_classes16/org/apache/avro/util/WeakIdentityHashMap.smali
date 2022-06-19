.class public Lorg/apache/avro/util/WeakIdentityHashMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private backingStore:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/avro/util/WeakIdentityHashMap<",
            "TK;TV;>.IdentityWeakReference;TV;>;"
        }
    .end annotation
.end field

.field private final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/avro/util/WeakIdentityHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/avro/util/WeakIdentityHashMap;->backingStore:Ljava/util/Map;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/avro/util/WeakIdentityHashMap;)Ljava/lang/ref/ReferenceQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/avro/util/WeakIdentityHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    return-object p0
.end method

.method private declared-synchronized reap()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/avro/util/WeakIdentityHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lorg/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;

    .line 3
    iget-object v1, p0, Lorg/apache/avro/util/WeakIdentityHashMap;->backingStore:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lorg/apache/avro/util/WeakIdentityHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/util/WeakIdentityHashMap;->backingStore:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2
    invoke-direct {p0}, Lorg/apache/avro/util/WeakIdentityHashMap;->reap()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/util/WeakIdentityHashMap;->reap()V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/util/WeakIdentityHashMap;->backingStore:Ljava/util/Map;

    new-instance v1, Lorg/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;

    invoke-direct {v1, p0, p1}, Lorg/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;-><init>(Lorg/apache/avro/util/WeakIdentityHashMap;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/util/WeakIdentityHashMap;->reap()V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/util/WeakIdentityHashMap;->backingStore:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/util/WeakIdentityHashMap;->reap()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3
    iget-object v1, p0, Lorg/apache/avro/util/WeakIdentityHashMap;->backingStore:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 6
    new-instance v4, Lorg/apache/avro/util/WeakIdentityHashMap$1;

    invoke-direct {v4, p0, v3, v2}, Lorg/apache/avro/util/WeakIdentityHashMap$1;-><init>(Lorg/apache/avro/util/WeakIdentityHashMap;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/apache/avro/util/WeakIdentityHashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/apache/avro/util/WeakIdentityHashMap;->backingStore:Ljava/util/Map;

    check-cast p1, Lorg/apache/avro/util/WeakIdentityHashMap;

    iget-object p1, p1, Lorg/apache/avro/util/WeakIdentityHashMap;->backingStore:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/util/WeakIdentityHashMap;->reap()V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/util/WeakIdentityHashMap;->backingStore:Ljava/util/Map;

    new-instance v1, Lorg/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;

    invoke-direct {v1, p0, p1}, Lorg/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;-><init>(Lorg/apache/avro/util/WeakIdentityHashMap;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/util/WeakIdentityHashMap;->reap()V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/util/WeakIdentityHashMap;->backingStore:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/util/WeakIdentityHashMap;->reap()V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/util/WeakIdentityHashMap;->backingStore:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/util/WeakIdentityHashMap;->reap()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3
    iget-object v1, p0, Lorg/apache/avro/util/WeakIdentityHashMap;->backingStore:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;

    .line 4
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/util/WeakIdentityHashMap;->reap()V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/util/WeakIdentityHashMap;->backingStore:Ljava/util/Map;

    new-instance v1, Lorg/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;

    invoke-direct {v1, p0, p1}, Lorg/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;-><init>(Lorg/apache/avro/util/WeakIdentityHashMap;Ljava/lang/Object;)V

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/util/WeakIdentityHashMap;->reap()V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/util/WeakIdentityHashMap;->backingStore:Ljava/util/Map;

    new-instance v1, Lorg/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;

    invoke-direct {v1, p0, p1}, Lorg/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;-><init>(Lorg/apache/avro/util/WeakIdentityHashMap;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/util/WeakIdentityHashMap;->reap()V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/util/WeakIdentityHashMap;->backingStore:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/util/WeakIdentityHashMap;->reap()V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/util/WeakIdentityHashMap;->backingStore:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
