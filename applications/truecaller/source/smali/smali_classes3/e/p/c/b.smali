.class public Le/p/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/p/c/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/p/c/b$b;,
        Le/p/c/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/p/c/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Le/p/c/b$b;

.field public final b:Ljava/io/File;

.field public final c:Le/p/c/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/p/c/b$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final queueFile:Le/p/c/e;


# direct methods
.method public constructor <init>(Ljava/io/File;Le/p/c/b$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Le/p/c/b$a<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/p/c/b$b;

    invoke-direct {v0}, Le/p/c/b$b;-><init>()V

    iput-object v0, p0, Le/p/c/b;->a:Le/p/c/b$b;

    .line 3
    iput-object p1, p0, Le/p/c/b;->b:Ljava/io/File;

    .line 4
    iput-object p2, p0, Le/p/c/b;->c:Le/p/c/b$a;

    .line 5
    new-instance p2, Le/p/c/e;

    invoke-direct {p2, p1}, Le/p/c/e;-><init>(Ljava/io/File;)V

    iput-object p2, p0, Le/p/c/b;->queueFile:Le/p/c/e;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Le/p/c/b;->a:Le/p/c/b$b;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 2
    iget-object v0, p0, Le/p/c/b;->c:Le/p/c/b$a;

    iget-object v1, p0, Le/p/c/b;->a:Le/p/c/b$b;

    check-cast v0, Le/i/b/z1/j0$a;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, v0, Le/i/b/z1/j0$a;->a:Le/i/b/s2/j;

    invoke-virtual {v0, p1, v1}, Le/i/b/s2/j;->b(Ljava/lang/Object;Ljava/io/OutputStream;)V

    .line 5
    :cond_0
    iget-object p1, p0, Le/p/c/b;->queueFile:Le/p/c/e;

    iget-object v0, p0, Le/p/c/b;->a:Le/p/c/b$b;

    invoke-virtual {v0}, Le/p/c/b$b;->b()[B

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Le/p/c/b;->a:Le/p/c/b$b;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Le/p/c/e;->b([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Le/p/c/a;

    iget-object v1, p0, Le/p/c/b;->b:Ljava/io/File;

    const-string v2, "Failed to add entry."

    invoke-direct {v0, v2, p1, v1}, Le/p/c/a;-><init>(Ljava/lang/String;Ljava/io/IOException;Ljava/io/File;)V

    throw v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Le/p/c/b;->queueFile:Le/p/c/e;

    .line 2
    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    invoke-virtual {v0}, Le/p/c/e;->f()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v2

    goto :goto_0

    .line 4
    :cond_0
    :try_start_3
    iget-object v1, v0, Le/p/c/e;->d:Le/p/c/e$b;

    iget v3, v1, Le/p/c/e$b;->b:I

    .line 5
    new-array v4, v3, [B

    .line 6
    iget v1, v1, Le/p/c/e$b;->a:I

    add-int/lit8 v1, v1, 0x4

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v4, v5, v3}, Le/p/c/e;->k(I[BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 7
    :try_start_4
    monitor-exit v0

    :goto_0
    if-nez v4, :cond_1

    return-object v2

    .line 8
    :cond_1
    iget-object v0, p0, Le/p/c/b;->c:Le/p/c/b$a;

    check-cast v0, Le/i/b/z1/j0$a;

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 11
    :try_start_5
    iget-object v2, v0, Le/i/b/z1/j0$a;->a:Le/i/b/s2/j;

    iget-object v0, v0, Le/i/b/z1/j0$a;->b:Ljava/lang/Class;

    invoke-virtual {v2, v0, v1}, Le/i/b/s2/j;->a(Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 12
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 13
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_8
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0

    :catchall_2
    move-exception v1

    .line 14
    monitor-exit v0

    throw v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    .line 15
    new-instance v1, Le/p/c/a;

    const-string v2, "Failed to peek."

    iget-object v3, p0, Le/p/c/b;->b:Ljava/io/File;

    invoke-direct {v1, v2, v0, v3}, Le/p/c/a;-><init>(Ljava/lang/String;Ljava/io/IOException;Ljava/io/File;)V

    throw v1
.end method

.method public final remove()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Le/p/c/b;->queueFile:Le/p/c/e;

    invoke-virtual {v0}, Le/p/c/e;->i()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Le/p/c/a;

    iget-object v2, p0, Le/p/c/b;->b:Ljava/io/File;

    const-string v3, "Failed to remove."

    invoke-direct {v1, v3, v0, v2}, Le/p/c/a;-><init>(Ljava/lang/String;Ljava/io/IOException;Ljava/io/File;)V

    throw v1
.end method

.method public size()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/p/c/b;->queueFile:Le/p/c/e;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget v1, v0, Le/p/c/e;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
