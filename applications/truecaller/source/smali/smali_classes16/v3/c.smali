.class public final Lv3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv3/z;


# instance fields
.field public final synthetic a:Lv3/b;

.field public final synthetic b:Lv3/z;


# direct methods
.method public constructor <init>(Lv3/b;Lv3/z;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/z;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lv3/c;->a:Lv3/b;

    iput-object p2, p0, Lv3/c;->b:Lv3/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lv3/c;->a:Lv3/b;

    .line 2
    invoke-virtual {v0}, Lv3/b;->h()V

    .line 3
    :try_start_0
    iget-object v1, p0, Lv3/c;->b:Lv3/z;

    invoke-interface {v1}, Lv3/z;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v0}, Lv3/b;->i()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lv3/b;->j(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    .line 6
    throw v0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 7
    :try_start_1
    invoke-virtual {v0}, Lv3/b;->i()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0, v1}, Lv3/b;->j(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    .line 9
    :goto_0
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :goto_1
    invoke-virtual {v0}, Lv3/b;->i()Z

    move-result v0

    .line 11
    throw v1
.end method

.method public flush()V
    .locals 3

    .line 1
    iget-object v0, p0, Lv3/c;->a:Lv3/b;

    .line 2
    invoke-virtual {v0}, Lv3/b;->h()V

    .line 3
    :try_start_0
    iget-object v1, p0, Lv3/c;->b:Lv3/z;

    invoke-interface {v1}, Lv3/z;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v0}, Lv3/b;->i()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lv3/b;->j(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    .line 6
    throw v0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 7
    :try_start_1
    invoke-virtual {v0}, Lv3/b;->i()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0, v1}, Lv3/b;->j(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    .line 9
    :goto_0
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :goto_1
    invoke-virtual {v0}, Lv3/b;->i()Z

    move-result v0

    .line 11
    throw v1
.end method

.method public h1(Lv3/f;J)V
    .locals 7

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v1, p1, Lv3/f;->b:J

    const-wide/16 v3, 0x0

    move-wide v5, p2

    .line 2
    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->d0(JJJ)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_6

    .line 3
    iget-object v2, p1, Lv3/f;->a:Lv3/w;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    :goto_1
    const/high16 v4, 0x10000

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_2

    .line 4
    iget v4, v2, Lv3/w;->c:I

    iget v5, v2, Lv3/w;->b:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v0, v4

    cmp-long v4, v0, p2

    if-ltz v4, :cond_0

    move-wide v0, p2

    goto :goto_2

    .line 5
    :cond_0
    iget-object v2, v2, Lv3/w;->f:Lv3/w;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v3

    .line 6
    :cond_2
    :goto_2
    iget-object v2, p0, Lv3/c;->a:Lv3/b;

    .line 7
    invoke-virtual {v2}, Lv3/b;->h()V

    .line 8
    :try_start_0
    iget-object v4, p0, Lv3/c;->b:Lv3/z;

    invoke-interface {v4, p1, v0, v1}, Lv3/z;->h1(Lv3/f;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v2}, Lv3/b;->i()Z

    move-result v4

    if-nez v4, :cond_3

    sub-long/2addr p2, v0

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {v2, v3}, Lv3/b;->j(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    .line 11
    throw p1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 12
    :try_start_1
    invoke-virtual {v2}, Lv3/b;->i()Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_3

    .line 13
    :cond_4
    invoke-virtual {v2, p1}, Lv3/b;->j(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    .line 14
    :goto_3
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :goto_4
    invoke-virtual {v2}, Lv3/b;->i()Z

    move-result p2

    .line 16
    throw p1

    .line 17
    :cond_5
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v3

    :cond_6
    return-void
.end method

.method public i()Lv3/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/c;->a:Lv3/b;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "AsyncTimeout.sink("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lv3/c;->b:Lv3/z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
