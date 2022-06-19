.class public final Le/m/a/c/p1/h0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/p1/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/p1/h0/d$a;
    }
.end annotation


# instance fields
.field public final a:Le/m/a/c/p1/h0/c;

.field public final b:J

.field public final c:I

.field public d:Le/m/a/c/p1/n;

.field public e:J

.field public f:Ljava/io/File;

.field public g:Ljava/io/OutputStream;

.field public h:J

.field public i:J

.field public j:Le/m/a/c/q1/w;


# direct methods
.method public constructor <init>(Le/m/a/c/p1/h0/c;JI)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const-wide/16 v1, -0x1

    if-gtz v0, :cond_1

    cmp-long v0, p2, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v3, "fragmentSize must be positive or C.LENGTH_UNSET."

    .line 2
    invoke-static {v0, v3}, Ln3/g0/y;->y(ZLjava/lang/Object;)V

    cmp-long v0, p2, v1

    if-eqz v0, :cond_2

    const-wide/32 v1, 0x200000

    cmp-long v1, p2, v1

    .line 3
    :cond_2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Le/m/a/c/p1/h0/d;->a:Le/m/a/c/p1/h0/c;

    if-nez v0, :cond_3

    const-wide p2, 0x7fffffffffffffffL

    .line 5
    :cond_3
    iput-wide p2, p0, Le/m/a/c/p1/h0/d;->b:J

    .line 6
    iput p4, p0, Le/m/a/c/p1/h0/d;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/p1/h0/d;->g:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Le/m/a/c/p1/h0/d;->g:Ljava/io/OutputStream;

    .line 4
    sget v2, Le/m/a/c/q1/d0;->a:I

    if-eqz v0, :cond_1

    .line 5
    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6
    :catch_0
    :cond_1
    iput-object v1, p0, Le/m/a/c/p1/h0/d;->g:Ljava/io/OutputStream;

    .line 7
    iget-object v0, p0, Le/m/a/c/p1/h0/d;->f:Ljava/io/File;

    .line 8
    iput-object v1, p0, Le/m/a/c/p1/h0/d;->f:Ljava/io/File;

    .line 9
    iget-object v1, p0, Le/m/a/c/p1/h0/d;->a:Le/m/a/c/p1/h0/c;

    iget-wide v2, p0, Le/m/a/c/p1/h0/d;->h:J

    invoke-interface {v1, v0, v2, v3}, Le/m/a/c/p1/h0/c;->j(Ljava/io/File;J)V

    return-void

    :catchall_0
    move-exception v0

    .line 10
    iget-object v2, p0, Le/m/a/c/p1/h0/d;->g:Ljava/io/OutputStream;

    .line 11
    sget v3, Le/m/a/c/q1/d0;->a:I

    if-eqz v2, :cond_2

    .line 12
    :try_start_2
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 13
    :catch_1
    :cond_2
    iput-object v1, p0, Le/m/a/c/p1/h0/d;->g:Ljava/io/OutputStream;

    .line 14
    iget-object v2, p0, Le/m/a/c/p1/h0/d;->f:Ljava/io/File;

    .line 15
    iput-object v1, p0, Le/m/a/c/p1/h0/d;->f:Ljava/io/File;

    .line 16
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 17
    throw v0
.end method

