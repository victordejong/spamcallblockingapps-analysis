.class public final Le/a/k/q/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/j1/g$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/q/f;->a(Le/a/k/q/a;)Lq3/a/x2/i1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/k/q/f;

.field public final synthetic b:Le/a/k/q/a;


# direct methods
.method public constructor <init>(Le/a/k/q/f;Le/a/k/q/a;Lcom/google/android/exoplayer2/offline/DownloadRequest;)V
    .locals 0

    iput-object p1, p0, Le/a/k/q/f$a;->a:Le/a/k/q/f;

    iput-object p2, p0, Le/a/k/q/f$a;->b:Le/a/k/q/a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Le/m/a/c/j1/g;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Le/m/a/c/j1/h;->a(Le/m/a/c/j1/g$d;Le/m/a/c/j1/g;Z)V

    return-void
.end method

.method public synthetic b(Le/m/a/c/j1/g;Lcom/google/android/exoplayer2/scheduler/Requirements;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le/m/a/c/j1/h;->d(Le/m/a/c/j1/g$d;Le/m/a/c/j1/g;Lcom/google/android/exoplayer2/scheduler/Requirements;I)V

    return-void
.end method

.method public synthetic c(Le/m/a/c/j1/g;)V
    .locals 0

    invoke-static {p0, p1}, Le/m/a/c/j1/h;->b(Le/m/a/c/j1/g$d;Le/m/a/c/j1/g;)V

    return-void
.end method

.method public synthetic d(Le/m/a/c/j1/g;)V
    .locals 0

    invoke-static {p0, p1}, Le/m/a/c/j1/h;->c(Le/m/a/c/j1/g$d;Le/m/a/c/j1/g;)V

    return-void
.end method

.method public e(Le/m/a/c/j1/g;Le/m/a/c/j1/f;)V
    .locals 5

    const-string v0, "downloadManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "download"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/k/q/f$a;->a:Le/a/k/q/f;

    .line 2
    iget-object p1, p1, Le/a/k/q/f;->a:Ljava/util/Map;

    .line 3
    iget-object v0, p0, Le/a/k/q/f$a;->b:Le/a/k/q/a;

    .line 4
    iget-object v0, v0, Le/a/k/q/a;->b:Ljava/lang/String;

    .line 5
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 6
    iget-object p1, p0, Le/a/k/q/f$a;->a:Le/a/k/q/f;

    iget-object v0, p0, Le/a/k/q/f$a;->b:Le/a/k/q/a;

    .line 7
    iget-wide v0, v0, Le/a/k/q/a;->c:J

    .line 8
    monitor-enter p1

    .line 9
    :try_start_0
    iget v2, p2, Le/m/a/c/j1/f;->b:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v0, 0x3

    if-eq v2, v0, :cond_0

    const/4 v0, 0x4

    if-eq v2, v0, :cond_2

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p1, Le/a/k/q/f;->a:Ljava/util/Map;

    iget-object v1, p2, Le/m/a/c/j1/f;->a:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v1, v1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->a:Ljava/lang/String;

    const-string v2, "download.request.id"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Le/a/k/q/b$a;

    .line 11
    iget-object v3, p2, Le/m/a/c/j1/f;->h:Le/m/a/c/j1/i;

    iget v3, v3, Le/m/a/c/j1/i;->b:F

    .line 12
    invoke-direct {v2, v3, p2}, Le/a/k/q/b$a;-><init>(FLe/m/a/c/j1/f;)V

    .line 13
    invoke-virtual {p1, v0, v1, v2, v4}, Le/a/k/q/f;->c(Ljava/util/Map;Ljava/lang/String;Le/a/k/q/b;Z)Lq3/a/x2/i1;

    goto :goto_0

    .line 14
    :cond_1
    iget-object v2, p2, Le/m/a/c/j1/f;->h:Le/m/a/c/j1/i;

    iget v2, v2, Le/m/a/c/j1/i;->b:F

    long-to-float v0, v0

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_3

    .line 15
    iget-object v0, p1, Le/a/k/q/f;->a:Ljava/util/Map;

    iget-object v1, p2, Le/m/a/c/j1/f;->a:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v1, v1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->a:Ljava/lang/String;

    const-string v2, "download.request.id"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Le/a/k/q/b$a;

    .line 16
    iget-object v3, p2, Le/m/a/c/j1/f;->h:Le/m/a/c/j1/i;

    iget v3, v3, Le/m/a/c/j1/i;->b:F

    .line 17
    invoke-direct {v2, v3, p2}, Le/a/k/q/b$a;-><init>(FLe/m/a/c/j1/f;)V

    .line 18
    invoke-virtual {p1, v0, v1, v2, v4}, Le/a/k/q/f;->c(Ljava/util/Map;Ljava/lang/String;Le/a/k/q/b;Z)Lq3/a/x2/i1;

    goto :goto_0

    .line 19
    :cond_2
    iget-object v0, p1, Le/a/k/q/f;->a:Ljava/util/Map;

    iget-object v1, p2, Le/m/a/c/j1/f;->a:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v1, v1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->a:Ljava/lang/String;

    const-string v2, "download.request.id"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Le/a/k/q/b$b;

    iget-object p2, p2, Le/m/a/c/j1/f;->a:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object p2, p2, Lcom/google/android/exoplayer2/offline/DownloadRequest;->a:Ljava/lang/String;

    const-string v3, "download.request.id"

    invoke-static {p2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, p2}, Le/a/k/q/b$b;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1, v0, v1, v2, v4}, Le/a/k/q/f;->c(Ljava/util/Map;Ljava/lang/String;Le/a/k/q/b;Z)Lq3/a/x2/i1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :cond_3
    :goto_0
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    :cond_4
    :goto_1
    return-void
.end method

.method public synthetic f(Le/m/a/c/j1/g;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Le/m/a/c/j1/h;->e(Le/m/a/c/j1/g$d;Le/m/a/c/j1/g;Z)V

    return-void
.end method

.method public g(Le/m/a/c/j1/g;Le/m/a/c/j1/f;)V
    .locals 1

    const-string v0, "downloadManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "download"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/k/q/f$a;->a:Le/a/k/q/f;

    iget-object p2, p0, Le/a/k/q/f$a;->b:Le/a/k/q/a;

    .line 2
    iget-object p2, p2, Le/a/k/q/a;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, p2}, Le/a/k/q/f;->b(Ljava/lang/String;)V

    return-void
.end method
