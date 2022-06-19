.class abstract Lcom/google/common/collect/e0$b;
.super Lcom/google/common/collect/r;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/r<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final f:Lcom/google/common/collect/e0$p;

.field final g:Lcom/google/common/collect/e0$p;

.field final h:Lcom/google/common/base/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final i:I

.field transient j:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/e0$p;Lcom/google/common/collect/e0$p;Lcom/google/common/base/e;Lcom/google/common/base/e;ILjava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e0$p;",
            "Lcom/google/common/collect/e0$p;",
            "Lcom/google/common/base/e<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/common/base/e<",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/r;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/e0$b;->f:Lcom/google/common/collect/e0$p;

    .line 3
    iput-object p2, p0, Lcom/google/common/collect/e0$b;->g:Lcom/google/common/collect/e0$p;

    .line 4
    iput-object p3, p0, Lcom/google/common/collect/e0$b;->h:Lcom/google/common/base/e;

    .line 5
    iput p5, p0, Lcom/google/common/collect/e0$b;->i:I

    .line 6
    iput-object p6, p0, Lcom/google/common/collect/e0$b;->j:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method protected c()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e0$b;->j:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method e(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/google/common/collect/e0$b;->j:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method f(Ljava/io/ObjectInputStream;)Lcom/google/common/collect/d0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p1

    .line 2
    new-instance v0, Lcom/google/common/collect/d0;

    invoke-direct {v0}, Lcom/google/common/collect/d0;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/d0;->g(I)Lcom/google/common/collect/d0;

    iget-object p1, p0, Lcom/google/common/collect/e0$b;->f:Lcom/google/common/collect/e0$p;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/common/collect/d0;->j(Lcom/google/common/collect/e0$p;)Lcom/google/common/collect/d0;

    iget-object p1, p0, Lcom/google/common/collect/e0$b;->g:Lcom/google/common/collect/e0$p;

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/common/collect/d0;->k(Lcom/google/common/collect/e0$p;)Lcom/google/common/collect/d0;

    iget-object p1, p0, Lcom/google/common/collect/e0$b;->h:Lcom/google/common/base/e;

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/common/collect/d0;->h(Lcom/google/common/base/e;)Lcom/google/common/collect/d0;

    iget p1, p0, Lcom/google/common/collect/e0$b;->i:I

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/common/collect/d0;->a(I)Lcom/google/common/collect/d0;

    return-object v0
.end method

.method g(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e0$b;->j:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/e0$b;->j:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
