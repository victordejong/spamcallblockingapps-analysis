.class public final Lokhttp3/internal/http2/e$f;
.super Lm/k0/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/e;->O0(ILn/h;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lokhttp3/internal/http2/e;

.field final synthetic f:I

.field final synthetic g:Ln/f;

.field final synthetic h:I

.field final synthetic i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLokhttp3/internal/http2/e;ILn/f;IZ)V
    .locals 0

    iput-object p5, p0, Lokhttp3/internal/http2/e$f;->e:Lokhttp3/internal/http2/e;

    iput p6, p0, Lokhttp3/internal/http2/e$f;->f:I

    iput-object p7, p0, Lokhttp3/internal/http2/e$f;->g:Ln/f;

    iput p8, p0, Lokhttp3/internal/http2/e$f;->h:I

    iput-boolean p9, p0, Lokhttp3/internal/http2/e$f;->i:Z

    .line 1
    invoke-direct {p0, p3, p4}, Lm/k0/e/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public f()J
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/e$f;->e:Lokhttp3/internal/http2/e;

    invoke-static {v0}, Lokhttp3/internal/http2/e;->j(Lokhttp3/internal/http2/e;)Lokhttp3/internal/http2/l;

    move-result-object v0

    iget v1, p0, Lokhttp3/internal/http2/e$f;->f:I

    iget-object v2, p0, Lokhttp3/internal/http2/e$f;->g:Ln/f;

    iget v3, p0, Lokhttp3/internal/http2/e$f;->h:I

    iget-boolean v4, p0, Lokhttp3/internal/http2/e$f;->i:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lokhttp3/internal/http2/l;->d(ILn/h;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lokhttp3/internal/http2/e$f;->e:Lokhttp3/internal/http2/e;

    invoke-virtual {v1}, Lokhttp3/internal/http2/e;->I0()Lokhttp3/internal/http2/i;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http2/e$f;->f:I

    sget-object v3, Lokhttp3/internal/http2/a;->CANCEL:Lokhttp3/internal/http2/a;

    invoke-virtual {v1, v2, v3}, Lokhttp3/internal/http2/i;->i(ILokhttp3/internal/http2/a;)V

    :cond_0
    if-nez v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lokhttp3/internal/http2/e$f;->i:Z

    if-eqz v0, :cond_2

    .line 4
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/http2/e$f;->e:Lokhttp3/internal/http2/e;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    iget-object v1, p0, Lokhttp3/internal/http2/e$f;->e:Lokhttp3/internal/http2/e;

    invoke-static {v1}, Lokhttp3/internal/http2/e;->c(Lokhttp3/internal/http2/e;)Ljava/util/Set;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http2/e$f;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_2
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
