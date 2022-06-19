.class public final Le/a/k/c/y1;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/l<",
        "Ls1/w/d<",
        "-",
        "Ljava/io/File;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.utils.VideoFileUtilImpl$persistTempRecordingFile$2"
    f = "VideoFileUtil.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/k/c/a;


# direct methods
.method public constructor <init>(Le/a/k/c/a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/c/y1;->e:Le/a/k/c/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/k/c/y1;

    iget-object v1, p0, Le/a/k/c/y1;->e:Le/a/k/c/a;

    invoke-direct {v0, v1, p1}, Le/a/k/c/y1;-><init>(Le/a/k/c/a;Ls1/w/d;)V

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/k/c/y1;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/k/c/y1;

    iget-object v1, p0, Le/a/k/c/y1;->e:Le/a/k/c/a;

    invoke-direct {v0, v1, p1}, Le/a/k/c/y1;-><init>(Le/a/k/c/a;Ls1/w/d;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/k/c/y1;->e:Le/a/k/c/a;

    .line 3
    iget-object p1, p1, Le/a/k/c/a;->a:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 5
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Le/a/k/c/y1;->e:Le/a/k/c/a;

    invoke-static {v0}, Le/a/k/c/a;->a(Le/a/k/c/a;)Ljava/io/File;

    move-result-object v0

    const-string v1, "recording_own_"

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Le/a/k/c/y1;->e:Le/a/k/c/a;

    .line 6
    iget-object v2, v2, Le/a/k/c/a;->e:Le/a/p5/c;

    .line 7
    invoke-interface {v2}, Le/a/p5/c;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Le/a/k/c/y1;->e:Le/a/k/c/a;

    invoke-static {v0}, Le/a/k/c/a;->b(Le/a/k/c/a;)Ljava/io/File;

    move-result-object v0

    const-string v1, "$this$copyTo"

    .line 9
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "target"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 11
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance v1, Ls1/y/b;

    const-string v2, "Tried to overwrite the destination, but failed to delete it."

    invoke-direct {v1, v0, p1, v2}, Ls1/y/b;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    throw v1

    .line 14
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 16
    :cond_2
    new-instance v1, Ls1/y/c;

    const-string v2, "Failed to create target directory."

    invoke-direct {v1, v0, p1, v2}, Ls1/y/c;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 18
    :cond_4
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 19
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v3, 0x2000

    .line 20
    :try_start_1
    invoke-static {v1, v0, v3}, Le/q/f/a/d/a;->T(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :try_start_2
    invoke-static {v0, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 22
    invoke-static {v1, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 23
    :goto_1
    iget-object v0, p0, Le/a/k/c/y1;->e:Le/a/k/c/a;

    invoke-static {v0}, Le/a/k/c/a;->b(Le/a/k/c/a;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 24
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    return-object p1

    :catchall_0
    move-exception p1

    .line 25
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {v0, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    .line 26
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {v1, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 27
    :cond_5
    new-instance p1, Ls1/y/j;

    const/4 v1, 0x2

    const-string v3, "The source file doesn\'t exist."

    invoke-direct {p1, v0, v2, v3, v1}, Ls1/y/j;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V

    throw p1
.end method
