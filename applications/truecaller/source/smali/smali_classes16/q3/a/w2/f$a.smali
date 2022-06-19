.class public final Lq3/a/w2/f$a;
.super Lq3/a/w2/a;
.source "SourceFile"

# interfaces
.implements Lq3/a/w2/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/a/w2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lq3/a/w2/a<",
        "TE;>;",
        "Lq3/a/w2/z<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0008\u0002\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00010\'2\u0008\u0012\u0004\u0012\u00028\u00010(B\u0015\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\r\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000b\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0008J\u0011\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0011\u0010\u0011\u001a\u0004\u0018\u00010\u000eH\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u001d\u0010\u0014\u001a\u0004\u0018\u00010\u000e2\n\u0010\u0013\u001a\u0006\u0012\u0002\u0008\u00030\u0012H\u0014\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0016R\u0016\u0010\u0017\u001a\u00020\u00068T@\u0014X\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0008R\u0016\u0010\u0018\u001a\u00020\u00068T@\u0014X\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0008R\u0016\u0010\u0019\u001a\u00020\u00068T@\u0014X\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0008R\u0016\u0010\u001a\u001a\u00020\u00068T@\u0014X\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0008R$\u0010!\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001b8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001a\u0010$\u001a\u00060\"j\u0002`#8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010%\u00a8\u0006&"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/ArrayBroadcastChannel$Subscriber;",
        "E",
        "Lkotlinx/coroutines/channels/ArrayBroadcastChannel;",
        "broadcastChannel",
        "<init>",
        "(Lkotlinx/coroutines/channels/ArrayBroadcastChannel;)V",
        "",
        "checkOffer",
        "()Z",
        "",
        "cause",
        "close",
        "(Ljava/lang/Throwable;)Z",
        "needsToCheckOfferWithoutLock",
        "",
        "peekUnderLock",
        "()Ljava/lang/Object;",
        "pollInternal",
        "Lkotlinx/coroutines/selects/SelectInstance;",
        "select",
        "pollSelectInternal",
        "(Lkotlinx/coroutines/selects/SelectInstance;)Ljava/lang/Object;",
        "Lkotlinx/coroutines/channels/ArrayBroadcastChannel;",
        "isBufferAlwaysEmpty",
        "isBufferAlwaysFull",
        "isBufferEmpty",
        "isBufferFull",
        "",
        "value",
        "getSubHead",
        "()J",
        "setSubHead",
        "(J)V",
        "subHead",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "Lkotlinx/coroutines/internal/ReentrantLock;",
        "subLock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "kotlinx-coroutines-core",
        "Lkotlinx/coroutines/channels/AbstractChannel;",
        "Lkotlinx/coroutines/channels/ReceiveChannel;"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private volatile synthetic _subHead:J

