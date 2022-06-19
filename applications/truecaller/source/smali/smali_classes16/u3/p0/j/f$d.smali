.class public final Lu3/p0/j/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/p0/j/n$b;
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu3/p0/j/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lu3/p0/j/n$b;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lu3/p0/j/n;

.field public final synthetic b:Lu3/p0/j/f;


# direct methods
.method public constructor <init>(Lu3/p0/j/f;Lu3/p0/j/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu3/p0/j/n;",
            ")V"
        }
    .end annotation

    const-string v0, "reader"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lu3/p0/j/f$d;->a:Lu3/p0/j/n;

    return-void
.end method


# virtual methods
.method public a(ZII)V
    .locals 11

    if-eqz p1, :cond_3

    .line 1
    iget-object p1, p0, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    monitor-enter p1

    const/4 p3, 0x1

    const-wide/16 v0, 0x1

    if-eq p2, p3, :cond_2

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    const/4 p3, 0x3

    if-eq p2, p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    iget-object p2, p0, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    .line 3
    iget-wide v2, p2, Lu3/p0/j/f;->q:J

    add-long/2addr v2, v0

    .line 4
    iput-wide v2, p2, Lu3/p0/j/f;->q:J

    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p2, p0, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    .line 7
    iget-wide v2, p2, Lu3/p0/j/f;->p:J

    add-long/2addr v2, v0

    .line 8
    iput-wide v2, p2, Lu3/p0/j/f;->p:J

    goto :goto_0

    .line 9
    :cond_2
    iget-object p2, p0, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    .line 10
    iget-wide v2, p2, Lu3/p0/j/f;->n:J

    add-long/2addr v2, v0

    .line 11
    iput-wide v2, p2, Lu3/p0/j/f;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :goto_0
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    .line 13
    :cond_3
    iget-object p1, p0, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    .line 14
    iget-object p1, p1, Lu3/p0/j/f;->i:Lu3/p0/f/c;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    .line 16
    iget-object v1, v1, Lu3/p0/j/f;->d:Ljava/lang/String;

    const-string v2, " ping"

    .line 17
    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v0, 0x0

    const/4 v7, 0x1

    .line 18
    new-instance v2, Lu3/p0/j/f$d$b;

    move-object v3, v2

    move-object v4, v6

    move v5, v7

    move-object v8, p0

    move v9, p2

    move v10, p3

    invoke-direct/range {v3 .. v10}, Lu3/p0/j/f$d$b;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLu3/p0/j/f$d;II)V

    invoke-virtual {p1, v2, v0, v1}, Lu3/p0/f/c;->c(Lu3/p0/f/a;J)V

    :goto_1
    return-void
.end method

.method public b(IILjava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lu3/p0/j/c;",
            ">;)V"
        }
    .end annotation

    const-string p1, "requestHeaders"

    invoke-static {p3, p1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v5, p0, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    .line 2
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "requestHeaders"

    invoke-static {p3, p1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    monitor-enter v5

    .line 4
    :try_start_0
    iget-object p1, v5, Lu3/p0/j/f;->B:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    sget-object p1, Lu3/p0/j/b;->c:Lu3/p0/j/b;

    invoke-virtual {v5, p2, p1}, Lu3/p0/j/f;->I(ILu3/p0/j/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v5

    goto :goto_0

    .line 7
    :cond_0
    :try_start_1
    iget-object p1, v5, Lu3/p0/j/f;->B:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit v5

    .line 9
    iget-object p1, v5, Lu3/p0/j/f;->j:Lu3/p0/f/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Lu3/p0/j/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] onRequest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v8, 0x0

    const/4 v4, 0x1

    .line 10
    new-instance v10, Lu3/p0/j/j;

    move-object v0, v10

    move-object v1, v3

    move v2, v4

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lu3/p0/j/j;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLu3/p0/j/f;ILjava/util/List;)V

    invoke-virtual {p1, v10, v8, v9}, Lu3/p0/f/c;->c(Lu3/p0/f/a;J)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v5

    throw p1
.end method

.method public c(IJ)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    .line 3
    iget-wide v1, v0, Lu3/p0/j/f;->x:J

    add-long/2addr v1, p2

    .line 4
    iput-wide v1, v0, Lu3/p0/j/f;->x:J

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    .line 7
    :cond_0
    iget-object v0, p0, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    invoke-virtual {v0, p1}, Lu3/p0/j/f;->d(I)Lu3/p0/j/o;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    monitor-enter p1

    .line 9
    :try_start_1
    iget-wide v0, p1, Lu3/p0/j/o;->d:J

    add-long/2addr v0, p2

    iput-wide v0, p1, Lu3/p0/j/o;->d:J

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-lez p2, :cond_1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    :cond_1
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception p2

    monitor-exit p1

    throw p2

    :cond_2
    :goto_0
    return-void
.end method

.method public e(ILu3/p0/j/b;)V
    .locals 10

    const-string v0, "errorCode"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    invoke-virtual {v1, p1}, Lu3/p0/j/f;->j(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v7, p0, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    .line 3
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, v7, Lu3/p0/j/f;->j:Lu3/p0/f/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v7, Lu3/p0/j/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] onReset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5
    new-instance v1, Lu3/p0/j/k;

    const/4 v6, 0x1

    move-object v2, v1

    move-object v3, v5

    move v4, v6

    move v8, p1

    move-object v9, p2

    invoke-direct/range {v2 .. v9}, Lu3/p0/j/k;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLu3/p0/j/f;ILu3/p0/j/b;)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lu3/p0/f/c;->c(Lu3/p0/f/a;J)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    invoke-virtual {v0, p1}, Lu3/p0/j/f;->k(I)Lu3/p0/j/o;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1, p2}, Lu3/p0/j/o;->k(Lu3/p0/j/b;)V

    :cond_1
    return-void
