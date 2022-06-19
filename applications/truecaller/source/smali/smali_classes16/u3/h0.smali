.class public final Lu3/h0;
.super Lu3/j0;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:Lu3/c0;


# direct methods
.method public constructor <init>(Ljava/io/File;Lu3/c0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu3/h0;->b:Ljava/io/File;

    iput-object p2, p0, Lu3/h0;->c:Lu3/c0;

    invoke-direct {p0}, Lu3/j0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-object v0, p0, Lu3/h0;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Lu3/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lu3/h0;->c:Lu3/c0;

    return-object v0
.end method

.method public c(Lv3/g;)V
    .locals 3

    const-string v0, "sink"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lu3/h0;->b:Ljava/io/File;

    const-string v1, "$this$source"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4
    invoke-static {v2, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lv3/q;

    new-instance v1, Lv3/c0;

    invoke-direct {v1}, Lv3/c0;-><init>()V

    invoke-direct {v0, v2, v1}, Lv3/q;-><init>(Ljava/io/InputStream;Lv3/c0;)V

    .line 6
    :try_start_0
    invoke-interface {p1, v0}, Lv3/g;->k1(Lv3/b0;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    invoke-static {v0, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
