.class public final Le/a/k/c/w;
.super Lu3/j0;
.source "SourceFile"


# instance fields
.field public final b:Ljava/io/File;

.field public final c:J

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;JLjava/lang/String;)V
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mimeType"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lu3/j0;-><init>()V

    iput-object p1, p0, Le/a/k/c/w;->b:Ljava/io/File;

    iput-wide p2, p0, Le/a/k/c/w;->c:J

    iput-object p4, p0, Le/a/k/c/w;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le/a/k/c/w;->c:J

    return-wide v0
.end method

.method public b()Lu3/c0;
    .locals 1

    .line 1
    sget-object v0, Lu3/c0;->f:Lu3/c0$a;

    iget-object v0, p0, Le/a/k/c/w;->d:Ljava/lang/String;

    invoke-static {v0}, Lu3/c0$a;->b(Ljava/lang/String;)Lu3/c0;

    move-result-object v0

    return-object v0
.end method

.method public c(Lv3/g;)V
    .locals 3

    const-string v0, "sink"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Le/a/k/c/w;->b:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-interface {p1}, Lv3/g;->j2()Ljava/io/OutputStream;

    move-result-object p1

    invoke-static {v1, p1}, Le/a/p5/s0/g;->X1(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :try_start_2
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_0

    :try_start_3
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 4
    :catch_1
    :cond_0
    throw p1
.end method
