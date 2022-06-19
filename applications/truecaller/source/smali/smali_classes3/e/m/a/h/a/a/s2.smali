.class public final Le/m/a/h/a/a/s2;
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


# direct methods
.method public constructor <init>(Le/m/a/h/a/a/e0;Le/m/a/h/a/d/f1;Le/m/a/h/a/a/p1;Le/m/a/h/a/d/f1;Le/m/a/h/a/a/b1;)V
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
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/a/s2;->a:Le/m/a/h/a/a/e0;

    iput-object p2, p0, Le/m/a/h/a/a/s2;->b:Le/m/a/h/a/d/f1;

    iput-object p3, p0, Le/m/a/h/a/a/s2;->c:Le/m/a/h/a/a/p1;

    iput-object p4, p0, Le/m/a/h/a/a/s2;->d:Le/m/a/h/a/d/f1;

    iput-object p5, p0, Le/m/a/h/a/a/s2;->e:Le/m/a/h/a/a/b1;

    return-void
.end method


# virtual methods
.method public final a(Le/m/a/h/a/a/q2;)V
    .locals 9

    iget-object v0, p0, Le/m/a/h/a/a/s2;->a:Le/m/a/h/a/a/e0;

    iget-object v1, p1, Le/m/a/h/a/a/r1;->b:Ljava/lang/String;

    iget v2, p1, Le/m/a/h/a/a/q2;->c:I

    iget-wide v3, p1, Le/m/a/h/a/a/q2;->e:J

    .line 1
    invoke-virtual {v0, v1, v2, v3, v4}, Le/m/a/h/a/a/e0;->n(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Le/m/a/h/a/a/s2;->a:Le/m/a/h/a/a/e0;

    iget-object v5, p1, Le/m/a/h/a/a/r1;->b:Ljava/lang/String;

    iget v6, p1, Le/m/a/h/a/a/q2;->d:I

    iget-wide v7, p1, Le/m/a/h/a/a/q2;->e:J

    .line 4
    invoke-virtual {v1, v5, v6, v7, v8}, Le/m/a/h/a/a/e0;->n(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 6
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7
    iget-object v0, p0, Le/m/a/h/a/a/s2;->d:Le/m/a/h/a/d/f1;

    .line 8
    invoke-interface {v0}, Le/m/a/h/a/d/f1;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Le/m/a/h/a/a/r2;

    invoke-direct {v1, p0, p1}, Le/m/a/h/a/a/r2;-><init>(Le/m/a/h/a/a/s2;Le/m/a/h/a/a/q2;)V

    .line 9
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Le/m/a/h/a/a/s2;->c:Le/m/a/h/a/a/p1;

    iget-object v4, p1, Le/m/a/h/a/a/r1;->b:Ljava/lang/String;

    iget v5, p1, Le/m/a/h/a/a/q2;->d:I

    iget-wide v6, p1, Le/m/a/h/a/a/q2;->e:J

    .line 10
    new-instance v1, Le/m/a/h/a/a/i1;

    move-object v2, v1

    move-object v3, v0

    .line 11
    invoke-direct/range {v2 .. v7}, Le/m/a/h/a/a/i1;-><init>(Le/m/a/h/a/a/p1;Ljava/lang/String;IJ)V

    invoke-virtual {v0, v1}, Le/m/a/h/a/a/p1;->b(Le/m/a/h/a/a/o1;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Le/m/a/h/a/a/s2;->e:Le/m/a/h/a/a/b1;

    iget-object v1, p1, Le/m/a/h/a/a/r1;->b:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Le/m/a/h/a/a/b1;->a(Ljava/lang/String;)V

    iget-object v0, p0, Le/m/a/h/a/a/s2;->b:Le/m/a/h/a/d/f1;

    .line 14
    invoke-interface {v0}, Le/m/a/h/a/d/f1;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/h/a/a/s3;

    iget v1, p1, Le/m/a/h/a/a/r1;->a:I

    iget-object p1, p1, Le/m/a/h/a/a/r1;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Le/m/a/h/a/a/s3;->a(ILjava/lang/String;)V

    return-void

    .line 15
    :cond_0
    new-instance v5, Le/m/a/h/a/a/x0;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p1, Le/m/a/h/a/a/r1;->b:Ljava/lang/String;

    aput-object v7, v6, v3

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v4

    const-string v0, "Cannot promote pack %s from %s to %s"

    .line 17
    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Le/m/a/h/a/a/r1;->a:I

    invoke-direct {v5, v0, p1}, Le/m/a/h/a/a/x0;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 18
    :cond_1
    new-instance v1, Le/m/a/h/a/a/x0;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Le/m/a/h/a/a/r1;->b:Ljava/lang/String;

    aput-object v5, v4, v3

    .line 19
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "Cannot find pack files to promote for pack %s at %s"

    .line 20
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Le/m/a/h/a/a/r1;->a:I

    invoke-direct {v1, v0, p1}, Le/m/a/h/a/a/x0;-><init>(Ljava/lang/String;I)V

    throw v1
.end method
