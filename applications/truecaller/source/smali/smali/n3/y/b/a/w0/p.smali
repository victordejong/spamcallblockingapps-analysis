.class public final Ln3/y/b/a/w0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/w0/h;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/y/b/a/w0/e0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ln3/y/b/a/w0/h;

.field public d:Ln3/y/b/a/w0/h;

.field public e:Ln3/y/b/a/w0/h;

.field public f:Ln3/y/b/a/w0/h;

.field public g:Ln3/y/b/a/w0/h;

.field public h:Ln3/y/b/a/w0/h;

.field public i:Ln3/y/b/a/w0/h;

.field public j:Ln3/y/b/a/w0/h;

.field public k:Ln3/y/b/a/w0/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ln3/y/b/a/w0/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ln3/y/b/a/w0/p;->a:Landroid/content/Context;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Ln3/y/b/a/w0/p;->c:Ln3/y/b/a/w0/h;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/w0/p;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/w0/p;->k:Ln3/y/b/a/w0/h;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ln3/y/b/a/w0/h;->a()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public b(Ln3/y/b/a/w0/k;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/w0/p;->k:Ln3/y/b/a/w0/h;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 2
    iget-object v0, p1, Ln3/y/b/a/w0/k;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v2, p1, Ln3/y/b/a/w0/k;->a:Landroid/net/Uri;

    invoke-static {v2}, Ln3/y/b/a/x0/x;->u(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4
    iget-object v0, p1, Ln3/y/b/a/w0/k;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "/android_asset/"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Ln3/y/b/a/w0/p;->e:Ln3/y/b/a/w0/h;

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Ln3/y/b/a/w0/c;

    iget-object v1, p0, Ln3/y/b/a/w0/p;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Ln3/y/b/a/w0/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ln3/y/b/a/w0/p;->e:Ln3/y/b/a/w0/h;

    .line 8
    invoke-virtual {p0, v0}, Ln3/y/b/a/w0/p;->d(Ln3/y/b/a/w0/h;)V

    .line 9
    :cond_1
    iget-object v0, p0, Ln3/y/b/a/w0/p;->e:Ln3/y/b/a/w0/h;

    .line 10
    iput-object v0, p0, Ln3/y/b/a/w0/p;->k:Ln3/y/b/a/w0/h;

    goto/16 :goto_2

    .line 11
    :cond_2
    iget-object v0, p0, Ln3/y/b/a/w0/p;->d:Ln3/y/b/a/w0/h;

    if-nez v0, :cond_3

    .line 12
    new-instance v0, Ln3/y/b/a/w0/u;

    invoke-direct {v0}, Ln3/y/b/a/w0/u;-><init>()V

    iput-object v0, p0, Ln3/y/b/a/w0/p;->d:Ln3/y/b/a/w0/h;

    .line 13
    invoke-virtual {p0, v0}, Ln3/y/b/a/w0/p;->d(Ln3/y/b/a/w0/h;)V

    .line 14
    :cond_3
    iget-object v0, p0, Ln3/y/b/a/w0/p;->d:Ln3/y/b/a/w0/h;

    .line 15
    iput-object v0, p0, Ln3/y/b/a/w0/p;->k:Ln3/y/b/a/w0/h;

    goto/16 :goto_2

    :cond_4
    const-string v2, "asset"

    .line 16
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 17
    iget-object v0, p0, Ln3/y/b/a/w0/p;->e:Ln3/y/b/a/w0/h;

    if-nez v0, :cond_5

    .line 18
    new-instance v0, Ln3/y/b/a/w0/c;

    iget-object v1, p0, Ln3/y/b/a/w0/p;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Ln3/y/b/a/w0/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ln3/y/b/a/w0/p;->e:Ln3/y/b/a/w0/h;

    .line 19
    invoke-virtual {p0, v0}, Ln3/y/b/a/w0/p;->d(Ln3/y/b/a/w0/h;)V

    .line 20
    :cond_5
    iget-object v0, p0, Ln3/y/b/a/w0/p;->e:Ln3/y/b/a/w0/h;

    .line 21
    iput-object v0, p0, Ln3/y/b/a/w0/p;->k:Ln3/y/b/a/w0/h;

    goto/16 :goto_2

    :cond_6
    const-string v2, "content"

    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 23
    iget-object v0, p0, Ln3/y/b/a/w0/p;->f:Ln3/y/b/a/w0/h;

    if-nez v0, :cond_7

    .line 24
    new-instance v0, Ln3/y/b/a/w0/f;

    iget-object v1, p0, Ln3/y/b/a/w0/p;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Ln3/y/b/a/w0/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ln3/y/b/a/w0/p;->f:Ln3/y/b/a/w0/h;

    .line 25
    invoke-virtual {p0, v0}, Ln3/y/b/a/w0/p;->d(Ln3/y/b/a/w0/h;)V

    .line 26
    :cond_7
    iget-object v0, p0, Ln3/y/b/a/w0/p;->f:Ln3/y/b/a/w0/h;

    .line 27
    iput-object v0, p0, Ln3/y/b/a/w0/p;->k:Ln3/y/b/a/w0/h;

    goto/16 :goto_2

    :cond_8
    const-string v2, "rtmp"

    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 29
    iget-object v0, p0, Ln3/y/b/a/w0/p;->g:Ln3/y/b/a/w0/h;

    if-nez v0, :cond_9

    :try_start_0
    const-string v0, "androidx.media2.exoplayer.external.ext.rtmp.RtmpDataSource"

    .line 30
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Class;

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/y/b/a/w0/h;

    iput-object v0, p0, Ln3/y/b/a/w0/p;->g:Ln3/y/b/a/w0/h;

    .line 32
    invoke-virtual {p0, v0}, Ln3/y/b/a/w0/p;->d(Ln3/y/b/a/w0/h;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 33
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error instantiating RTMP extension"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 34
    :catch_1
    :goto_1
    iget-object v0, p0, Ln3/y/b/a/w0/p;->g:Ln3/y/b/a/w0/h;

    if-nez v0, :cond_9

    .line 35
    iget-object v0, p0, Ln3/y/b/a/w0/p;->c:Ln3/y/b/a/w0/h;

    iput-object v0, p0, Ln3/y/b/a/w0/p;->g:Ln3/y/b/a/w0/h;

    .line 36
    :cond_9
    iget-object v0, p0, Ln3/y/b/a/w0/p;->g:Ln3/y/b/a/w0/h;

    .line 37
    iput-object v0, p0, Ln3/y/b/a/w0/p;->k:Ln3/y/b/a/w0/h;

    goto :goto_2

    :cond_a
    const-string v1, "udp"

    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 39
    iget-object v0, p0, Ln3/y/b/a/w0/p;->h:Ln3/y/b/a/w0/h;

    if-nez v0, :cond_b

    .line 40
    new-instance v0, Ln3/y/b/a/w0/f0;

    invoke-direct {v0}, Ln3/y/b/a/w0/f0;-><init>()V

    iput-object v0, p0, Ln3/y/b/a/w0/p;->h:Ln3/y/b/a/w0/h;

    .line 41
    invoke-virtual {p0, v0}, Ln3/y/b/a/w0/p;->d(Ln3/y/b/a/w0/h;)V

    .line 42
    :cond_b
    iget-object v0, p0, Ln3/y/b/a/w0/p;->h:Ln3/y/b/a/w0/h;

    .line 43
    iput-object v0, p0, Ln3/y/b/a/w0/p;->k:Ln3/y/b/a/w0/h;

    goto :goto_2

    :cond_c
    const-string v1, "data"

    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 45
    iget-object v0, p0, Ln3/y/b/a/w0/p;->i:Ln3/y/b/a/w0/h;

    if-nez v0, :cond_d

    .line 46
    new-instance v0, Ln3/y/b/a/w0/g;

    invoke-direct {v0}, Ln3/y/b/a/w0/g;-><init>()V

    iput-object v0, p0, Ln3/y/b/a/w0/p;->i:Ln3/y/b/a/w0/h;

    .line 47
    invoke-virtual {p0, v0}, Ln3/y/b/a/w0/p;->d(Ln3/y/b/a/w0/h;)V

    .line 48
    :cond_d
    iget-object v0, p0, Ln3/y/b/a/w0/p;->i:Ln3/y/b/a/w0/h;

    .line 49
    iput-object v0, p0, Ln3/y/b/a/w0/p;->k:Ln3/y/b/a/w0/h;

    goto :goto_2

    :cond_e
    const-string v1, "rawresource"

    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 51
    iget-object v0, p0, Ln3/y/b/a/w0/p;->j:Ln3/y/b/a/w0/h;

    if-nez v0, :cond_f

    .line 52
    new-instance v0, Ln3/y/b/a/w0/c0;

    iget-object v1, p0, Ln3/y/b/a/w0/p;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Ln3/y/b/a/w0/c0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ln3/y/b/a/w0/p;->j:Ln3/y/b/a/w0/h;

    .line 53
    invoke-virtual {p0, v0}, Ln3/y/b/a/w0/p;->d(Ln3/y/b/a/w0/h;)V

    .line 54
    :cond_f
    iget-object v0, p0, Ln3/y/b/a/w0/p;->j:Ln3/y/b/a/w0/h;

    .line 55
    iput-object v0, p0, Ln3/y/b/a/w0/p;->k:Ln3/y/b/a/w0/h;

    goto :goto_2

    .line 56
    :cond_10
    iget-object v0, p0, Ln3/y/b/a/w0/p;->c:Ln3/y/b/a/w0/h;

    iput-object v0, p0, Ln3/y/b/a/w0/p;->k:Ln3/y/b/a/w0/h;

    .line 57
    :goto_2
    iget-object v0, p0, Ln3/y/b/a/w0/p;->k:Ln3/y/b/a/w0/h;

    invoke-interface {v0, p1}, Ln3/y/b/a/w0/h;->b(Ln3/y/b/a/w0/k;)J

    move-result-wide v0

    return-wide v0
.end method

.method public c(Ln3/y/b/a/w0/e0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/w0/p;->c:Ln3/y/b/a/w0/h;

    invoke-interface {v0, p1}, Ln3/y/b/a/w0/h;->c(Ln3/y/b/a/w0/e0;)V

    .line 2
    iget-object v0, p0, Ln3/y/b/a/w0/p;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Ln3/y/b/a/w0/p;->d:Ln3/y/b/a/w0/h;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Ln3/y/b/a/w0/h;->c(Ln3/y/b/a/w0/e0;)V

    .line 5
    :cond_0
    iget-object v0, p0, Ln3/y/b/a/w0/p;->e:Ln3/y/b/a/w0/h;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0, p1}, Ln3/y/b/a/w0/h;->c(Ln3/y/b/a/w0/e0;)V

    .line 7
    :cond_1
    iget-object v0, p0, Ln3/y/b/a/w0/p;->f:Ln3/y/b/a/w0/h;

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0, p1}, Ln3/y/b/a/w0/h;->c(Ln3/y/b/a/w0/e0;)V

    .line 9
    :cond_2
    iget-object v0, p0, Ln3/y/b/a/w0/p;->g:Ln3/y/b/a/w0/h;

    if-eqz v0, :cond_3

    .line 10
    invoke-interface {v0, p1}, Ln3/y/b/a/w0/h;->c(Ln3/y/b/a/w0/e0;)V

    .line 11
    :cond_3
    iget-object v0, p0, Ln3/y/b/a/w0/p;->h:Ln3/y/b/a/w0/h;

    if-eqz v0, :cond_4

    .line 12
    invoke-interface {v0, p1}, Ln3/y/b/a/w0/h;->c(Ln3/y/b/a/w0/e0;)V

    .line 13
    :cond_4
    iget-object v0, p0, Ln3/y/b/a/w0/p;->i:Ln3/y/b/a/w0/h;

    if-eqz v0, :cond_5

    .line 14
    invoke-interface {v0, p1}, Ln3/y/b/a/w0/h;->c(Ln3/y/b/a/w0/e0;)V

    .line 15
    :cond_5
    iget-object v0, p0, Ln3/y/b/a/w0/p;->j:Ln3/y/b/a/w0/h;

    if-eqz v0, :cond_6

    .line 16
    invoke-interface {v0, p1}, Ln3/y/b/a/w0/h;->c(Ln3/y/b/a/w0/e0;)V

    :cond_6
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/w0/p;->k:Ln3/y/b/a/w0/h;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-interface {v0}, Ln3/y/b/a/w0/h;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-object v1, p0, Ln3/y/b/a/w0/p;->k:Ln3/y/b/a/w0/h;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Ln3/y/b/a/w0/p;->k:Ln3/y/b/a/w0/h;

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public final d(Ln3/y/b/a/w0/h;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Ln3/y/b/a/w0/p;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Ln3/y/b/a/w0/p;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/w0/e0;

    invoke-interface {p1, v1}, Ln3/y/b/a/w0/h;->c(Ln3/y/b/a/w0/e0;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/w0/p;->k:Ln3/y/b/a/w0/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ln3/y/b/a/w0/h;->getUri()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/w0/p;->k:Ln3/y/b/a/w0/h;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Ln3/y/b/a/w0/h;->read([BII)I

    move-result p1

    return p1
.end method