.end method

.method public f(ILu3/p0/j/b;Lv3/i;)V
    .locals 3

    const-string v0, "errorCode"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "debugData"

    invoke-static {p3, p2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p3}, Lv3/i;->f()I

    .line 2
    iget-object p2, p0, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    monitor-enter p2

    .line 3
    :try_start_0
    iget-object p3, p0, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    .line 4
    iget-object p3, p3, Lu3/p0/j/f;->c:Ljava/util/Map;

    .line 5
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    const/4 v0, 0x0

    new-array v1, v0, [Lu3/p0/j/o;

    .line 6
    invoke-interface {p3, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_2

    check-cast p3, [Lu3/p0/j/o;

    .line 7
    iget-object v1, p0, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    const/4 v2, 0x1

    .line 8
    iput-boolean v2, v1, Lu3/p0/j/f;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p2

    .line 10
    array-length p2, p3

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p3, v0

    .line 11
    iget v2, v1, Lu3/p0/j/o;->m:I

    if-le v2, p1, :cond_0

    .line 12
    invoke-virtual {v1}, Lu3/p0/j/o;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13
    sget-object v2, Lu3/p0/j/b;->f:Lu3/p0/j/b;

    invoke-virtual {v1, v2}, Lu3/p0/j/o;->k(Lu3/p0/j/b;)V

    .line 14
    iget-object v2, p0, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    .line 15
    iget v1, v1, Lu3/p0/j/o;->m:I

    .line 16
    invoke-virtual {v2, v1}, Lu3/p0/j/f;->k(I)Lu3/p0/j/o;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 17
    :cond_2
    :try_start_1
    new-instance p1, Ls1/p;

    const-string p3, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p3}, Ls1/p;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p2

    throw p1
.end method

.method public g(ZLu3/p0/j/t;)V
    .locals 12

    const-string v0, "settings"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    .line 2
    iget-object v0, v0, Lu3/p0/j/f;->i:Lu3/p0/f/c;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    .line 4
    iget-object v2, v2, Lu3/p0/j/f;->d:Ljava/lang/String;

    const-string v3, " applyAndAckSettings"

    .line 5
    invoke-static {v1, v2, v3}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 6
    new-instance v1, Lu3/p0/j/f$d$c;

    const/4 v8, 0x1

    move-object v4, v1

    move-object v5, v7

    move v6, v8

    move-object v9, p0

    move v10, p1

    move-object v11, p2

    invoke-direct/range {v4 .. v11}, Lu3/p0/j/f$d$c;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLu3/p0/j/f$d;ZLu3/p0/j/t;)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lu3/p0/f/c;->c(Lu3/p0/f/a;J)V

    return-void
.end method

.method public i(ZIILjava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Lu3/p0/j/c;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v12, p0

    move/from16 v0, p2

    move-object/from16 v10, p4

    const-string v1, "headerBlock"

    invoke-static {v10, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, v12, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    invoke-virtual {v1, v0}, Lu3/p0/j/f;->j(I)Z

    move-result v1

    const-wide/16 v13, 0x0

    const/16 v7, 0x5b

    if-eqz v1, :cond_0

    .line 2
    iget-object v6, v12, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    .line 3
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "requestHeaders"

    invoke-static {v10, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v11, v6, Lu3/p0/j/f;->j:Lu3/p0/f/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v6, Lu3/p0/j/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] onHeaders"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5
    new-instance v15, Lu3/p0/j/i;

    const/4 v5, 0x1

    move-object v1, v15

    move-object v2, v4

    move v3, v5

    move/from16 v7, p2

    move-object/from16 v8, p4

    move/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lu3/p0/j/i;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLu3/p0/j/f;ILjava/util/List;Z)V

    invoke-virtual {v11, v15, v13, v14}, Lu3/p0/f/c;->c(Lu3/p0/f/a;J)V

    return-void

    .line 6
    :cond_0
    iget-object v15, v12, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    monitor-enter v15

    .line 7
    :try_start_0
    iget-object v1, v12, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    invoke-virtual {v1, v0}, Lu3/p0/j/f;->d(I)Lu3/p0/j/o;

    move-result-object v8

    if-nez v8, :cond_4

    .line 8
    iget-object v1, v12, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    .line 9
    iget-boolean v2, v1, Lu3/p0/j/f;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 10
    monitor-exit v15

    return-void

    .line 11
    :cond_1
    :try_start_1
    iget v2, v1, Lu3/p0/j/f;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v0, v2, :cond_2

    .line 12
    monitor-exit v15

    return-void

    .line 13
    :cond_2
    :try_start_2
    rem-int/lit8 v2, v0, 0x2

    .line 14
    iget v1, v1, Lu3/p0/j/f;->f:I

    .line 15
    rem-int/lit8 v1, v1, 0x2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v2, v1, :cond_3

    monitor-exit v15

    return-void

    .line 16
    :cond_3
    :try_start_3
    invoke-static/range {p4 .. p4}, Lu3/p0/c;->v(Ljava/util/List;)Lu3/z;

    move-result-object v6

    .line 17
    new-instance v9, Lu3/p0/j/o;

    iget-object v3, v12, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    const/4 v4, 0x0

    move-object v1, v9

    move/from16 v2, p2

    move/from16 v5, p1

    invoke-direct/range {v1 .. v6}, Lu3/p0/j/o;-><init>(ILu3/p0/j/f;ZZLu3/z;)V

    .line 18
    iget-object v1, v12, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    .line 19
    iput v0, v1, Lu3/p0/j/f;->e:I

    .line 20
    iget-object v1, v1, Lu3/p0/j/f;->c:Ljava/util/Map;

    .line 21
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v1, v12, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    .line 23
    iget-object v1, v1, Lu3/p0/j/f;->h:Lu3/p0/f/d;

    .line 24
    invoke-virtual {v1}, Lu3/p0/f/d;->f()Lu3/p0/f/c;

    move-result-object v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v12, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    .line 25
    iget-object v2, v2, Lu3/p0/j/f;->d:Ljava/lang/String;

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] onStream"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 27
    new-instance v7, Lu3/p0/j/f$d$a;

    move-object v1, v7

    move-object v2, v4

    move v3, v5

    move-object v6, v9

    move-object v9, v7

    move-object/from16 v7, p0

    move-object v13, v9

    move/from16 v9, p2

    move-object/from16 v10, p4

    move-object v0, v11

    move/from16 v11, p1

    invoke-direct/range {v1 .. v11}, Lu3/p0/j/f$d$a;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLu3/p0/j/o;Lu3/p0/j/f$d;Lu3/p0/j/o;ILjava/util/List;Z)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v13, v1, v2}, Lu3/p0/f/c;->c(Lu3/p0/f/a;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 28
    monitor-exit v15

    return-void

    .line 29
    :cond_4
    monitor-exit v15

    .line 30
    invoke-static/range {p4 .. p4}, Lu3/p0/c;->v(Ljava/util/List;)Lu3/z;

    move-result-object v0

    move/from16 v1, p1

    invoke-virtual {v8, v0, v1}, Lu3/p0/j/o;->j(Lu3/z;Z)V

    return-void

    :catchall_0
    move-exception v0

    .line 31
    monitor-exit v15

    throw v0
.end method

.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    sget-object v0, Lu3/p0/j/b;->d:Lu3/p0/j/b;

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lu3/p0/j/f$d;->a:Lu3/p0/j/n;

    invoke-virtual {v2, p0}, Lu3/p0/j/n;->d(Lu3/p0/j/n$b;)V

    .line 3
    :goto_0
    iget-object v2, p0, Lu3/p0/j/f$d;->a:Lu3/p0/j/n;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p0}, Lu3/p0/j/n;->b(ZLu3/p0/j/n$b;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v2, Lu3/p0/j/b;->b:Lu3/p0/j/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    sget-object v0, Lu3/p0/j/b;->g:Lu3/p0/j/b;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    iget-object v3, p0, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    invoke-virtual {v3, v2, v0, v1}, Lu3/p0/j/f;->b(Lu3/p0/j/b;Lu3/p0/j/b;Ljava/io/IOException;)V

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v2

    move-object v3, v2

    move-object v2, v0

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v2, v0

    .line 7
    :goto_1
    :try_start_2
    sget-object v0, Lu3/p0/j/b;->c:Lu3/p0/j/b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8
    iget-object v2, p0, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    invoke-virtual {v2, v0, v0, v1}, Lu3/p0/j/f;->b(Lu3/p0/j/b;Lu3/p0/j/b;Ljava/io/IOException;)V

    .line 9
    :goto_2
    iget-object v0, p0, Lu3/p0/j/f$d;->a:Lu3/p0/j/n;

    invoke-static {v0}, Lu3/p0/c;->d(Ljava/io/Closeable;)V

    .line 10
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0

    :catchall_1
    move-exception v3

    .line 11
    :goto_3
    iget-object v4, p0, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    invoke-virtual {v4, v2, v0, v1}, Lu3/p0/j/f;->b(Lu3/p0/j/b;Lu3/p0/j/b;Ljava/io/IOException;)V

    .line 12
    iget-object v0, p0, Lu3/p0/j/f$d;->a:Lu3/p0/j/n;

    invoke-static {v0}, Lu3/p0/c;->d(Ljava/io/Closeable;)V

    throw v3
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public l(ZILv3/h;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p2

    move-object/from16 v2, p3

    move/from16 v10, p4

    const-string v3, "source"

    invoke-static {v2, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v3, v1, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    invoke-virtual {v3, v0}, Lu3/p0/j/f;->j(I)Z

    move-result v3

    const-wide/16 v12, 0x0

    if-eqz v3, :cond_0

    .line 2
    iget-object v7, v1, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    .line 3
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "source"

    invoke-static {v2, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v9, Lv3/f;

    invoke-direct {v9}, Lv3/f;-><init>()V

    int-to-long v3, v10

    .line 5
    invoke-interface {v2, v3, v4}, Lv3/h;->y1(J)V

    .line 6
    invoke-interface {v2, v9, v3, v4}, Lv3/b0;->d2(Lv3/f;J)J

    .line 7
    iget-object v14, v7, Lu3/p0/j/f;->j:Lu3/p0/f/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v7, Lu3/p0/j/f;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] onData"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 8
    new-instance v15, Lu3/p0/j/h;

    const/4 v6, 0x1

    move-object v2, v15

    move-object v3, v5

    move v4, v6

    move/from16 v8, p2

    move/from16 v10, p4

    move/from16 v11, p1

    invoke-direct/range {v2 .. v11}, Lu3/p0/j/h;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLu3/p0/j/f;ILv3/f;IZ)V

    invoke-virtual {v14, v15, v12, v13}, Lu3/p0/f/c;->c(Lu3/p0/f/a;J)V

    return-void

    .line 9
    :cond_0
    iget-object v3, v1, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    invoke-virtual {v3, v0}, Lu3/p0/j/f;->d(I)Lu3/p0/j/o;

    move-result-object v3

    if-nez v3, :cond_1

    .line 10
    iget-object v3, v1, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    sget-object v4, Lu3/p0/j/b;->c:Lu3/p0/j/b;

    invoke-virtual {v3, v0, v4}, Lu3/p0/j/f;->I(ILu3/p0/j/b;)V

    .line 11
    iget-object v0, v1, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    int-to-long v3, v10

    invoke-virtual {v0, v3, v4}, Lu3/p0/j/f;->q(J)V

    .line 12
    invoke-interface {v2, v3, v4}, Lv3/h;->skip(J)V

    return-void

    :cond_1
    const-string v0, "source"

    .line 13
    invoke-static {v2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v0, Lu3/p0/c;->a:[B

    .line 15
    iget-object v0, v3, Lu3/p0/j/o;->g:Lu3/p0/j/o$b;

    int-to-long v4, v10

    .line 16
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "source"

    invoke-static {v2, v6}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_0
    cmp-long v6, v4, v12

    const/4 v7, 0x1

    if-lez v6, :cond_b

    .line 17
    iget-object v6, v0, Lu3/p0/j/o$b;->f:Lu3/p0/j/o;

    monitor-enter v6

    .line 18
    :try_start_0
    iget-boolean v8, v0, Lu3/p0/j/o$b;->e:Z

    .line 19
    iget-object v9, v0, Lu3/p0/j/o$b;->b:Lv3/f;

    .line 20
    iget-wide v9, v9, Lv3/f;->b:J

    add-long/2addr v9, v4

    .line 21
    iget-wide v14, v0, Lu3/p0/j/o$b;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmp-long v9, v9, v14

    const/4 v10, 0x0

    if-lez v9, :cond_3

    move v9, v7

    goto :goto_1

    :cond_3
    move v9, v10

    .line 22
    :goto_1
    monitor-exit v6

    if-eqz v9, :cond_4

    .line 23
    invoke-interface {v2, v4, v5}, Lv3/h;->skip(J)V

    .line 24
    iget-object v0, v0, Lu3/p0/j/o$b;->f:Lu3/p0/j/o;

    sget-object v2, Lu3/p0/j/b;->e:Lu3/p0/j/b;

    invoke-virtual {v0, v2}, Lu3/p0/j/o;->e(Lu3/p0/j/b;)V

    goto :goto_5

    :cond_4
    if-eqz v8, :cond_5

    .line 25
    invoke-interface {v2, v4, v5}, Lv3/h;->skip(J)V

    goto :goto_5

    .line 26
    :cond_5
    iget-object v6, v0, Lu3/p0/j/o$b;->a:Lv3/f;

    invoke-interface {v2, v6, v4, v5}, Lv3/b0;->d2(Lv3/f;J)J

    move-result-wide v8

    const-wide/16 v14, -0x1

    cmp-long v6, v8, v14

    if-eqz v6, :cond_a

    sub-long/2addr v4, v8

    .line 27
    iget-object v6, v0, Lu3/p0/j/o$b;->f:Lu3/p0/j/o;

    monitor-enter v6

    .line 28
    :try_start_1
    iget-boolean v8, v0, Lu3/p0/j/o$b;->c:Z

    if-eqz v8, :cond_6

    .line 29
    iget-object v7, v0, Lu3/p0/j/o$b;->a:Lv3/f;

    .line 30
    iget-wide v8, v7, Lv3/f;->b:J

    .line 31
    invoke-virtual {v7, v8, v9}, Lv3/f;->skip(J)V

    goto :goto_4

    .line 32
    :cond_6
    iget-object v8, v0, Lu3/p0/j/o$b;->b:Lv3/f;

    .line 33
    iget-wide v14, v8, Lv3/f;->b:J

    cmp-long v9, v14, v12

    if-nez v9, :cond_7

    goto :goto_2

    :cond_7
    move v7, v10

    .line 34
    :goto_2
    iget-object v9, v0, Lu3/p0/j/o$b;->a:Lv3/f;

    invoke-virtual {v8, v9}, Lv3/f;->k1(Lv3/b0;)J

    if-eqz v7, :cond_9

    .line 35
    iget-object v7, v0, Lu3/p0/j/o$b;->f:Lu3/p0/j/o;

    if-eqz v7, :cond_8

    .line 36
    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    goto :goto_3

    :cond_8
    new-instance v0, Ls1/p;

    const-string v2, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v0, v2}, Ls1/p;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    :goto_3
    move-wide v8, v12

    .line 37
    :goto_4
    monitor-exit v6

    cmp-long v6, v8, v12

    if-lez v6, :cond_2

    .line 38
    invoke-virtual {v0, v8, v9}, Lu3/p0/j/o$b;->b(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 39
    monitor-exit v6

    throw v0

    .line 40
    :cond_a
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :catchall_1
    move-exception v0

    .line 41
    monitor-exit v6

    throw v0

    :cond_b
    :goto_5
    if-eqz p1, :cond_c

    .line 42
    sget-object v0, Lu3/p0/c;->b:Lu3/z;

    invoke-virtual {v3, v0, v7}, Lu3/p0/j/o;->j(Lu3/z;Z)V

    :cond_c
    return-void
.end method

.method public m(IIIZ)V
    .locals 0

    return-void
.end method
