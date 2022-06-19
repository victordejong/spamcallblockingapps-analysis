.class public final Le/m/a/h/a/f/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/f/k;


# instance fields
.field public final synthetic a:Ljava/util/Set;

.field public final synthetic b:Le/m/a/h/a/f/s;

.field public final synthetic c:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/util/Set;Le/m/a/h/a/f/s;Ljava/util/zip/ZipFile;)V
    .locals 0

    iput-object p1, p0, Le/m/a/h/a/f/i;->a:Ljava/util/Set;

    iput-object p2, p0, Le/m/a/h/a/f/i;->b:Le/m/a/h/a/f/s;

    iput-object p3, p0, Le/m/a/h/a/f/i;->c:Ljava/util/zip/ZipFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le/m/a/h/a/f/l;Ljava/io/File;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Le/m/a/h/a/f/i;->a:Ljava/util/Set;

    .line 1
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-nez p3, :cond_3

    const/4 p3, 0x5

    new-array p3, p3, [Ljava/lang/Object;

    iget-object v0, p0, Le/m/a/h/a/f/i;->b:Le/m/a/h/a/f/s;

    .line 2
    invoke-virtual {v0}, Le/m/a/h/a/f/s;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p3, v1

    iget-object v0, p1, Le/m/a/h/a/f/l;->a:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v0, p3, v2

    const/4 v0, 0x2

    iget-object v3, p0, Le/m/a/h/a/f/i;->b:Le/m/a/h/a/f/s;

    .line 3
    invoke-virtual {v3}, Le/m/a/h/a/f/s;->a()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v0

    const/4 v0, 0x3

    iget-object v3, p1, Le/m/a/h/a/f/l;->b:Ljava/util/zip/ZipEntry;

    .line 4
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v0

    const/4 v0, 0x4

    .line 5
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v0

    const-string v0, "NativeLibraryExtractor: split \'%s\' has native library \'%s\' that does not exist; extracting from \'%s!%s\' to \'%s\'"

    .line 6
    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    iget-object p3, p0, Le/m/a/h/a/f/i;->c:Ljava/util/zip/ZipFile;

    .line 8
    iget-object p1, p1, Le/m/a/h/a/f/l;->b:Ljava/util/zip/ZipEntry;

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 9
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 11
    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1

    :try_start_0
    new-instance p3, Ljava/io/FileOutputStream;

    .line 12
    invoke-direct {p3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 13
    :try_start_1
    invoke-virtual {p2, v1, v2}, Ljava/io/File;->setWritable(ZZ)Z

    .line 14
    invoke-virtual {p2, v1, v1}, Ljava/io/File;->setWritable(ZZ)Z

    .line 15
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result p2

    if-lez p2, :cond_1

    .line 16
    invoke-virtual {p3, v0, v1, p2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 17
    :cond_1
    :try_start_2
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception p2

    .line 18
    :try_start_3
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    :try_start_4
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p2

    if-eqz p1, :cond_2

    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    :cond_2
    throw p2

    :cond_3
    return-void
.end method
