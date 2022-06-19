.class public final Lu3/p0/g/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu3/p0/g/c$a;,
        Lu3/p0/g/c$b;
    }
.end annotation


# instance fields
.field public a:Z

.field public final b:Lu3/p0/g/i;

.field public final c:Lu3/p0/g/e;

.field public final d:Lu3/u;

.field public final e:Lu3/p0/g/d;

.field public final f:Lu3/p0/h/d;


# direct methods
.method public constructor <init>(Lu3/p0/g/e;Lu3/u;Lu3/p0/g/d;Lu3/p0/h/d;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "finder"

    invoke-static {p3, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "codec"

    invoke-static {p4, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu3/p0/g/c;->c:Lu3/p0/g/e;

    iput-object p2, p0, Lu3/p0/g/c;->d:Lu3/u;

    iput-object p3, p0, Lu3/p0/g/c;->e:Lu3/p0/g/d;

    iput-object p4, p0, Lu3/p0/g/c;->f:Lu3/p0/h/d;

    .line 2
    invoke-interface {p4}, Lu3/p0/h/d;->c()Lu3/p0/g/i;

    move-result-object p1

    iput-object p1, p0, Lu3/p0/g/c;->b:Lu3/p0/g/i;

    return-void
.end method


# virtual methods
.method public final a(JZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(JZZTE;)TE;"
        }
    .end annotation

    if-eqz p5, :cond_0

    .line 1
    invoke-virtual {p0, p5}, Lu3/p0/g/c;->f(Ljava/io/IOException;)V

    :cond_0
    const-string v0, "ioe"

    const-string v1, "call"

    if-eqz p4, :cond_2

    if-eqz p5, :cond_1

    .line 2
    iget-object v2, p0, Lu3/p0/g/c;->d:Lu3/u;

    iget-object v3, p0, Lu3/p0/g/c;->c:Lu3/p0/g/e;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p5, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v2, p0, Lu3/p0/g/c;->d:Lu3/u;

    iget-object v3, p0, Lu3/p0/g/c;->c:Lu3/p0/g/e;

    invoke-virtual {v2, v3, p1, p2}, Lu3/u;->k(Lu3/f;J)V

    :cond_2
    :goto_0
    if-eqz p3, :cond_4

    if-eqz p5, :cond_3

    .line 5
    iget-object p1, p0, Lu3/p0/g/c;->d:Lu3/u;

    iget-object p2, p0, Lu3/p0/g/c;->c:Lu3/p0/g/e;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p5, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_3
    iget-object v0, p0, Lu3/p0/g/c;->d:Lu3/u;

    iget-object v1, p0, Lu3/p0/g/c;->c:Lu3/p0/g/e;

    invoke-virtual {v0, v1, p1, p2}, Lu3/u;->o(Lu3/f;J)V

    .line 8
    :cond_4
    :goto_1
    iget-object p1, p0, Lu3/p0/g/c;->c:Lu3/p0/g/e;

    invoke-virtual {p1, p0, p4, p3, p5}, Lu3/p0/g/e;->g(Lu3/p0/g/c;ZZLjava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lu3/g0;Z)Lv3/z;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-boolean p2, p0, Lu3/p0/g/c;->a:Z

    .line 2
    iget-object p2, p1, Lu3/g0;->e:Lu3/j0;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Lu3/j0;->a()J

    move-result-wide v0

    .line 4
    iget-object p2, p0, Lu3/p0/g/c;->d:Lu3/u;

    iget-object v2, p0, Lu3/p0/g/c;->c:Lu3/p0/g/e;

    invoke-virtual {p2, v2}, Lu3/u;->l(Lu3/f;)V

    .line 5
    iget-object p2, p0, Lu3/p0/g/c;->f:Lu3/p0/h/d;

    invoke-interface {p2, p1, v0, v1}, Lu3/p0/h/d;->d(Lu3/g0;J)Lv3/z;

    move-result-object p1

    .line 6
    new-instance p2, Lu3/p0/g/c$a;

    invoke-direct {p2, p0, p1, v0, v1}, Lu3/p0/g/c$a;-><init>(Lu3/p0/g/c;Lv3/z;J)V

    return-object p2

    .line 7
    :cond_0
    invoke-static {}, Ls1/z/c/l;->k()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lu3/p0/g/c;->f:Lu3/p0/h/d;

    invoke-interface {v0}, Lu3/p0/h/d;->e()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lu3/p0/g/c;->d:Lu3/u;

    iget-object v2, p0, Lu3/p0/g/c;->c:Lu3/p0/g/e;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "call"

    invoke-static {v2, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "ioe"

    invoke-static {v0, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0}, Lu3/p0/g/c;->f(Ljava/io/IOException;)V

    .line 5
    throw v0
.end method

.method public final d(Z)Lu3/k0$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lu3/p0/g/c;->f:Lu3/p0/h/d;

    invoke-interface {v0, p1}, Lu3/p0/h/d;->h(Z)Lu3/k0$a;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "deferredTrailers"

    .line 2
    invoke-static {p0, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p0, p1, Lu3/k0$a;->m:Lu3/p0/g/c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    .line 4
    iget-object v0, p0, Lu3/p0/g/c;->d:Lu3/u;

    iget-object v1, p0, Lu3/p0/g/c;->c:Lu3/p0/g/e;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "call"

    invoke-static {v1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioe"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p1}, Lu3/p0/g/c;->f(Ljava/io/IOException;)V

    .line 7
    throw p1
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lu3/p0/g/c;->d:Lu3/u;

    iget-object v1, p0, Lu3/p0/g/c;->c:Lu3/p0/g/e;

    invoke-virtual {v0, v1}, Lu3/u;->r(Lu3/f;)V

    return-void
.end method

.method public final f(Ljava/io/IOException;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lu3/p0/g/c;->e:Lu3/p0/g/d;

    invoke-virtual {v0, p1}, Lu3/p0/g/d;->c(Ljava/io/IOException;)V

    .line 2
    iget-object v0, p0, Lu3/p0/g/c;->f:Lu3/p0/h/d;

    invoke-interface {v0}, Lu3/p0/h/d;->c()Lu3/p0/g/i;

    move-result-object v0

    iget-object v1, p0, Lu3/p0/g/c;->c:Lu3/p0/g/e;

    .line 3
    monitor-enter v0

    :try_start_0
    const-string v2, "call"

    invoke-static {v1, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    instance-of v2, p1, Lu3/p0/j/u;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 5
    move-object v2, p1

    check-cast v2, Lu3/p0/j/u;

    iget-object v2, v2, Lu3/p0/j/u;->a:Lu3/p0/j/b;

    sget-object v4, Lu3/p0/j/b;->f:Lu3/p0/j/b;

    if-ne v2, v4, :cond_0

    .line 6
    iget p1, v0, Lu3/p0/g/i;->m:I

    add-int/2addr p1, v3

    iput p1, v0, Lu3/p0/g/i;->m:I

    if-le p1, v3, :cond_4

    .line 7
    iput-boolean v3, v0, Lu3/p0/g/i;->i:Z

    .line 8
    iget p1, v0, Lu3/p0/g/i;->k:I

    add-int/2addr p1, v3

    iput p1, v0, Lu3/p0/g/i;->k:I

    goto :goto_0

    .line 9
    :cond_0
    check-cast p1, Lu3/p0/j/u;

    iget-object p1, p1, Lu3/p0/j/u;->a:Lu3/p0/j/b;

    sget-object v2, Lu3/p0/j/b;->g:Lu3/p0/j/b;

    if-ne p1, v2, :cond_1

    .line 10
    iget-boolean p1, v1, Lu3/p0/g/e;->m:Z

    if-eqz p1, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    iput-boolean v3, v0, Lu3/p0/g/i;->i:Z

    .line 12
    iget p1, v0, Lu3/p0/g/i;->k:I

    add-int/2addr p1, v3

    iput p1, v0, Lu3/p0/g/i;->k:I

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v0}, Lu3/p0/g/i;->j()Z

    move-result v2

    if-eqz v2, :cond_3

    instance-of v2, p1, Lu3/p0/j/a;

    if-eqz v2, :cond_4

    .line 14
    :cond_3
    iput-boolean v3, v0, Lu3/p0/g/i;->i:Z

    .line 15
    iget v2, v0, Lu3/p0/g/i;->l:I

    if-nez v2, :cond_4

    .line 16
    iget-object v1, v1, Lu3/p0/g/e;->p:Lu3/e0;

    .line 17
    iget-object v2, v0, Lu3/p0/g/i;->q:Lu3/n0;

    invoke-virtual {v0, v1, v2, p1}, Lu3/p0/g/i;->d(Lu3/e0;Lu3/n0;Ljava/io/IOException;)V

    .line 18
    iget p1, v0, Lu3/p0/g/i;->k:I

    add-int/2addr p1, v3

    iput p1, v0, Lu3/p0/g/i;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_4
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
