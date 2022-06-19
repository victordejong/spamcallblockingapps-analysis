.class public final Le/p/a/y/k/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv3/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/p/a/y/k/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:Lv3/m;

.field public b:Z

.field public final synthetic c:Le/p/a/y/k/d;


# direct methods
.method public constructor <init>(Le/p/a/y/k/d;Le/p/a/y/k/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/p/a/y/k/d$c;->c:Le/p/a/y/k/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Lv3/m;

    .line 3
    iget-object p1, p1, Le/p/a/y/k/d;->c:Lv3/g;

    .line 4
    invoke-interface {p1}, Lv3/z;->i()Lv3/c0;

    move-result-object p1

    invoke-direct {p2, p1}, Lv3/m;-><init>(Lv3/c0;)V

    iput-object p2, p0, Le/p/a/y/k/d$c;->a:Lv3/m;

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Le/p/a/y/k/d$c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    :try_start_1
    iput-boolean v0, p0, Le/p/a/y/k/d$c;->b:Z

    .line 3
    iget-object v0, p0, Le/p/a/y/k/d$c;->c:Le/p/a/y/k/d;

    .line 4
    iget-object v0, v0, Le/p/a/y/k/d;->c:Lv3/g;

    const-string v1, "0\r\n\r\n"

    .line 5
    invoke-interface {v0, v1}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    .line 6
    iget-object v0, p0, Le/p/a/y/k/d$c;->c:Le/p/a/y/k/d;

    iget-object v1, p0, Le/p/a/y/k/d$c;->a:Lv3/m;

    invoke-static {v0, v1}, Le/p/a/y/k/d;->h(Le/p/a/y/k/d;Lv3/m;)V

    .line 7
    iget-object v0, p0, Le/p/a/y/k/d$c;->c:Le/p/a/y/k/d;

    const/4 v1, 0x3

    .line 8
    iput v1, v0, Le/p/a/y/k/d;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Le/p/a/y/k/d$c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Le/p/a/y/k/d$c;->c:Le/p/a/y/k/d;

    .line 3
    iget-object v0, v0, Le/p/a/y/k/d;->c:Lv3/g;

    .line 4
    invoke-interface {v0}, Lv3/g;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h1(Lv3/f;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/p/a/y/k/d$c;->b:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/p/a/y/k/d$c;->c:Le/p/a/y/k/d;

    .line 3
    iget-object v0, v0, Le/p/a/y/k/d;->c:Lv3/g;

    .line 4
    invoke-interface {v0, p2, p3}, Lv3/g;->w0(J)Lv3/g;

    .line 5
    iget-object v0, p0, Le/p/a/y/k/d$c;->c:Le/p/a/y/k/d;

    .line 6
    iget-object v0, v0, Le/p/a/y/k/d;->c:Lv3/g;

    const-string v1, "\r\n"

    .line 7
    invoke-interface {v0, v1}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    .line 8
    iget-object v0, p0, Le/p/a/y/k/d$c;->c:Le/p/a/y/k/d;

    .line 9
    iget-object v0, v0, Le/p/a/y/k/d;->c:Lv3/g;

    .line 10
    invoke-interface {v0, p1, p2, p3}, Lv3/z;->h1(Lv3/f;J)V

    .line 11
    iget-object p1, p0, Le/p/a/y/k/d$c;->c:Le/p/a/y/k/d;

    .line 12
    iget-object p1, p1, Le/p/a/y/k/d;->c:Lv3/g;

    .line 13
    invoke-interface {p1, v1}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    return-void

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i()Lv3/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Le/p/a/y/k/d$c;->a:Lv3/m;

    return-object v0
.end method
