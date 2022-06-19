.class public final Lokhttp3/internal/http2/e$a;
.super Lm/k0/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/e;-><init>(Lokhttp3/internal/http2/e$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lokhttp3/internal/http2/e;

.field final synthetic f:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lokhttp3/internal/http2/e;J)V
    .locals 0

    iput-object p3, p0, Lokhttp3/internal/http2/e$a;->e:Lokhttp3/internal/http2/e;

    iput-wide p4, p0, Lokhttp3/internal/http2/e$a;->f:J

    const/4 p1, 0x0

    const/4 p3, 0x2

    const/4 p4, 0x0

    .line 1
    invoke-direct {p0, p2, p1, p3, p4}, Lm/k0/e/a;-><init>(Ljava/lang/String;ZILkotlin/w/c/g;)V

    return-void
.end method


# virtual methods
.method public f()J
    .locals 9

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/e$a;->e:Lokhttp3/internal/http2/e;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/http2/e$a;->e:Lokhttp3/internal/http2/e;

    invoke-static {v1}, Lokhttp3/internal/http2/e;->i(Lokhttp3/internal/http2/e;)J

    move-result-wide v1

    iget-object v3, p0, Lokhttp3/internal/http2/e$a;->e:Lokhttp3/internal/http2/e;

    invoke-static {v3}, Lokhttp3/internal/http2/e;->g(Lokhttp3/internal/http2/e;)J

    move-result-wide v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    cmp-long v7, v1, v3

    if-gez v7, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lokhttp3/internal/http2/e$a;->e:Lokhttp3/internal/http2/e;

    invoke-static {v1}, Lokhttp3/internal/http2/e;->g(Lokhttp3/internal/http2/e;)J

    move-result-wide v2

    const-wide/16 v7, 0x1

    add-long/2addr v2, v7

    invoke-static {v1, v2, v3}, Lokhttp3/internal/http2/e;->C(Lokhttp3/internal/http2/e;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 4
    :goto_0
    monitor-exit v0

    if-eqz v1, :cond_1

    .line 5
    iget-object v0, p0, Lokhttp3/internal/http2/e$a;->e:Lokhttp3/internal/http2/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lokhttp3/internal/http2/e;->a(Lokhttp3/internal/http2/e;Ljava/io/IOException;)V

    const-wide/16 v0, -0x1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/http2/e$a;->e:Lokhttp3/internal/http2/e;

    invoke-virtual {v0, v6, v5, v6}, Lokhttp3/internal/http2/e;->B1(ZII)V

    .line 7
    iget-wide v0, p0, Lokhttp3/internal/http2/e$a;->f:J

    :goto_1
    return-wide v0

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0

    throw v1
.end method
