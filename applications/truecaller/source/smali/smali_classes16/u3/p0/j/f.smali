.class public final Lu3/p0/j/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu3/p0/j/f$b;,
        Lu3/p0/j/f$d;,
        Lu3/p0/j/f$c;
    }
.end annotation


# static fields
.field public static final C:Lu3/p0/j/t;

.field public static final D:Lu3/p0/j/f;


# instance fields
.field public final A:Lu3/p0/j/f$d;

.field public final B:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final a:Z

.field public final b:Lu3/p0/j/f$c;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lu3/p0/j/o;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:Z

.field public final h:Lu3/p0/f/d;

.field public final i:Lu3/p0/f/c;

.field public final j:Lu3/p0/f/c;

.field public final k:Lu3/p0/f/c;

.field public final l:Lu3/p0/j/s;

.field public m:J

.field public n:J

.field public o:J

.field public p:J

.field public q:J

.field public r:J

.field public final s:Lu3/p0/j/t;

.field public t:Lu3/p0/j/t;

.field public u:J

.field public v:J

.field public w:J

.field public x:J

.field public final y:Ljava/net/Socket;

.field public final z:Lu3/p0/j/p;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lu3/p0/j/t;

    invoke-direct {v0}, Lu3/p0/j/t;-><init>()V

    const/4 v1, 0x7

    const v2, 0xffff

    .line 2
    invoke-virtual {v0, v1, v2}, Lu3/p0/j/t;->c(II)Lu3/p0/j/t;

    const/4 v1, 0x5

    const/16 v2, 0x4000

    .line 3
    invoke-virtual {v0, v1, v2}, Lu3/p0/j/t;->c(II)Lu3/p0/j/t;

    .line 4
    sput-object v0, Lu3/p0/j/f;->C:Lu3/p0/j/t;

    return-void
.end method