.field public final e:Lq3/a/w2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/w2/f<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(Lq3/a/w2/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/w2/f<",
            "TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lq3/a/w2/a;-><init>(Ls1/z/b/l;)V

    .line 2
    iput-object p1, p0, Lq3/a/w2/f$a;->e:Lq3/a/w2/f;

    .line 3
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lq3/a/w2/f$a;->f:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lq3/a/w2/f$a;->_subHead:J

    return-void
.end method


# virtual methods
.method public B()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lq3/a/w2/f$a;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lq3/a/w2/f$a;->F()Ljava/lang/Object;

    move-result-object v1

    .line 4
    instance-of v2, v1, Lq3/a/w2/o;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v2, Lq3/a/w2/b;->d:Lq3/a/y2/x;

    if-ne v1, v2, :cond_1

    :goto_0
    const/4 v2, 0x0

    goto :goto_1

    .line 6
    :cond_1
    iget-wide v4, p0, Lq3/a/w2/f$a;->_subHead:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 7
    iput-wide v4, p0, Lq3/a/w2/f$a;->_subHead:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8
    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 9
    instance-of v0, v1, Lq3/a/w2/o;

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lq3/a/w2/o;

    goto :goto_2

    :cond_2
    move-object v0, v4

    :goto_2
    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v0, v0, Lq3/a/w2/o;->d:Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Lq3/a/w2/f$a;->u(Ljava/lang/Throwable;)Z

    .line 10
    :goto_3
    invoke-virtual {p0}, Lq3/a/w2/f$a;->D()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move v3, v2

    :goto_4
    if-eqz v3, :cond_5

    .line 11
    iget-object v0, p0, Lq3/a/w2/f$a;->e:Lq3/a/w2/f;

    const/4 v2, 0x3

    invoke-static {v0, v4, v4, v2}, Lq3/a/w2/f;->x(Lq3/a/w2/f;Lq3/a/w2/f$a;Lq3/a/w2/f$a;I)V

    :cond_5
    return-object v1

    :catchall_0
    move-exception v1

    .line 12
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public C(Lq3/a/a3/c;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/a3/c<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/a/w2/f$a;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lq3/a/w2/f$a;->F()Ljava/lang/Object;

    move-result-object v1

    .line 4
    instance-of v2, v1, Lq3/a/w2/o;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v2, Lq3/a/w2/b;->d:Lq3/a/y2/x;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p1}, Lq3/a/a3/c;->v()Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    sget-object p1, Lq3/a/a3/d;->a:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lq3/a/a3/d;->b:Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_2
    :try_start_1
    iget-wide v4, p0, Lq3/a/w2/f$a;->_subHead:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 9
    iput-wide v4, p0, Lq3/a/w2/f$a;->_subHead:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v3

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 11
    instance-of p1, v1, Lq3/a/w2/o;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    move-object p1, v1

    check-cast p1, Lq3/a/w2/o;

    goto :goto_1

    :cond_3
    move-object p1, v0

    :goto_1
    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    iget-object p1, p1, Lq3/a/w2/o;->d:Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lq3/a/w2/f$a;->u(Ljava/lang/Throwable;)Z

    .line 12
    :goto_2
    invoke-virtual {p0}, Lq3/a/w2/f$a;->D()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move v3, v4

    :goto_3
    if-eqz v3, :cond_6

    .line 13
    iget-object p1, p0, Lq3/a/w2/f$a;->e:Lq3/a/w2/f;

    const/4 v2, 0x3

    invoke-static {p1, v0, v0, v2}, Lq3/a/w2/f;->x(Lq3/a/w2/f;Lq3/a/w2/f$a;Lq3/a/w2/f$a;I)V

    :cond_6
    return-object v1

    :catchall_0
    move-exception p1

    .line 14
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final D()Z
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    .line 1
    :goto_0
    invoke-virtual {p0}, Lq3/a/w2/c;->k()Lq3/a/w2/o;

    move-result-object v3

    if-eqz v3, :cond_0

    :goto_1
    move v3, v1

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {p0}, Lq3/a/w2/f$a;->x()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lq3/a/w2/f$a;->e:Lq3/a/w2/f;

    invoke-virtual {v3}, Lq3/a/w2/c;->k()Lq3/a/w2/o;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_2
    const/4 v4, 0x0

    if-eqz v3, :cond_8

    .line 3
    iget-object v3, p0, Lq3/a/w2/f$a;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_5

    .line 4
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lq3/a/w2/f$a;->F()Ljava/lang/Object;

    move-result-object v3

    .line 5
    sget-object v5, Lq3/a/w2/b;->d:Lq3/a/y2/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v5, :cond_3

    .line 6
    :goto_3
    iget-object v3, p0, Lq3/a/w2/f$a;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 7
    :cond_3
    :try_start_1
    instance-of v5, v3, Lq3/a/w2/o;

    if-eqz v5, :cond_4

    .line 8
    move-object v4, v3

    check-cast v4, Lq3/a/w2/o;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :goto_4
    iget-object v0, p0, Lq3/a/w2/f$a;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_5

    .line 10
    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lq3/a/w2/a;->r()Lq3/a/w2/a0;

    move-result-object v5

    if-nez v5, :cond_5

    goto :goto_4

    .line 11
    :cond_5
    instance-of v6, v5, Lq3/a/w2/o;

    if-eqz v6, :cond_6

    goto :goto_4

    .line 12
    :cond_6
    invoke-interface {v5, v3, v4}, Lq3/a/w2/a0;->m(Ljava/lang/Object;Lq3/a/y2/m$c;)Lq3/a/y2/x;

    move-result-object v4

    if-nez v4, :cond_7

    goto :goto_3

    .line 13
    :cond_7
    iget-wide v6, p0, Lq3/a/w2/f$a;->_subHead:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    .line 14
    iput-wide v6, p0, Lq3/a/w2/f$a;->_subHead:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    iget-object v2, p0, Lq3/a/w2/f$a;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 16
    invoke-interface {v5, v3}, Lq3/a/w2/a0;->g(Ljava/lang/Object;)V

    move v2, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 17
    iget-object v1, p0, Lq3/a/w2/f$a;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_8
    :goto_5
    if-nez v4, :cond_9

    goto :goto_6

    .line 18
    :cond_9
    iget-object v0, v4, Lq3/a/w2/o;->d:Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Lq3/a/w2/f$a;->u(Ljava/lang/Throwable;)Z

    :goto_6
    return v2
.end method

.method public final E()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lq3/a/w2/f$a;->_subHead:J

    return-wide v0
.end method

.method public final F()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-wide v0, p0, Lq3/a/w2/f$a;->_subHead:J

    .line 2
    iget-object v2, p0, Lq3/a/w2/f$a;->e:Lq3/a/w2/f;

    invoke-virtual {v2}, Lq3/a/w2/c;->k()Lq3/a/w2/o;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lq3/a/w2/f$a;->e:Lq3/a/w2/f;

    invoke-static {v3}, Lq3/a/w2/f;->t(Lq3/a/w2/f;)J

    move-result-wide v3

    cmp-long v3, v0, v3

    if-ltz v3, :cond_1

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {p0}, Lq3/a/w2/c;->k()Lq3/a/w2/o;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Lq3/a/w2/b;->d:Lq3/a/y2/x;

    :cond_0
    return-object v2

    .line 5
    :cond_1
    iget-object v2, p0, Lq3/a/w2/f$a;->e:Lq3/a/w2/f;

    .line 6
    iget-object v3, v2, Lq3/a/w2/f;->f:[Ljava/lang/Object;

    iget v2, v2, Lq3/a/w2/f;->d:I

    int-to-long v4, v2

    rem-long/2addr v0, v4

    long-to-int v0, v0

    aget-object v0, v3, v0

    .line 7
    invoke-virtual {p0}, Lq3/a/w2/c;->k()Lq3/a/w2/o;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    return-object v0
.end method

.method public final G(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lq3/a/w2/f$a;->_subHead:J

    return-void
.end method

.method public n()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not be used"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public o()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not be used"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public u(Ljava/lang/Throwable;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lq3/a/w2/c;->u(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lq3/a/w2/f$a;->e:Lq3/a/w2/f;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Lq3/a/w2/f;->x(Lq3/a/w2/f;Lq3/a/w2/f$a;Lq3/a/w2/f$a;I)V

    .line 3
    iget-object v0, p0, Lq3/a/w2/f$a;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 5
    :try_start_0
    iget-object v1, p0, Lq3/a/w2/f$a;->e:Lq3/a/w2/f;

    invoke-static {v1}, Lq3/a/w2/f;->t(Lq3/a/w2/f;)J

    move-result-wide v1

    .line 6
    iput-wide v1, p0, Lq3/a/w2/f$a;->_subHead:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_0
    :goto_0
    return p1
.end method

.method public w()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public x()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lq3/a/w2/f$a;->_subHead:J

    .line 2
    iget-object v2, p0, Lq3/a/w2/f$a;->e:Lq3/a/w2/f;

    invoke-static {v2}, Lq3/a/w2/f;->t(Lq3/a/w2/f;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