.method public b(Le/m/a/c/p1/n;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/p1/h0/d$a;
        }
    .end annotation

    .line 1
    iget-wide v0, p1, Le/m/a/c/p1/n;->g:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p1, v0}, Le/m/a/c/p1/n;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Le/m/a/c/p1/h0/d;->d:Le/m/a/c/p1/n;

    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Le/m/a/c/p1/h0/d;->d:Le/m/a/c/p1/n;

    const/4 v0, 0x4

    .line 5
    invoke-virtual {p1, v0}, Le/m/a/c/p1/n;->b(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-wide v0, p0, Le/m/a/c/p1/h0/d;->b:J

    goto :goto_0

    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    iput-wide v0, p0, Le/m/a/c/p1/h0/d;->e:J

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Le/m/a/c/p1/h0/d;->i:J

    .line 7
    :try_start_0
    invoke-virtual {p0}, Le/m/a/c/p1/h0/d;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Le/m/a/c/p1/h0/d$a;

    invoke-direct {v0, p1}, Le/m/a/c/p1/h0/d$a;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public final c()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/p1/h0/d;->d:Le/m/a/c/p1/n;

    iget-wide v0, v0, Le/m/a/c/p1/n;->g:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Le/m/a/c/p1/h0/d;->i:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Le/m/a/c/p1/h0/d;->e:J

    .line 2
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :goto_0
    move-wide v8, v2

    .line 3
    iget-object v4, p0, Le/m/a/c/p1/h0/d;->a:Le/m/a/c/p1/h0/c;

    iget-object v0, p0, Le/m/a/c/p1/h0/d;->d:Le/m/a/c/p1/n;

    iget-object v5, v0, Le/m/a/c/p1/n;->h:Ljava/lang/String;

    iget-wide v0, v0, Le/m/a/c/p1/n;->e:J

    iget-wide v2, p0, Le/m/a/c/p1/h0/d;->i:J

    add-long v6, v0, v2

    .line 4
    invoke-interface/range {v4 .. v9}, Le/m/a/c/p1/h0/c;->e(Ljava/lang/String;JJ)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Le/m/a/c/p1/h0/d;->f:Ljava/io/File;

    .line 5
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Le/m/a/c/p1/h0/d;->f:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 6
    iget v1, p0, Le/m/a/c/p1/h0/d;->c:I

    if-lez v1, :cond_2

    .line 7
    iget-object v1, p0, Le/m/a/c/p1/h0/d;->j:Le/m/a/c/q1/w;

    if-nez v1, :cond_1

    .line 8
    new-instance v1, Le/m/a/c/q1/w;

    iget v2, p0, Le/m/a/c/p1/h0/d;->c:I

    invoke-direct {v1, v0, v2}, Le/m/a/c/q1/w;-><init>(Ljava/io/OutputStream;I)V

    iput-object v1, p0, Le/m/a/c/p1/h0/d;->j:Le/m/a/c/q1/w;

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v1, v0}, Le/m/a/c/q1/w;->b(Ljava/io/OutputStream;)V

    .line 10
    :goto_1
    iget-object v0, p0, Le/m/a/c/p1/h0/d;->j:Le/m/a/c/q1/w;

    iput-object v0, p0, Le/m/a/c/p1/h0/d;->g:Ljava/io/OutputStream;

    goto :goto_2

    .line 11
    :cond_2
    iput-object v0, p0, Le/m/a/c/p1/h0/d;->g:Ljava/io/OutputStream;

    :goto_2
    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Le/m/a/c/p1/h0/d;->h:J

    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/p1/h0/d$a;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/p1/h0/d;->d:Le/m/a/c/p1/n;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Le/m/a/c/p1/h0/d;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Le/m/a/c/p1/h0/d$a;

    invoke-direct {v1, v0}, Le/m/a/c/p1/h0/d$a;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public write([BII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/p1/h0/d$a;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/p1/h0/d;->d:Le/m/a/c/p1/n;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    .line 2
    :try_start_0
    iget-wide v1, p0, Le/m/a/c/p1/h0/d;->h:J

    iget-wide v3, p0, Le/m/a/c/p1/h0/d;->e:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p0}, Le/m/a/c/p1/h0/d;->a()V

    .line 4
    invoke-virtual {p0}, Le/m/a/c/p1/h0/d;->c()V

    :cond_1
    sub-int v1, p3, v0

    int-to-long v1, v1

    .line 5
    iget-wide v3, p0, Le/m/a/c/p1/h0/d;->e:J

    iget-wide v5, p0, Le/m/a/c/p1/h0/d;->h:J

    sub-long/2addr v3, v5

    .line 6
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 7
    iget-object v2, p0, Le/m/a/c/p1/h0/d;->g:Ljava/io/OutputStream;

    add-int v3, p2, v0

    invoke-virtual {v2, p1, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v0, v1

    .line 8
    iget-wide v2, p0, Le/m/a/c/p1/h0/d;->h:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Le/m/a/c/p1/h0/d;->h:J

    .line 9
    iget-wide v1, p0, Le/m/a/c/p1/h0/d;->i:J

    add-long/2addr v1, v4

    iput-wide v1, p0, Le/m/a/c/p1/h0/d;->i:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    new-instance p2, Le/m/a/c/p1/h0/d$a;

    invoke-direct {p2, p1}, Le/m/a/c/p1/h0/d$a;-><init>(Ljava/io/IOException;)V

    throw p2

    :cond_2
    return-void
.end method
