.class public final Le/a/a/k/a/a1$a;
.super Lu3/j0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/k/a/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Landroid/content/ContentResolver;

.field public final c:Ljava/lang/String;

.field public final d:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    const-string v0, "resolver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lu3/j0;-><init>()V

    iput-object p1, p0, Le/a/a/k/a/a1$a;->b:Landroid/content/ContentResolver;

    iput-object p2, p0, Le/a/a/k/a/a1$a;->c:Ljava/lang/String;

    iput-object p3, p0, Le/a/a/k/a/a1$a;->d:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    const-wide/16 v0, -0x1

    .line 1
    :try_start_0
    iget-object v2, p0, Le/a/a/k/a/a1$a;->b:Landroid/content/ContentResolver;

    iget-object v3, p0, Le/a/a/k/a/a1$a;->d:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    :catch_0
    :cond_0
    return-wide v0
.end method

.method public b()Lu3/c0;
    .locals 1

    .line 1
    sget-object v0, Lu3/c0;->f:Lu3/c0$a;

    iget-object v0, p0, Le/a/a/k/a/a1$a;->c:Ljava/lang/String;

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
    iget-object v1, p0, Le/a/a/k/a/a1$a;->b:Landroid/content/ContentResolver;

    iget-object v2, p0, Le/a/a/k/a/a1$a;->d:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

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

    .line 4
    :cond_0
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    :try_start_4
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 6
    :catch_1
    :cond_1
    throw p1
.end method
