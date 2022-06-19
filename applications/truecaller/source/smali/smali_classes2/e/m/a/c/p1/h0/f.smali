.class public final Le/m/a/c/p1/h0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/p1/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/p1/h0/f$a;
    }
.end annotation


# instance fields
.field public final a:Le/m/a/c/p1/h0/c;

.field public final b:Le/m/a/c/p1/l;

.field public final c:Le/m/a/c/p1/l;

.field public final d:Le/m/a/c/p1/l;

.field public final e:Le/m/a/c/p1/h0/k;

.field public final f:Le/m/a/c/p1/h0/f$a;

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public j:Le/m/a/c/p1/l;

.field public k:Z

.field public l:Landroid/net/Uri;

.field public m:Landroid/net/Uri;

.field public n:I

.field public o:[B

.field public p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public q:I

.field public r:Ljava/lang/String;

.field public s:J

.field public t:J

.field public u:Le/m/a/c/p1/h0/l;

.field public v:Z

.field public w:Z

.field public x:J

.field public y:J


# direct methods
.method public constructor <init>(Le/m/a/c/p1/h0/c;Le/m/a/c/p1/l;Le/m/a/c/p1/l;Le/m/a/c/p1/j;ILe/m/a/c/p1/h0/f$a;Le/m/a/c/p1/h0/k;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Le/m/a/c/p1/h0/f;->p:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Le/m/a/c/p1/h0/f;->a:Le/m/a/c/p1/h0/c;

    .line 4
    iput-object p3, p0, Le/m/a/c/p1/h0/f;->b:Le/m/a/c/p1/l;

    if-eqz p7, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget p1, Le/m/a/c/p1/h0/m;->a:I

    sget-object p7, Le/m/a/c/p1/h0/a;->a:Le/m/a/c/p1/h0/a;

    :goto_0
    iput-object p7, p0, Le/m/a/c/p1/h0/f;->e:Le/m/a/c/p1/h0/k;

    and-int/lit8 p1, p5, 0x1

    const/4 p3, 0x0

    const/4 p7, 0x1

    if-eqz p1, :cond_1

    move p1, p7

    goto :goto_1

    :cond_1
    move p1, p3

    .line 6
    :goto_1
    iput-boolean p1, p0, Le/m/a/c/p1/h0/f;->g:Z

    and-int/lit8 p1, p5, 0x2

    if-eqz p1, :cond_2

    move p1, p7

    goto :goto_2

    :cond_2
    move p1, p3

    .line 7
    :goto_2
    iput-boolean p1, p0, Le/m/a/c/p1/h0/f;->h:Z

    and-int/lit8 p1, p5, 0x4

    if-eqz p1, :cond_3

    move p3, p7

    .line 8
    :cond_3
    iput-boolean p3, p0, Le/m/a/c/p1/h0/f;->i:Z

    .line 9
    iput-object p2, p0, Le/m/a/c/p1/h0/f;->d:Le/m/a/c/p1/l;

    if-eqz p4, :cond_4

    .line 10
    new-instance p1, Le/m/a/c/p1/e0;

    invoke-direct {p1, p2, p4}, Le/m/a/c/p1/e0;-><init>(Le/m/a/c/p1/l;Le/m/a/c/p1/j;)V

    iput-object p1, p0, Le/m/a/c/p1/h0/f;->c:Le/m/a/c/p1/l;

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Le/m/a/c/p1/h0/f;->c:Le/m/a/c/p1/l;

    .line 12
    :goto_3
    iput-object p6, p0, Le/m/a/c/p1/h0/f;->f:Le/m/a/c/p1/h0/f$a;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/m/a/c/p1/h0/f;->f()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/m/a/c/p1/h0/f;->d:Le/m/a/c/p1/l;

    .line 3
    invoke-interface {v0}, Le/m/a/c/p1/l;->a()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public b(Le/m/a/c/p1/n;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Le/m/a/c/p1/h0/f;->e:Le/m/a/c/p1/h0/k;

    check-cast v0, Le/m/a/c/p1/h0/a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget v0, Le/m/a/c/p1/h0/m;->a:I

    .line 4
    iget-object v0, p1, Le/m/a/c/p1/n;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Le/m/a/c/p1/n;->a:Landroid/net/Uri;

    .line 5
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    :goto_0
    iput-object v0, p0, Le/m/a/c/p1/h0/f;->r:Ljava/lang/String;

    .line 7
    iget-object v1, p1, Le/m/a/c/p1/n;->a:Landroid/net/Uri;

    iput-object v1, p0, Le/m/a/c/p1/h0/f;->l:Landroid/net/Uri;

    .line 8
    iget-object v2, p0, Le/m/a/c/p1/h0/f;->a:Le/m/a/c/p1/h0/c;

    .line 9
    invoke-interface {v2, v0}, Le/m/a/c/p1/h0/c;->a(Ljava/lang/String;)Le/m/a/c/p1/h0/q;

    move-result-object v0

    .line 10
    check-cast v0, Le/m/a/c/p1/h0/s;

    .line 11
    iget-object v2, v0, Le/m/a/c/p1/h0/s;->b:Ljava/util/Map;

    const-string v3, "exo_redir"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 12
    iget-object v0, v0, Le/m/a/c/p1/h0/s;->b:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 13
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_1

    :cond_1
    move-object v2, v4

    :goto_1
    if-nez v2, :cond_2

    goto :goto_2

    .line 14
    :cond_2
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_3

    move-object v1, v4

    .line 15
    :cond_3
    iput-object v1, p0, Le/m/a/c/p1/h0/f;->m:Landroid/net/Uri;

    .line 16
    iget v0, p1, Le/m/a/c/p1/n;->b:I

    iput v0, p0, Le/m/a/c/p1/h0/f;->n:I

    .line 17
    iget-object v0, p1, Le/m/a/c/p1/n;->c:[B

    iput-object v0, p0, Le/m/a/c/p1/h0/f;->o:[B

    .line 18
    iget-object v0, p1, Le/m/a/c/p1/n;->d:Ljava/util/Map;

    iput-object v0, p0, Le/m/a/c/p1/h0/f;->p:Ljava/util/Map;

    .line 19
    iget v0, p1, Le/m/a/c/p1/n;->i:I

    iput v0, p0, Le/m/a/c/p1/h0/f;->q:I

    .line 20
    iget-wide v0, p1, Le/m/a/c/p1/n;->f:J

    iput-wide v0, p0, Le/m/a/c/p1/h0/f;->s:J

    .line 21
    iget-boolean v0, p0, Le/m/a/c/p1/h0/f;->h:Z

    const/4 v1, 0x1

    const/4 v2, -0x1

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Le/m/a/c/p1/h0/f;->v:Z

    if-eqz v0, :cond_4

    move v0, v5

    goto :goto_3

    .line 22
    :cond_4
    iget-boolean v0, p0, Le/m/a/c/p1/h0/f;->i:Z

    if-eqz v0, :cond_5

    iget-wide v6, p1, Le/m/a/c/p1/n;->g:J

    cmp-long v0, v6, v3

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v2

    :goto_3
    if-eq v0, v2, :cond_6

    goto :goto_4

    :cond_6
    move v1, v5

    .line 23
    :goto_4
    iput-boolean v1, p0, Le/m/a/c/p1/h0/f;->w:Z

    if-eqz v1, :cond_7

    .line 24
    iget-object v1, p0, Le/m/a/c/p1/h0/f;->f:Le/m/a/c/p1/h0/f$a;

    if-eqz v1, :cond_7

    .line 25
    invoke-interface {v1, v0}, Le/m/a/c/p1/h0/f$a;->a(I)V

    .line 26
    :cond_7
    iget-wide v0, p1, Le/m/a/c/p1/n;->g:J

    cmp-long v2, v0, v3

    if-nez v2, :cond_a

    iget-boolean v2, p0, Le/m/a/c/p1/h0/f;->w:Z

    if-eqz v2, :cond_8

    goto :goto_5

    .line 27
    :cond_8
    iget-object v0, p0, Le/m/a/c/p1/h0/f;->a:Le/m/a/c/p1/h0/c;

    iget-object v1, p0, Le/m/a/c/p1/h0/f;->r:Ljava/lang/String;

    invoke-interface {v0, v1}, Le/m/a/c/p1/h0/c;->a(Ljava/lang/String;)Le/m/a/c/p1/h0/q;

    move-result-object v0

    invoke-static {v0}, Le/m/a/c/p1/h0/p;->a(Le/m/a/c/p1/h0/q;)J

    move-result-wide v0

    iput-wide v0, p0, Le/m/a/c/p1/h0/f;->t:J

    cmp-long v2, v0, v3

    if-eqz v2, :cond_b

    .line 28
    iget-wide v2, p1, Le/m/a/c/p1/n;->f:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Le/m/a/c/p1/h0/f;->t:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_9

    goto :goto_6

    .line 29
    :cond_9
    new-instance p1, Le/m/a/c/p1/m;

    invoke-direct {p1, v5}, Le/m/a/c/p1/m;-><init>(I)V

    throw p1

    .line 30
    :cond_a
    :goto_5
    iput-wide v0, p0, Le/m/a/c/p1/h0/f;->t:J

    .line 31
    :cond_b
    :goto_6
    invoke-virtual {p0, v5}, Le/m/a/c/p1/h0/f;->g(Z)V

    .line 32
    iget-wide v0, p0, Le/m/a/c/p1/h0/f;->t:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception p1

    .line 33
    invoke-virtual {p0, p1}, Le/m/a/c/p1/h0/f;->e(Ljava/lang/Throwable;)V

    .line 34
    throw p1
.end method

.method public c(Le/m/a/c/p1/f0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/p1/h0/f;->b:Le/m/a/c/p1/l;

    invoke-interface {v0, p1}, Le/m/a/c/p1/l;->c(Le/m/a/c/p1/f0;)V

    .line 2
    iget-object v0, p0, Le/m/a/c/p1/h0/f;->d:Le/m/a/c/p1/l;

    invoke-interface {v0, p1}, Le/m/a/c/p1/l;->c(Le/m/a/c/p1/f0;)V

    return-void
.end method

.method public close()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/m/a/c/p1/h0/f;->l:Landroid/net/Uri;

    .line 2
    iput-object v0, p0, Le/m/a/c/p1/h0/f;->m:Landroid/net/Uri;

    const/4 v1, 0x1

    .line 3
    iput v1, p0, Le/m/a/c/p1/h0/f;->n:I

    .line 4
    iput-object v0, p0, Le/m/a/c/p1/h0/f;->o:[B

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Le/m/a/c/p1/h0/f;->p:Ljava/util/Map;

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Le/m/a/c/p1/h0/f;->q:I

    const-wide/16 v1, 0x0

    .line 7
    iput-wide v1, p0, Le/m/a/c/p1/h0/f;->s:J

    .line 8
    iput-object v0, p0, Le/m/a/c/p1/h0/f;->r:Ljava/lang/String;

    .line 9
    iget-object v0, p0, Le/m/a/c/p1/h0/f;->f:Le/m/a/c/p1/h0/f$a;

    if-eqz v0, :cond_0

    iget-wide v3, p0, Le/m/a/c/p1/h0/f;->x:J

    cmp-long v3, v3, v1

    if-lez v3, :cond_0

    .line 10
    iget-object v3, p0, Le/m/a/c/p1/h0/f;->a:Le/m/a/c/p1/h0/c;

    invoke-interface {v3}, Le/m/a/c/p1/h0/c;->g()J

    move-result-wide v3

    iget-wide v5, p0, Le/m/a/c/p1/h0/f;->x:J

    invoke-interface {v0, v3, v4, v5, v6}, Le/m/a/c/p1/h0/f$a;->b(JJ)V

    .line 11
    iput-wide v1, p0, Le/m/a/c/p1/h0/f;->x:J

    .line 12
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Le/m/a/c/p1/h0/f;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 13
    invoke-virtual {p0, v0}, Le/m/a/c/p1/h0/f;->e(Ljava/lang/Throwable;)V

    .line 14
    throw v0
.end method

.method public final d()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/p1/h0/f;->j:Le/m/a/c/p1/l;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-interface {v0}, Le/m/a/c/p1/l;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-object v2, p0, Le/m/a/c/p1/h0/f;->j:Le/m/a/c/p1/l;

    .line 4
    iput-boolean v1, p0, Le/m/a/c/p1/h0/f;->k:Z

    .line 5
    iget-object v0, p0, Le/m/a/c/p1/h0/f;->u:Le/m/a/c/p1/h0/l;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Le/m/a/c/p1/h0/f;->a:Le/m/a/c/p1/h0/c;

    invoke-interface {v1, v0}, Le/m/a/c/p1/h0/c;->h(Le/m/a/c/p1/h0/l;)V

    .line 7
    iput-object v2, p0, Le/m/a/c/p1/h0/f;->u:Le/m/a/c/p1/h0/l;

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 8
    iput-object v2, p0, Le/m/a/c/p1/h0/f;->j:Le/m/a/c/p1/l;

    .line 9
    iput-boolean v1, p0, Le/m/a/c/p1/h0/f;->k:Z

    .line 10
    iget-object v1, p0, Le/m/a/c/p1/h0/f;->u:Le/m/a/c/p1/h0/l;

    if-eqz v1, :cond_2

    .line 11
    iget-object v3, p0, Le/m/a/c/p1/h0/f;->a:Le/m/a/c/p1/h0/c;

    invoke-interface {v3, v1}, Le/m/a/c/p1/h0/c;->h(Le/m/a/c/p1/h0/l;)V

    .line 12
    iput-object v2, p0, Le/m/a/c/p1/h0/f;->u:Le/m/a/c/p1/h0/l;

    .line 13
    :cond_2
    throw v0
.end method

.method public final e(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/a/c/p1/h0/f;->f()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of p1, p1, Le/m/a/c/p1/h0/c$a;

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/m/a/c/p1/h0/f;->v:Z

    :cond_1
    return-void
.end method

.method public final f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/c/p1/h0/f;->j:Le/m/a/c/p1/l;

    iget-object v1, p0, Le/m/a/c/p1/h0/f;->b:Le/m/a/c/p1/l;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final g(Z)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-boolean v0, v1, Le/m/a/c/p1/h0/f;->w:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, v1, Le/m/a/c/p1/h0/f;->g:Z

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    iget-object v0, v1, Le/m/a/c/p1/h0/f;->a:Le/m/a/c/p1/h0/c;

    iget-object v3, v1, Le/m/a/c/p1/h0/f;->r:Ljava/lang/String;

    iget-wide v4, v1, Le/m/a/c/p1/h0/f;->s:J

    invoke-interface {v0, v3, v4, v5}, Le/m/a/c/p1/h0/c;->d(Ljava/lang/String;J)Le/m/a/c/p1/h0/l;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 5
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 6
    :cond_1
    iget-object v0, v1, Le/m/a/c/p1/h0/f;->a:Le/m/a/c/p1/h0/c;

    iget-object v3, v1, Le/m/a/c/p1/h0/f;->r:Ljava/lang/String;

    iget-wide v4, v1, Le/m/a/c/p1/h0/f;->s:J

    invoke-interface {v0, v3, v4, v5}, Le/m/a/c/p1/h0/c;->i(Ljava/lang/String;J)Le/m/a/c/p1/h0/l;

    move-result-object v0

    :goto_0
    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    if-nez v0, :cond_2

    .line 7
    iget-object v7, v1, Le/m/a/c/p1/h0/f;->d:Le/m/a/c/p1/l;

    .line 8
    new-instance v21, Le/m/a/c/p1/n;

    iget-object v9, v1, Le/m/a/c/p1/h0/f;->l:Landroid/net/Uri;

    iget v10, v1, Le/m/a/c/p1/h0/f;->n:I

    iget-object v11, v1, Le/m/a/c/p1/h0/f;->o:[B

    iget-wide v14, v1, Le/m/a/c/p1/h0/f;->s:J

    iget-wide v12, v1, Le/m/a/c/p1/h0/f;->t:J

    iget-object v8, v1, Le/m/a/c/p1/h0/f;->r:Ljava/lang/String;

    iget v2, v1, Le/m/a/c/p1/h0/f;->q:I

    iget-object v6, v1, Le/m/a/c/p1/h0/f;->p:Ljava/util/Map;

    move-object/from16 v18, v8

    move-object/from16 v8, v21

    move-wide/from16 v16, v12

    move-wide v12, v14

    move/from16 v19, v2

    move-object/from16 v20, v6

    invoke-direct/range {v8 .. v20}, Le/m/a/c/p1/n;-><init>(Landroid/net/Uri;I[BJJJLjava/lang/String;ILjava/util/Map;)V

    goto/16 :goto_3

    .line 9
    :cond_2
    iget-boolean v2, v0, Le/m/a/c/p1/h0/l;->d:Z

    if-eqz v2, :cond_4

    .line 10
    iget-object v2, v0, Le/m/a/c/p1/h0/l;->e:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .line 11
    iget-wide v8, v1, Le/m/a/c/p1/h0/f;->s:J

    iget-wide v10, v0, Le/m/a/c/p1/h0/l;->b:J

    sub-long v10, v8, v10

    .line 12
    iget-wide v8, v0, Le/m/a/c/p1/h0/l;->c:J

    sub-long/2addr v8, v10

    .line 13
    iget-wide v12, v1, Le/m/a/c/p1/h0/f;->t:J

    cmp-long v2, v12, v3

    if-eqz v2, :cond_3

    .line 14
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    :cond_3
    move-wide v12, v8

    .line 15
    new-instance v21, Le/m/a/c/p1/n;

    iget-wide v8, v1, Le/m/a/c/p1/h0/f;->s:J

    iget-object v14, v1, Le/m/a/c/p1/h0/f;->r:Ljava/lang/String;

    iget v15, v1, Le/m/a/c/p1/h0/f;->q:I

    move-object/from16 v6, v21

    invoke-direct/range {v6 .. v15}, Le/m/a/c/p1/n;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    .line 16
    iget-object v7, v1, Le/m/a/c/p1/h0/f;->b:Le/m/a/c/p1/l;

    goto :goto_3

    .line 17
    :cond_4
    iget-wide v6, v0, Le/m/a/c/p1/h0/l;->c:J

    cmp-long v2, v6, v3

    if-nez v2, :cond_5

    move v2, v5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_6

    .line 18
    iget-wide v6, v1, Le/m/a/c/p1/h0/f;->t:J

    goto :goto_2

    .line 19
    :cond_6
    iget-wide v8, v1, Le/m/a/c/p1/h0/f;->t:J

    cmp-long v2, v8, v3

    if-eqz v2, :cond_7

    .line 20
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    :cond_7
    :goto_2
    move-wide/from16 v16, v6

    .line 21
    new-instance v21, Le/m/a/c/p1/n;

    iget-object v9, v1, Le/m/a/c/p1/h0/f;->l:Landroid/net/Uri;

    iget v10, v1, Le/m/a/c/p1/h0/f;->n:I

    iget-object v11, v1, Le/m/a/c/p1/h0/f;->o:[B

    iget-wide v14, v1, Le/m/a/c/p1/h0/f;->s:J

    iget-object v2, v1, Le/m/a/c/p1/h0/f;->r:Ljava/lang/String;

    iget v6, v1, Le/m/a/c/p1/h0/f;->q:I

    iget-object v7, v1, Le/m/a/c/p1/h0/f;->p:Ljava/util/Map;

    move-object/from16 v8, v21

    move-wide v12, v14

    move-object/from16 v18, v2

    move/from16 v19, v6

    move-object/from16 v20, v7

    invoke-direct/range {v8 .. v20}, Le/m/a/c/p1/n;-><init>(Landroid/net/Uri;I[BJJJLjava/lang/String;ILjava/util/Map;)V

    .line 22
    iget-object v7, v1, Le/m/a/c/p1/h0/f;->c:Le/m/a/c/p1/l;

    if-eqz v7, :cond_8

    :goto_3
    move-object v2, v0

    move-object/from16 v0, v21

    goto :goto_4

    .line 23
    :cond_8
    iget-object v7, v1, Le/m/a/c/p1/h0/f;->d:Le/m/a/c/p1/l;

    .line 24
    iget-object v2, v1, Le/m/a/c/p1/h0/f;->a:Le/m/a/c/p1/h0/c;

    invoke-interface {v2, v0}, Le/m/a/c/p1/h0/c;->h(Le/m/a/c/p1/h0/l;)V

    move-object/from16 v0, v21

    const/4 v2, 0x0

    .line 25
    :goto_4
    iget-boolean v6, v1, Le/m/a/c/p1/h0/f;->w:Z

    if-nez v6, :cond_9

    iget-object v6, v1, Le/m/a/c/p1/h0/f;->d:Le/m/a/c/p1/l;

    if-ne v7, v6, :cond_9

    iget-wide v8, v1, Le/m/a/c/p1/h0/f;->s:J

    const-wide/32 v10, 0x19000

    add-long/2addr v8, v10

    goto :goto_5

    :cond_9
    const-wide v8, 0x7fffffffffffffffL

    :goto_5
    iput-wide v8, v1, Le/m/a/c/p1/h0/f;->y:J

    if-eqz p1, :cond_d

    .line 26
    iget-object v6, v1, Le/m/a/c/p1/h0/f;->j:Le/m/a/c/p1/l;

    iget-object v8, v1, Le/m/a/c/p1/h0/f;->d:Le/m/a/c/p1/l;

    if-ne v6, v8, :cond_a

    move v6, v5

    goto :goto_6

    :cond_a
    const/4 v6, 0x0

    .line 27
    :goto_6
    invoke-static {v6}, Ln3/g0/y;->x(Z)V

    .line 28
    iget-object v6, v1, Le/m/a/c/p1/h0/f;->d:Le/m/a/c/p1/l;

    if-ne v7, v6, :cond_b

    return-void

    .line 29
    :cond_b
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/p1/h0/f;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 30
    iget-boolean v0, v2, Le/m/a/c/p1/h0/l;->d:Z

    xor-int/2addr v0, v5

    if-eqz v0, :cond_c

    .line 31
    iget-object v0, v1, Le/m/a/c/p1/h0/f;->a:Le/m/a/c/p1/h0/c;

    invoke-interface {v0, v2}, Le/m/a/c/p1/h0/c;->h(Le/m/a/c/p1/h0/l;)V

    .line 32
    :cond_c
    throw v3

    :cond_d
    :goto_7
    if-eqz v2, :cond_e

    .line 33
    iget-boolean v6, v2, Le/m/a/c/p1/h0/l;->d:Z

    xor-int/2addr v6, v5

    if-eqz v6, :cond_e

    .line 34
    iput-object v2, v1, Le/m/a/c/p1/h0/f;->u:Le/m/a/c/p1/h0/l;

    .line 35
    :cond_e
    iput-object v7, v1, Le/m/a/c/p1/h0/f;->j:Le/m/a/c/p1/l;

    .line 36
    iget-wide v8, v0, Le/m/a/c/p1/n;->g:J

    cmp-long v2, v8, v3

    if-nez v2, :cond_f

    move v2, v5

    goto :goto_8

    :cond_f
    const/4 v2, 0x0

    :goto_8
    iput-boolean v2, v1, Le/m/a/c/p1/h0/f;->k:Z

    .line 37
    invoke-interface {v7, v0}, Le/m/a/c/p1/l;->b(Le/m/a/c/p1/n;)J

    move-result-wide v6

    .line 38
    new-instance v0, Le/m/a/c/p1/h0/r;

    invoke-direct {v0}, Le/m/a/c/p1/h0/r;-><init>()V

    .line 39
    iget-boolean v2, v1, Le/m/a/c/p1/h0/f;->k:Z

    if-eqz v2, :cond_10

    cmp-long v2, v6, v3

    if-eqz v2, :cond_10

    .line 40
    iput-wide v6, v1, Le/m/a/c/p1/h0/f;->t:J

    .line 41
    iget-wide v2, v1, Le/m/a/c/p1/h0/f;->s:J

    add-long/2addr v2, v6

    invoke-static {v0, v2, v3}, Le/m/a/c/p1/h0/r;->a(Le/m/a/c/p1/h0/r;J)Le/m/a/c/p1/h0/r;

    .line 42
    :cond_10
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/p1/h0/f;->f()Z

    move-result v2

    xor-int/2addr v2, v5

    if-eqz v2, :cond_13

    .line 43
    iget-object v2, v1, Le/m/a/c/p1/h0/f;->j:Le/m/a/c/p1/l;

    invoke-interface {v2}, Le/m/a/c/p1/l;->getUri()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Le/m/a/c/p1/h0/f;->m:Landroid/net/Uri;

    .line 44
    iget-object v3, v1, Le/m/a/c/p1/h0/f;->l:Landroid/net/Uri;

    invoke-virtual {v3, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v5

    if-eqz v2, :cond_11

    .line 45
    iget-object v2, v1, Le/m/a/c/p1/h0/f;->m:Landroid/net/Uri;

    goto :goto_9

    :cond_11
    const/4 v2, 0x0

    :goto_9
    const-string v3, "exo_redir"

    if-nez v2, :cond_12

    .line 46
    iget-object v2, v0, Le/m/a/c/p1/h0/r;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v2, v0, Le/m/a/c/p1/h0/r;->a:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 48
    :cond_12
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 49
    iget-object v4, v0, Le/m/a/c/p1/h0/r;->a:Ljava/util/Map;

    .line 50
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v2, v0, Le/m/a/c/p1/h0/r;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 53
    :cond_13
    :goto_a
    iget-object v2, v1, Le/m/a/c/p1/h0/f;->j:Le/m/a/c/p1/l;

    iget-object v3, v1, Le/m/a/c/p1/h0/f;->c:Le/m/a/c/p1/l;

    if-ne v2, v3, :cond_14

    goto :goto_b

    :cond_14
    const/4 v5, 0x0

    :goto_b
    if-eqz v5, :cond_15

    .line 54
    iget-object v2, v1, Le/m/a/c/p1/h0/f;->a:Le/m/a/c/p1/h0/c;

    iget-object v3, v1, Le/m/a/c/p1/h0/f;->r:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Le/m/a/c/p1/h0/c;->b(Ljava/lang/String;Le/m/a/c/p1/h0/r;)V

    :cond_15
    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/p1/h0/f;->m:Landroid/net/Uri;

    return-object v0
.end method

.method public final h()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Le/m/a/c/p1/h0/f;->t:J

    .line 2
    iget-object v0, p0, Le/m/a/c/p1/h0/f;->j:Le/m/a/c/p1/l;

    iget-object v1, p0, Le/m/a/c/p1/h0/f;->c:Le/m/a/c/p1/l;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Le/m/a/c/p1/h0/r;

    invoke-direct {v0}, Le/m/a/c/p1/h0/r;-><init>()V

    .line 4
    iget-wide v1, p0, Le/m/a/c/p1/h0/f;->s:J

    invoke-static {v0, v1, v2}, Le/m/a/c/p1/h0/r;->a(Le/m/a/c/p1/h0/r;J)Le/m/a/c/p1/h0/r;

    .line 5
    iget-object v1, p0, Le/m/a/c/p1/h0/f;->a:Le/m/a/c/p1/h0/c;

    iget-object v2, p0, Le/m/a/c/p1/h0/f;->r:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Le/m/a/c/p1/h0/c;->b(Ljava/lang/String;Le/m/a/c/p1/h0/r;)V

    :cond_1
    return-void
.end method

.method public read([BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 1
    :cond_0
    iget-wide v1, p0, Le/m/a/c/p1/h0/f;->t:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, -0x1

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    :try_start_0
    iget-wide v5, p0, Le/m/a/c/p1/h0/f;->s:J

    iget-wide v7, p0, Le/m/a/c/p1/h0/f;->y:J

    cmp-long v1, v5, v7

    if-ltz v1, :cond_2

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v1}, Le/m/a/c/p1/h0/f;->g(Z)V

    .line 4
    :cond_2
    iget-object v1, p0, Le/m/a/c/p1/h0/f;->j:Le/m/a/c/p1/l;

    invoke-interface {v1, p1, p2, p3}, Le/m/a/c/p1/l;->read([BII)I

    move-result v1

    const-wide/16 v5, -0x1

    if-eq v1, v2, :cond_4

    .line 5
    invoke-virtual {p0}, Le/m/a/c/p1/h0/f;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    iget-wide p1, p0, Le/m/a/c/p1/h0/f;->x:J

    int-to-long v3, v1

    add-long/2addr p1, v3

    iput-wide p1, p0, Le/m/a/c/p1/h0/f;->x:J

    .line 7
    :cond_3
    iget-wide p1, p0, Le/m/a/c/p1/h0/f;->s:J

    int-to-long v3, v1

    add-long/2addr p1, v3

    iput-wide p1, p0, Le/m/a/c/p1/h0/f;->s:J

    .line 8
    iget-wide p1, p0, Le/m/a/c/p1/h0/f;->t:J

    cmp-long p3, p1, v5

    if-eqz p3, :cond_6

    sub-long/2addr p1, v3

    .line 9
    iput-wide p1, p0, Le/m/a/c/p1/h0/f;->t:J

    goto :goto_0

    .line 10
    :cond_4
    iget-boolean v7, p0, Le/m/a/c/p1/h0/f;->k:Z

    if-eqz v7, :cond_5

    .line 11
    invoke-virtual {p0}, Le/m/a/c/p1/h0/f;->h()V

    goto :goto_0

    .line 12
    :cond_5
    iget-wide v7, p0, Le/m/a/c/p1/h0/f;->t:J

    cmp-long v3, v7, v3

    if-gtz v3, :cond_7

    cmp-long v3, v7, v5

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    :goto_0
    return v1

    .line 13
    :cond_7
    :goto_1
    invoke-virtual {p0}, Le/m/a/c/p1/h0/f;->d()V

    .line 14
    invoke-virtual {p0, v0}, Le/m/a/c/p1/h0/f;->g(Z)V

    .line 15
    invoke-virtual {p0, p1, p2, p3}, Le/m/a/c/p1/h0/f;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 16
    invoke-virtual {p0, p1}, Le/m/a/c/p1/h0/f;->e(Ljava/lang/Throwable;)V

    .line 17
    throw p1

    :catch_0
    move-exception p1

    .line 18
    iget-boolean p2, p0, Le/m/a/c/p1/h0/f;->k:Z

    if-eqz p2, :cond_8

    invoke-static {p1}, Le/m/a/c/p1/h0/m;->c(Ljava/io/IOException;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 19
    invoke-virtual {p0}, Le/m/a/c/p1/h0/f;->h()V

    return v2

    .line 20
    :cond_8
    invoke-virtual {p0, p1}, Le/m/a/c/p1/h0/f;->e(Ljava/lang/Throwable;)V

    .line 21
    throw p1
.end method
