.class public final Le/m/a/c/p1/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/p1/l;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/m/a/c/p1/f0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/m/a/c/p1/l;

.field public d:Le/m/a/c/p1/l;

.field public e:Le/m/a/c/p1/l;

.field public f:Le/m/a/c/p1/l;

.field public g:Le/m/a/c/p1/l;

.field public h:Le/m/a/c/p1/l;

.field public i:Le/m/a/c/p1/l;

.field public j:Le/m/a/c/p1/l;

.field public k:Le/m/a/c/p1/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/m/a/c/p1/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Le/m/a/c/p1/q;->a:Landroid/content/Context;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Le/m/a/c/p1/q;->c:Le/m/a/c/p1/l;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/m/a/c/p1/q;->b:Ljava/util/List;

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
    iget-object v0, p0, Le/m/a/c/p1/q;->k:Le/m/a/c/p1/l;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Le/m/a/c/p1/l;->a()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public b(Le/m/a/c/p1/n;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/p1/q;->k:Le/m/a/c/p1/l;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ln3/g0/y;->x(Z)V

    .line 2
    iget-object v0, p1, Le/m/a/c/p1/n;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v3, p1, Le/m/a/c/p1/n;->a:Landroid/net/Uri;

    .line 4
    sget v4, Le/m/a/c/q1/d0;->a:I

    .line 5
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "file"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    if-eqz v1, :cond_6

    .line 7
    iget-object v0, p1, Le/m/a/c/p1/n;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "/android_asset/"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    iget-object v0, p0, Le/m/a/c/p1/q;->e:Le/m/a/c/p1/l;

    if-nez v0, :cond_3

    .line 10
    new-instance v0, Le/m/a/c/p1/e;

    iget-object v1, p0, Le/m/a/c/p1/q;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Le/m/a/c/p1/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Le/m/a/c/p1/q;->e:Le/m/a/c/p1/l;

    .line 11
    invoke-virtual {p0, v0}, Le/m/a/c/p1/q;->d(Le/m/a/c/p1/l;)V

    .line 12
    :cond_3
    iget-object v0, p0, Le/m/a/c/p1/q;->e:Le/m/a/c/p1/l;

    .line 13
    iput-object v0, p0, Le/m/a/c/p1/q;->k:Le/m/a/c/p1/l;

    goto/16 :goto_3

    .line 14
    :cond_4
    iget-object v0, p0, Le/m/a/c/p1/q;->d:Le/m/a/c/p1/l;

    if-nez v0, :cond_5

    .line 15
    new-instance v0, Le/m/a/c/p1/w;

    invoke-direct {v0}, Le/m/a/c/p1/w;-><init>()V

    iput-object v0, p0, Le/m/a/c/p1/q;->d:Le/m/a/c/p1/l;

    .line 16
    invoke-virtual {p0, v0}, Le/m/a/c/p1/q;->d(Le/m/a/c/p1/l;)V

    .line 17
    :cond_5
    iget-object v0, p0, Le/m/a/c/p1/q;->d:Le/m/a/c/p1/l;

    .line 18
    iput-object v0, p0, Le/m/a/c/p1/q;->k:Le/m/a/c/p1/l;

    goto/16 :goto_3

    :cond_6
    const-string v1, "asset"

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 20
    iget-object v0, p0, Le/m/a/c/p1/q;->e:Le/m/a/c/p1/l;

    if-nez v0, :cond_7

    .line 21
    new-instance v0, Le/m/a/c/p1/e;

    iget-object v1, p0, Le/m/a/c/p1/q;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Le/m/a/c/p1/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Le/m/a/c/p1/q;->e:Le/m/a/c/p1/l;

    .line 22
    invoke-virtual {p0, v0}, Le/m/a/c/p1/q;->d(Le/m/a/c/p1/l;)V

    .line 23
    :cond_7
    iget-object v0, p0, Le/m/a/c/p1/q;->e:Le/m/a/c/p1/l;

    .line 24
    iput-object v0, p0, Le/m/a/c/p1/q;->k:Le/m/a/c/p1/l;

    goto/16 :goto_3

    :cond_8
    const-string v1, "content"

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 26
    iget-object v0, p0, Le/m/a/c/p1/q;->f:Le/m/a/c/p1/l;

    if-nez v0, :cond_9

    .line 27
    new-instance v0, Le/m/a/c/p1/h;

    iget-object v1, p0, Le/m/a/c/p1/q;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Le/m/a/c/p1/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Le/m/a/c/p1/q;->f:Le/m/a/c/p1/l;

    .line 28
    invoke-virtual {p0, v0}, Le/m/a/c/p1/q;->d(Le/m/a/c/p1/l;)V

    .line 29
    :cond_9
    iget-object v0, p0, Le/m/a/c/p1/q;->f:Le/m/a/c/p1/l;

    .line 30
    iput-object v0, p0, Le/m/a/c/p1/q;->k:Le/m/a/c/p1/l;

    goto/16 :goto_3

    :cond_a
    const-string v1, "rtmp"

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 32
    iget-object v0, p0, Le/m/a/c/p1/q;->g:Le/m/a/c/p1/l;

    if-nez v0, :cond_b

    :try_start_0
    const-string v0, "com.google.android.exoplayer2.ext.rtmp.RtmpDataSource"

    .line 33
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Class;

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/c/p1/l;

    iput-object v0, p0, Le/m/a/c/p1/q;->g:Le/m/a/c/p1/l;

    .line 35
    invoke-virtual {p0, v0}, Le/m/a/c/p1/q;->d(Le/m/a/c/p1/l;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 36
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error instantiating RTMP extension"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 37
    :catch_1
    :goto_2
    iget-object v0, p0, Le/m/a/c/p1/q;->g:Le/m/a/c/p1/l;

    if-nez v0, :cond_b

    .line 38
    iget-object v0, p0, Le/m/a/c/p1/q;->c:Le/m/a/c/p1/l;

    iput-object v0, p0, Le/m/a/c/p1/q;->g:Le/m/a/c/p1/l;

    .line 39
    :cond_b
    iget-object v0, p0, Le/m/a/c/p1/q;->g:Le/m/a/c/p1/l;

    .line 40
    iput-object v0, p0, Le/m/a/c/p1/q;->k:Le/m/a/c/p1/l;

    goto :goto_3

    :cond_c
    const-string v1, "udp"

    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 42
    iget-object v0, p0, Le/m/a/c/p1/q;->h:Le/m/a/c/p1/l;

    if-nez v0, :cond_d

    .line 43
    new-instance v0, Le/m/a/c/p1/g0;

    invoke-direct {v0}, Le/m/a/c/p1/g0;-><init>()V

    iput-object v0, p0, Le/m/a/c/p1/q;->h:Le/m/a/c/p1/l;

    .line 44
    invoke-virtual {p0, v0}, Le/m/a/c/p1/q;->d(Le/m/a/c/p1/l;)V

    .line 45
    :cond_d
    iget-object v0, p0, Le/m/a/c/p1/q;->h:Le/m/a/c/p1/l;

    .line 46
    iput-object v0, p0, Le/m/a/c/p1/q;->k:Le/m/a/c/p1/l;

    goto :goto_3

    :cond_e
    const-string v1, "data"

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 48
    iget-object v0, p0, Le/m/a/c/p1/q;->i:Le/m/a/c/p1/l;

    if-nez v0, :cond_f

    .line 49
    new-instance v0, Le/m/a/c/p1/i;

    invoke-direct {v0}, Le/m/a/c/p1/i;-><init>()V

    iput-object v0, p0, Le/m/a/c/p1/q;->i:Le/m/a/c/p1/l;

    .line 50
    invoke-virtual {p0, v0}, Le/m/a/c/p1/q;->d(Le/m/a/c/p1/l;)V

    .line 51
    :cond_f
    iget-object v0, p0, Le/m/a/c/p1/q;->i:Le/m/a/c/p1/l;

    .line 52
    iput-object v0, p0, Le/m/a/c/p1/q;->k:Le/m/a/c/p1/l;

    goto :goto_3

    :cond_10
    const-string v1, "rawresource"

    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 54
    iget-object v0, p0, Le/m/a/c/p1/q;->j:Le/m/a/c/p1/l;

    if-nez v0, :cond_11

    .line 55
    new-instance v0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;

    iget-object v1, p0, Le/m/a/c/p1/q;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Le/m/a/c/p1/q;->j:Le/m/a/c/p1/l;

    .line 56
    invoke-virtual {p0, v0}, Le/m/a/c/p1/q;->d(Le/m/a/c/p1/l;)V

    .line 57
    :cond_11
    iget-object v0, p0, Le/m/a/c/p1/q;->j:Le/m/a/c/p1/l;

    .line 58
    iput-object v0, p0, Le/m/a/c/p1/q;->k:Le/m/a/c/p1/l;

    goto :goto_3

    .line 59
    :cond_12
    iget-object v0, p0, Le/m/a/c/p1/q;->c:Le/m/a/c/p1/l;

    iput-object v0, p0, Le/m/a/c/p1/q;->k:Le/m/a/c/p1/l;

    .line 60
    :goto_3
    iget-object v0, p0, Le/m/a/c/p1/q;->k:Le/m/a/c/p1/l;

    invoke-interface {v0, p1}, Le/m/a/c/p1/l;->b(Le/m/a/c/p1/n;)J

    move-result-wide v0

    return-wide v0
.end method

.method public c(Le/m/a/c/p1/f0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/p1/q;->c:Le/m/a/c/p1/l;

    invoke-interface {v0, p1}, Le/m/a/c/p1/l;->c(Le/m/a/c/p1/f0;)V

    .line 2
    iget-object v0, p0, Le/m/a/c/p1/q;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Le/m/a/c/p1/q;->d:Le/m/a/c/p1/l;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Le/m/a/c/p1/l;->c(Le/m/a/c/p1/f0;)V

    .line 5
    :cond_0
    iget-object v0, p0, Le/m/a/c/p1/q;->e:Le/m/a/c/p1/l;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0, p1}, Le/m/a/c/p1/l;->c(Le/m/a/c/p1/f0;)V

    .line 7
    :cond_1
    iget-object v0, p0, Le/m/a/c/p1/q;->f:Le/m/a/c/p1/l;

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0, p1}, Le/m/a/c/p1/l;->c(Le/m/a/c/p1/f0;)V

    .line 9
    :cond_2
    iget-object v0, p0, Le/m/a/c/p1/q;->g:Le/m/a/c/p1/l;

    if-eqz v0, :cond_3

    .line 10
    invoke-interface {v0, p1}, Le/m/a/c/p1/l;->c(Le/m/a/c/p1/f0;)V

    .line 11
    :cond_3
    iget-object v0, p0, Le/m/a/c/p1/q;->h:Le/m/a/c/p1/l;

    if-eqz v0, :cond_4

    .line 12
    invoke-interface {v0, p1}, Le/m/a/c/p1/l;->c(Le/m/a/c/p1/f0;)V

    .line 13
    :cond_4
    iget-object v0, p0, Le/m/a/c/p1/q;->i:Le/m/a/c/p1/l;

    if-eqz v0, :cond_5

    .line 14
    invoke-interface {v0, p1}, Le/m/a/c/p1/l;->c(Le/m/a/c/p1/f0;)V

    .line 15
    :cond_5
    iget-object v0, p0, Le/m/a/c/p1/q;->j:Le/m/a/c/p1/l;

    if-eqz v0, :cond_6

    .line 16
    invoke-interface {v0, p1}, Le/m/a/c/p1/l;->c(Le/m/a/c/p1/f0;)V

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
    iget-object v0, p0, Le/m/a/c/p1/q;->k:Le/m/a/c/p1/l;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-interface {v0}, Le/m/a/c/p1/l;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-object v1, p0, Le/m/a/c/p1/q;->k:Le/m/a/c/p1/l;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Le/m/a/c/p1/q;->k:Le/m/a/c/p1/l;

    .line 4
    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public final d(Le/m/a/c/p1/l;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Le/m/a/c/p1/q;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Le/m/a/c/p1/q;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/c/p1/f0;

    invoke-interface {p1, v1}, Le/m/a/c/p1/l;->c(Le/m/a/c/p1/f0;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/p1/q;->k:Le/m/a/c/p1/l;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Le/m/a/c/p1/l;->getUri()Landroid/net/Uri;

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
    iget-object v0, p0, Le/m/a/c/p1/q;->k:Le/m/a/c/p1/l;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Le/m/a/c/p1/l;->read([BII)I

    move-result p1

    return p1
.end method
