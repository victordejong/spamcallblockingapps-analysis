.class public final Le/m/a/h/a/a/h2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/m/a/h/a/a/e0;

.field public final b:Le/m/a/h/a/d/f1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/d/f1<",
            "Le/m/a/h/a/a/s3;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/m/a/h/a/a/p1;

.field public final d:Le/m/a/h/a/d/f1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/d/f1<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/m/a/h/a/a/b1;

.field public final f:Le/m/a/h/a/b/b;

.field public final g:Le/m/a/h/a/a/j2;


# direct methods
.method public constructor <init>(Le/m/a/h/a/a/e0;Le/m/a/h/a/d/f1;Le/m/a/h/a/a/p1;Le/m/a/h/a/d/f1;Le/m/a/h/a/a/b1;Le/m/a/h/a/b/b;Le/m/a/h/a/a/j2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/h/a/a/e0;",
            "Le/m/a/h/a/d/f1<",
            "Le/m/a/h/a/a/s3;",
            ">;",
            "Le/m/a/h/a/a/p1;",
            "Le/m/a/h/a/d/f1<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Le/m/a/h/a/a/b1;",
            "Le/m/a/h/a/b/b;",
            "Le/m/a/h/a/a/j2;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/a/h2;->a:Le/m/a/h/a/a/e0;

    iput-object p2, p0, Le/m/a/h/a/a/h2;->b:Le/m/a/h/a/d/f1;

    iput-object p3, p0, Le/m/a/h/a/a/h2;->c:Le/m/a/h/a/a/p1;

    iput-object p4, p0, Le/m/a/h/a/a/h2;->d:Le/m/a/h/a/d/f1;

    iput-object p5, p0, Le/m/a/h/a/a/h2;->e:Le/m/a/h/a/a/b1;

    iput-object p6, p0, Le/m/a/h/a/a/h2;->f:Le/m/a/h/a/b/b;

    iput-object p7, p0, Le/m/a/h/a/a/h2;->g:Le/m/a/h/a/a/j2;

    return-void
.end method


# virtual methods
.method public final a(Le/m/a/h/a/a/e2;)V
    .locals 10

    iget-object v0, p0, Le/m/a/h/a/a/h2;->a:Le/m/a/h/a/a/e0;

    iget-object v1, p1, Le/m/a/h/a/a/r1;->b:Ljava/lang/String;

    iget v2, p1, Le/m/a/h/a/a/e2;->c:I

    iget-wide v3, p1, Le/m/a/h/a/a/e2;->d:J

    .line 1
    invoke-virtual {v0, v1, v2, v3, v4}, Le/m/a/h/a/a/e0;->p(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Le/m/a/h/a/a/h2;->a:Le/m/a/h/a/a/e0;

    iget-object v2, p1, Le/m/a/h/a/a/r1;->b:Ljava/lang/String;

    iget v3, p1, Le/m/a/h/a/a/e2;->c:I

    iget-wide v4, p1, Le/m/a/h/a/a/e2;->d:J

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/io/File;

    .line 3
    invoke-virtual {v1, v2, v3, v4, v5}, Le/m/a/h/a/a/e0;->f(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v1

    const-string v2, "_slices"

    invoke-direct {v7, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, "_metadata"

    invoke-direct {v6, v7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    iget-object v1, p0, Le/m/a/h/a/a/h2;->a:Le/m/a/h/a/a/e0;

    iget-object v4, p1, Le/m/a/h/a/a/r1;->b:Ljava/lang/String;

    iget v5, p1, Le/m/a/h/a/a/e2;->c:I

    iget-wide v7, p1, Le/m/a/h/a/a/e2;->d:J

    .line 6
    invoke-virtual {v1, v4, v5, v7, v8}, Le/m/a/h/a/a/e0;->n(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 8
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Le/m/a/h/a/a/h2;->a:Le/m/a/h/a/a/e0;

    iget-object v1, p1, Le/m/a/h/a/a/r1;->b:Ljava/lang/String;

    iget v4, p1, Le/m/a/h/a/a/e2;->c:I

    iget-wide v7, p1, Le/m/a/h/a/a/e2;->d:J

    new-instance v5, Ljava/io/File;

    .line 10
    invoke-virtual {v0, v1, v4, v7, v8}, Le/m/a/h/a/a/e0;->n(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    const-string v1, "merge.tmp"

    .line 11
    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Le/m/a/h/a/a/h2;->a:Le/m/a/h/a/a/e0;

    iget-object v1, p1, Le/m/a/h/a/a/r1;->b:Ljava/lang/String;

    iget v4, p1, Le/m/a/h/a/a/e2;->c:I

    iget-wide v7, p1, Le/m/a/h/a/a/e2;->d:J

    .line 12
    invoke-virtual {v0, v1, v4, v7, v8}, Le/m/a/h/a/a/e0;->o(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 14
    invoke-virtual {v6, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    iget-object v0, p0, Le/m/a/h/a/a/h2;->f:Le/m/a/h/a/b/b;

    .line 16
    invoke-virtual {v0}, Le/m/a/h/a/b/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v4, p0, Le/m/a/h/a/a/h2;->g:Le/m/a/h/a/a/j2;

    iget-object v5, p1, Le/m/a/h/a/a/r1;->b:Ljava/lang/String;

    iget v6, p1, Le/m/a/h/a/a/e2;->c:I

    iget-wide v7, p1, Le/m/a/h/a/a/e2;->d:J

    iget-object v9, p1, Le/m/a/h/a/a/e2;->e:Ljava/lang/String;

    .line 17
    invoke-virtual/range {v4 .. v9}, Le/m/a/h/a/a/j2;->b(Ljava/lang/String;IJLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Le/m/a/h/a/a/h2;->d:Le/m/a/h/a/d/f1;

    .line 18
    invoke-interface {v0}, Le/m/a/h/a/d/f1;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Le/m/a/h/a/a/g2;

    invoke-direct {v1, p0, p1}, Le/m/a/h/a/a/g2;-><init>(Le/m/a/h/a/a/h2;Le/m/a/h/a/a/e2;)V

    .line 19
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 20
    new-instance v1, Le/m/a/h/a/a/x0;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Le/m/a/h/a/a/r1;->b:Ljava/lang/String;

    aput-object v5, v4, v2

    .line 21
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const-string v0, "Could not write asset pack version tag for pack %s: %s"

    .line 22
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Le/m/a/h/a/a/r1;->a:I

    invoke-direct {v1, v0, p1}, Le/m/a/h/a/a/x0;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_0
    iget-object v0, p0, Le/m/a/h/a/a/h2;->d:Le/m/a/h/a/d/f1;

    .line 23
    invoke-interface {v0}, Le/m/a/h/a/d/f1;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Le/m/a/h/a/a/h2;->a:Le/m/a/h/a/a/e0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Le/m/a/h/a/a/f2;

    invoke-direct {v2, v1}, Le/m/a/h/a/a/f2;-><init>(Le/m/a/h/a/a/e0;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 24
    :goto_0
    iget-object v0, p0, Le/m/a/h/a/a/h2;->c:Le/m/a/h/a/a/p1;

    iget-object v5, p1, Le/m/a/h/a/a/r1;->b:Ljava/lang/String;

    iget v6, p1, Le/m/a/h/a/a/e2;->c:I

    iget-wide v7, p1, Le/m/a/h/a/a/e2;->d:J

    .line 25
    new-instance v1, Le/m/a/h/a/a/i1;

    move-object v3, v1

    move-object v4, v0

    .line 26
    invoke-direct/range {v3 .. v8}, Le/m/a/h/a/a/i1;-><init>(Le/m/a/h/a/a/p1;Ljava/lang/String;IJ)V

    invoke-virtual {v0, v1}, Le/m/a/h/a/a/p1;->b(Le/m/a/h/a/a/o1;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Le/m/a/h/a/a/h2;->e:Le/m/a/h/a/a/b1;

    iget-object v1, p1, Le/m/a/h/a/a/r1;->b:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v1}, Le/m/a/h/a/a/b1;->a(Ljava/lang/String;)V

    iget-object v0, p0, Le/m/a/h/a/a/h2;->b:Le/m/a/h/a/d/f1;

    .line 29
    invoke-interface {v0}, Le/m/a/h/a/d/f1;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/h/a/a/s3;

    iget v1, p1, Le/m/a/h/a/a/r1;->a:I

    iget-object p1, p1, Le/m/a/h/a/a/r1;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Le/m/a/h/a/a/s3;->a(ILjava/lang/String;)V

    return-void

    .line 30
    :cond_1
    new-instance v0, Le/m/a/h/a/a/x0;

    iget p1, p1, Le/m/a/h/a/a/r1;->a:I

    const-string v1, "Cannot move metadata files to final location."

    .line 31
    invoke-direct {v0, v1, p1}, Le/m/a/h/a/a/x0;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 32
    :cond_2
    new-instance v0, Le/m/a/h/a/a/x0;

    iget p1, p1, Le/m/a/h/a/a/r1;->a:I

    const-string v1, "Cannot move merged pack files to final location."

    .line 33
    invoke-direct {v0, v1, p1}, Le/m/a/h/a/a/x0;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 34
    :cond_3
    new-instance v0, Le/m/a/h/a/a/x0;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p1, Le/m/a/h/a/a/r1;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Cannot find pack files to move for pack %s."

    .line 35
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Le/m/a/h/a/a/r1;->a:I

    invoke-direct {v0, v1, p1}, Le/m/a/h/a/a/x0;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
