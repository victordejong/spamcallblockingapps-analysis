.class public final Lokhttp3/internal/http2/e$h;
.super Lm/k0/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/e;->U0(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lokhttp3/internal/http2/e;

.field final synthetic f:I

.field final synthetic g:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLokhttp3/internal/http2/e;ILjava/util/List;)V
    .locals 0

    iput-object p5, p0, Lokhttp3/internal/http2/e$h;->e:Lokhttp3/internal/http2/e;

    iput p6, p0, Lokhttp3/internal/http2/e$h;->f:I

    iput-object p7, p0, Lokhttp3/internal/http2/e$h;->g:Ljava/util/List;

    .line 1
    invoke-direct {p0, p3, p4}, Lm/k0/e/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public f()J
    .locals 3

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/e$h;->e:Lokhttp3/internal/http2/e;

    invoke-static {v0}, Lokhttp3/internal/http2/e;->j(Lokhttp3/internal/http2/e;)Lokhttp3/internal/http2/l;

    move-result-object v0

    iget v1, p0, Lokhttp3/internal/http2/e$h;->f:I

    iget-object v2, p0, Lokhttp3/internal/http2/e$h;->g:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lokhttp3/internal/http2/l;->a(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/e$h;->e:Lokhttp3/internal/http2/e;

    invoke-virtual {v0}, Lokhttp3/internal/http2/e;->I0()Lokhttp3/internal/http2/i;

    move-result-object v0

    iget v1, p0, Lokhttp3/internal/http2/e$h;->f:I

    sget-object v2, Lokhttp3/internal/http2/a;->CANCEL:Lokhttp3/internal/http2/a;

    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/http2/i;->i(ILokhttp3/internal/http2/a;)V

    .line 3
    iget-object v0, p0, Lokhttp3/internal/http2/e$h;->e:Lokhttp3/internal/http2/e;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-object v1, p0, Lokhttp3/internal/http2/e$h;->e:Lokhttp3/internal/http2/e;

    invoke-static {v1}, Lokhttp3/internal/http2/e;->c(Lokhttp3/internal/http2/e;)Ljava/util/Set;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http2/e$h;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
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
    :cond_0
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
