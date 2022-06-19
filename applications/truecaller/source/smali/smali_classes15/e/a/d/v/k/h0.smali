.class public final Le/a/d/v/k/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/i0;
.implements Le/a/d/v/k/d0;


# instance fields
.field public a:I

.field public final b:Lq3/a/i0;

.field public final c:Ljava/lang/String;

.field public final d:Le/a/d/x/q/h;

.field public final e:Le/a/d/c0/f0;


# direct methods
.method public constructor <init>(Lq3/a/i0;Ljava/lang/String;Le/a/d/x/q/h;Le/a/d/c0/f0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "coroutineScope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rtcManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/v/k/h0;->b:Lq3/a/i0;

    iput-object p2, p0, Le/a/d/v/k/h0;->c:Ljava/lang/String;

    iput-object p3, p0, Le/a/d/v/k/h0;->d:Le/a/d/x/q/h;

    iput-object p4, p0, Le/a/d/v/k/h0;->e:Le/a/d/c0/f0;

    .line 2
    invoke-interface {p3}, Le/a/d/x/q/h;->a()Lq3/a/x2/i1;

    move-result-object p1

    .line 3
    new-instance p2, Le/a/d/v/k/e0;

    invoke-direct {p2, p1}, Le/a/d/v/k/e0;-><init>(Lq3/a/x2/f;)V

    .line 4
    new-instance p1, Le/a/d/v/k/f0;

    invoke-direct {p1, p2}, Le/a/d/v/k/f0;-><init>(Lq3/a/x2/f;)V

    .line 5
    new-instance p2, Le/a/d/v/k/g0;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Le/a/d/v/k/g0;-><init>(Le/a/d/v/k/h0;Ls1/w/d;)V

    .line 6
    new-instance p3, Lq3/a/x2/u0;

    invoke-direct {p3, p1, p2}, Lq3/a/x2/u0;-><init>(Lq3/a/x2/f;Ls1/z/b/p;)V

    .line 7
    invoke-static {p3, p0}, Ls1/a/a/a/v0/f/d;->x2(Lq3/a/x2/f;Lq3/a/i0;)Lq3/a/p1;

    return-void
.end method


# virtual methods
.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    iget-object v0, p0, Le/a/d/v/k/h0;->b:Lq3/a/i0;

    invoke-interface {v0}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized l(Ljava/lang/Long;)V
    .locals 6

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1
    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Le/a/d/v/k/h0;->d:Le/a/d/x/q/h;

    invoke-interface {v0}, Le/a/d/x/q/h;->h()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 3
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    iget v1, p0, Le/a/d/v/k/h0;->a:I

    if-le v0, v1, :cond_1

    .line 5
    iput v0, p0, Le/a/d/v/k/h0;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :cond_1
    :try_start_2
    monitor-exit p0

    .line 7
    iget-object v0, p0, Le/a/d/v/k/h0;->e:Le/a/d/c0/f0;

    const/4 v1, 0x1

    .line 8
    iget-object v2, p0, Le/a/d/v/k/h0;->c:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 10
    iget p1, p0, Le/a/d/v/k/h0;->a:I

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 11
    invoke-interface/range {v0 .. v5}, Le/a/d/c0/f0;->f(ZLjava/lang/String;JLjava/lang/Integer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 13
    :try_start_3
    monitor-exit p0

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
