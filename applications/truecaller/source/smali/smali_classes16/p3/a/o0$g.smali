.class public final Lp3/a/o0$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lp3/a/o0$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/o0$e<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public volatile c:[B


# virtual methods
.method public a()[B
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/o0$g;->c:[B

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lp3/a/o0$g;->c:[B

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lp3/a/o0$g;->a:Lp3/a/o0$e;

    iget-object v1, p0, Lp3/a/o0$g;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lp3/a/o0$e;->a(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    .line 5
    sget-object v1, Lp3/a/o0;->c:Lp3/a/o0$d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    iput-object v0, p0, Lp3/a/o0$g;->c:[B

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "failure reading serialized stream"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 9
    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 10
    :cond_1
    :goto_1
    iget-object v0, p0, Lp3/a/o0$g;->c:[B

    return-object v0
.end method