.method public constructor <init>(Lu3/p0/j/f$b;)V
    .locals 11

    const-string v0, "builder"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-boolean v0, p1, Lu3/p0/j/f$b;->h:Z

    .line 3
    iput-boolean v0, p0, Lu3/p0/j/f;->a:Z

    .line 4
    iget-object v1, p1, Lu3/p0/j/f$b;->e:Lu3/p0/j/f$c;

    .line 5
    iput-object v1, p0, Lu3/p0/j/f;->b:Lu3/p0/j/f$c;

    .line 6
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lu3/p0/j/f;->c:Ljava/util/Map;

    .line 7
    iget-object v1, p1, Lu3/p0/j/f$b;->b:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 8
    iput-object v1, p0, Lu3/p0/j/f;->d:Ljava/lang/String;

    .line 9
    iget-boolean v3, p1, Lu3/p0/j/f$b;->h:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    .line 10
    :goto_0
    iput v3, p0, Lu3/p0/j/f;->f:I

    .line 11
    iget-object v3, p1, Lu3/p0/j/f$b;->i:Lu3/p0/f/d;

    .line 12
    iput-object v3, p0, Lu3/p0/j/f;->h:Lu3/p0/f/d;

    .line 13
    invoke-virtual {v3}, Lu3/p0/f/d;->f()Lu3/p0/f/c;

    move-result-object v4

    iput-object v4, p0, Lu3/p0/j/f;->i:Lu3/p0/f/c;

    .line 14
    invoke-virtual {v3}, Lu3/p0/f/d;->f()Lu3/p0/f/c;

    move-result-object v5

    iput-object v5, p0, Lu3/p0/j/f;->j:Lu3/p0/f/c;

    .line 15
    invoke-virtual {v3}, Lu3/p0/f/d;->f()Lu3/p0/f/c;

    move-result-object v3

    iput-object v3, p0, Lu3/p0/j/f;->k:Lu3/p0/f/c;

    .line 16
    iget-object v3, p1, Lu3/p0/j/f$b;->f:Lu3/p0/j/s;

    .line 17
    iput-object v3, p0, Lu3/p0/j/f;->l:Lu3/p0/j/s;

    .line 18
    new-instance v3, Lu3/p0/j/t;

    invoke-direct {v3}, Lu3/p0/j/t;-><init>()V

    .line 19
    iget-boolean v5, p1, Lu3/p0/j/f$b;->h:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x7

    const/high16 v6, 0x1000000

    .line 20
    invoke-virtual {v3, v5, v6}, Lu3/p0/j/t;->c(II)Lu3/p0/j/t;

    .line 21
    :cond_1
    iput-object v3, p0, Lu3/p0/j/f;->s:Lu3/p0/j/t;

    .line 22
    sget-object v3, Lu3/p0/j/f;->C:Lu3/p0/j/t;

    iput-object v3, p0, Lu3/p0/j/f;->t:Lu3/p0/j/t;

    .line 23
    invoke-virtual {v3}, Lu3/p0/j/t;->a()I

    move-result v3

    int-to-long v5, v3

    iput-wide v5, p0, Lu3/p0/j/f;->x:J

    .line 24
    iget-object v3, p1, Lu3/p0/j/f$b;->a:Ljava/net/Socket;

    if-eqz v3, :cond_5

    .line 25
    iput-object v3, p0, Lu3/p0/j/f;->y:Ljava/net/Socket;

    .line 26
    new-instance v3, Lu3/p0/j/p;

    .line 27
    iget-object v5, p1, Lu3/p0/j/f$b;->d:Lv3/g;

    if-eqz v5, :cond_4

    .line 28
    invoke-direct {v3, v5, v0}, Lu3/p0/j/p;-><init>(Lv3/g;Z)V

    iput-object v3, p0, Lu3/p0/j/f;->z:Lu3/p0/j/p;

    .line 29
    new-instance v3, Lu3/p0/j/f$d;

    new-instance v5, Lu3/p0/j/n;

    .line 30
    iget-object v6, p1, Lu3/p0/j/f$b;->c:Lv3/h;

    if-eqz v6, :cond_3

    .line 31
    invoke-direct {v5, v6, v0}, Lu3/p0/j/n;-><init>(Lv3/h;Z)V

    invoke-direct {v3, p0, v5}, Lu3/p0/j/f$d;-><init>(Lu3/p0/j/f;Lu3/p0/j/n;)V

    iput-object v3, p0, Lu3/p0/j/f;->A:Lu3/p0/j/f$d;

    .line 32
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lu3/p0/j/f;->B:Ljava/util/Set;

    .line 33
    iget p1, p1, Lu3/p0/j/f$b;->g:I

    if-eqz p1, :cond_2

    .line 34
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    const-string p1, " ping"

    .line 35
    invoke-static {v1, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 36
    new-instance p1, Lu3/p0/j/f$a;

    move-object v5, p1

    move-object v6, v7

    move-object v8, p0

    move-wide v9, v2

    invoke-direct/range {v5 .. v10}, Lu3/p0/j/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lu3/p0/j/f;J)V

    invoke-virtual {v4, p1, v2, v3}, Lu3/p0/f/c;->c(Lu3/p0/f/a;J)V

    :cond_2
    return-void

    :cond_3
    const-string p1, "source"

    .line 37
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_4
    const-string p1, "sink"

    .line 38
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_5
    const-string p1, "socket"

    .line 39
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_6
    const-string p1, "connectionName"

    .line 40
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public final E(ZII)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lu3/p0/j/f;->z:Lu3/p0/j/p;

    invoke-virtual {v0, p1, p2, p3}, Lu3/p0/j/p;->a(ZII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    sget-object p2, Lu3/p0/j/b;->c:Lu3/p0/j/b;

    invoke-virtual {p0, p2, p2, p1}, Lu3/p0/j/f;->b(Lu3/p0/j/b;Lu3/p0/j/b;Ljava/io/IOException;)V

    :goto_0
    return-void
.end method

.method public final I(ILu3/p0/j/b;)V
    .locals 11

    const-string v0, "errorCode"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lu3/p0/j/f;->i:Lu3/p0/f/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lu3/p0/j/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] writeSynReset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2
    new-instance v1, Lu3/p0/j/f$e;

    const/4 v7, 0x1

    move-object v3, v1

    move-object v4, v6

    move v5, v7

    move-object v8, p0

    move v9, p1

    move-object v10, p2

    invoke-direct/range {v3 .. v10}, Lu3/p0/j/f$e;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLu3/p0/j/f;ILu3/p0/j/b;)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lu3/p0/f/c;->c(Lu3/p0/f/a;J)V

    return-void
.end method

.method public final J(IJ)V
    .locals 12

    .line 1
    iget-object v0, p0, Lu3/p0/j/f;->i:Lu3/p0/f/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lu3/p0/j/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] windowUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2
    new-instance v1, Lu3/p0/j/f$f;

    const/4 v7, 0x1

    move-object v3, v1

    move-object v4, v6

    move v5, v7

    move-object v8, p0

    move v9, p1

    move-wide v10, p2

    invoke-direct/range {v3 .. v11}, Lu3/p0/j/f$f;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLu3/p0/j/f;IJ)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lu3/p0/f/c;->c(Lu3/p0/f/a;J)V

    return-void
.end method

