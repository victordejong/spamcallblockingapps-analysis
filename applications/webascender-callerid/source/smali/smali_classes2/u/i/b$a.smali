.class public final Lu/i/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field final a:Lzipkin2/internal/gson/stream/a;


# direct methods
.method constructor <init>(Lu/i/h;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lzipkin2/internal/gson/stream/a;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Lu/i/b;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Lzipkin2/internal/gson/stream/a;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lu/i/b$a;->a:Lzipkin2/internal/gson/stream/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu/i/b$a;->a:Lzipkin2/internal/gson/stream/a;

    invoke-virtual {v0}, Lzipkin2/internal/gson/stream/a;->a()V

    return-void
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu/i/b$a;->a:Lzipkin2/internal/gson/stream/a;

    invoke-virtual {v0}, Lzipkin2/internal/gson/stream/a;->b()V

    return-void
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu/i/b$a;->a:Lzipkin2/internal/gson/stream/a;

    invoke-virtual {v0}, Lzipkin2/internal/gson/stream/a;->g()V

    return-void
.end method

.method public d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu/i/b$a;->a:Lzipkin2/internal/gson/stream/a;

    invoke-virtual {v0}, Lzipkin2/internal/gson/stream/a;->i()V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/i/b$a;->a:Lzipkin2/internal/gson/stream/a;

    invoke-virtual {v0}, Lzipkin2/internal/gson/stream/a;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu/i/b$a;->a:Lzipkin2/internal/gson/stream/a;

    invoke-virtual {v0}, Lzipkin2/internal/gson/stream/a;->l()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu/i/b$a;->a:Lzipkin2/internal/gson/stream/a;

    invoke-virtual {v0}, Lzipkin2/internal/gson/stream/a;->y()Z

    move-result v0

    return v0
.end method

.method public h()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu/i/b$a;->a:Lzipkin2/internal/gson/stream/a;

    invoke-virtual {v0}, Lzipkin2/internal/gson/stream/a;->z()I

    move-result v0

    return v0
.end method

.method public i()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu/i/b$a;->a:Lzipkin2/internal/gson/stream/a;

    invoke-virtual {v0}, Lzipkin2/internal/gson/stream/a;->A()J

    move-result-wide v0

    return-wide v0
.end method

.method public j()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu/i/b$a;->a:Lzipkin2/internal/gson/stream/a;

    invoke-virtual {v0}, Lzipkin2/internal/gson/stream/a;->C()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu/i/b$a;->a:Lzipkin2/internal/gson/stream/a;

    invoke-virtual {v0}, Lzipkin2/internal/gson/stream/a;->L()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu/i/b$a;->a:Lzipkin2/internal/gson/stream/a;

    invoke-virtual {v0}, Lzipkin2/internal/gson/stream/a;->N()Lzipkin2/internal/gson/stream/b;

    move-result-object v0

    sget-object v1, Lzipkin2/internal/gson/stream/b;->BOOLEAN:Lzipkin2/internal/gson/stream/b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu/i/b$a;->a:Lzipkin2/internal/gson/stream/a;

    invoke-virtual {v0}, Lzipkin2/internal/gson/stream/a;->N()Lzipkin2/internal/gson/stream/b;

    move-result-object v0

    sget-object v1, Lzipkin2/internal/gson/stream/b;->NULL:Lzipkin2/internal/gson/stream/b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu/i/b$a;->a:Lzipkin2/internal/gson/stream/a;

    invoke-virtual {v0}, Lzipkin2/internal/gson/stream/a;->N()Lzipkin2/internal/gson/stream/b;

    move-result-object v0

    sget-object v1, Lzipkin2/internal/gson/stream/b;->STRING:Lzipkin2/internal/gson/stream/b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu/i/b$a;->a:Lzipkin2/internal/gson/stream/a;

    invoke-virtual {v0}, Lzipkin2/internal/gson/stream/a;->y0()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/i/b$a;->a:Lzipkin2/internal/gson/stream/a;

    invoke-virtual {v0}, Lzipkin2/internal/gson/stream/a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