.method public final b(Lu3/p0/j/b;Lu3/p0/j/b;Ljava/io/IOException;)V
    .locals 3

    const-string v0, "connectionCode"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "streamCode"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lu3/p0/c;->a:[B

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lu3/p0/j/f;->l(Lu3/p0/j/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    .line 3
    monitor-enter p0

    .line 4
    :try_start_1
    iget-object v0, p0, Lu3/p0/j/f;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    iget-object p1, p0, Lu3/p0/j/f;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    new-array v0, v1, [Lu3/p0/j/o;

    .line 6
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, [Lu3/p0/j/o;

    .line 7
    iget-object v0, p0, Lu3/p0/j/f;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ls1/p;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p2}, Ls1/p;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :cond_1
    :goto_0
    monitor-exit p0

    if-eqz p1, :cond_2

    .line 10
    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 11
    :try_start_2
    invoke-virtual {v2, p2, p3}, Lu3/p0/j/o;->c(Lu3/p0/j/b;Ljava/io/IOException;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 12
    :cond_2
    :try_start_3
    iget-object p1, p0, Lu3/p0/j/f;->z:Lu3/p0/j/p;

    invoke-virtual {p1}, Lu3/p0/j/p;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 13
    :catch_2
    :try_start_4
    iget-object p1, p0, Lu3/p0/j/f;->y:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 14
    :catch_3
    iget-object p1, p0, Lu3/p0/j/f;->i:Lu3/p0/f/c;

    invoke-virtual {p1}, Lu3/p0/f/c;->f()V

    .line 15
    iget-object p1, p0, Lu3/p0/j/f;->j:Lu3/p0/f/c;

    invoke-virtual {p1}, Lu3/p0/f/c;->f()V

    .line 16
    iget-object p1, p0, Lu3/p0/j/f;->k:Lu3/p0/f/c;

    invoke-virtual {p1}, Lu3/p0/f/c;->f()V

    return-void

    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    throw p1
.end method

.method public close()V
    .locals 3

    .line 1
    sget-object v0, Lu3/p0/j/b;->b:Lu3/p0/j/b;

    sget-object v1, Lu3/p0/j/b;->g:Lu3/p0/j/b;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lu3/p0/j/f;->b(Lu3/p0/j/b;Lu3/p0/j/b;Ljava/io/IOException;)V

    return-void
.end method

.method public final declared-synchronized d(I)Lu3/p0/j/o;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lu3/p0/j/f;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu3/p0/j/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final j(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final declared-synchronized k(I)Lu3/p0/j/o;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lu3/p0/j/f;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu3/p0/j/o;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final l(Lu3/p0/j/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "statusCode"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lu3/p0/j/f;->z:Lu3/p0/j/p;

    monitor-enter v0

    .line 2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-boolean v1, p0, Lu3/p0/j/f;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 5
    :try_start_3
    iput-boolean v1, p0, Lu3/p0/j/f;->g:Z

    .line 6
    iget v1, p0, Lu3/p0/j/f;->e:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7
    :try_start_4
    monitor-exit p0

    .line 8
    iget-object v2, p0, Lu3/p0/j/f;->z:Lu3/p0/j/p;

    sget-object v3, Lu3/p0/c;->a:[B

    invoke-virtual {v2, v1, p1, v3}, Lu3/p0/j/p;->j(ILu3/p0/j/b;[B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_5
    monitor-exit p0

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    .line 11
    monitor-exit v0

    throw p1
.end method

.method public final declared-synchronized q(J)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lu3/p0/j/f;->u:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lu3/p0/j/f;->u:J

    .line 2
    iget-wide p1, p0, Lu3/p0/j/f;->v:J

    sub-long/2addr v0, p1

    .line 3
    iget-object p1, p0, Lu3/p0/j/f;->s:Lu3/p0/j/t;

    invoke-virtual {p1}, Lu3/p0/j/t;->a()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-long p1, p1

    cmp-long p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Lu3/p0/j/f;->J(IJ)V

    .line 5
    iget-wide p1, p0, Lu3/p0/j/f;->v:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lu3/p0/j/f;->v:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final s(IZLv3/f;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1
    iget-object p4, p0, Lu3/p0/j/f;->z:Lu3/p0/j/p;

    invoke-virtual {p4, p2, p1, p3, v3}, Lu3/p0/j/p;->r(ZILv3/f;I)V

    return-void

    :cond_0
    :goto_0
    cmp-long v2, p4, v0

    if-lez v2, :cond_4

    .line 2
    monitor-enter p0

    .line 3
    :goto_1
    :try_start_0
    iget-wide v4, p0, Lu3/p0/j/f;->w:J

    iget-wide v6, p0, Lu3/p0/j/f;->x:J

    cmp-long v2, v4, v6

    if-ltz v2, :cond_2

    .line 4
    iget-object v2, p0, Lu3/p0/j/f;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 6
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sub-long/2addr v6, v4

    .line 7
    :try_start_1
    invoke-static {p4, p5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    .line 8
    iget-object v4, p0, Lu3/p0/j/f;->z:Lu3/p0/j/p;

    .line 9
    iget v4, v4, Lu3/p0/j/p;->b:I

    .line 10
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 11
    iget-wide v4, p0, Lu3/p0/j/f;->w:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lu3/p0/j/f;->w:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    monitor-exit p0

    int-to-long v4, v2

    sub-long/2addr p4, v4

    .line 13
    iget-object v4, p0, Lu3/p0/j/f;->z:Lu3/p0/j/p;

    if-eqz p2, :cond_3

    cmp-long v5, p4, v0

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    invoke-virtual {v4, v5, p1, p3, v2}, Lu3/p0/j/p;->r(ZILv3/f;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 14
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 15
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    :goto_3
    monitor-exit p0

    throw p1

    :cond_4
    return-void
.end method
