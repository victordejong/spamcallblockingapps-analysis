.class public final Lu3/p0/g/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/b0;


# static fields
.field public static final a:Lu3/p0/g/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lu3/p0/g/a;

    invoke-direct {v0}, Lu3/p0/g/a;-><init>()V

    sput-object v0, Lu3/p0/g/a;->a:Lu3/p0/g/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu3/b0$a;)Lu3/k0;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "chain"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p1, Lu3/p0/h/g;

    .line 2
    iget-object v0, p1, Lu3/p0/h/g;->b:Lu3/p0/g/e;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "chain"

    invoke-static {p1, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    iget-boolean v1, v0, Lu3/p0/g/e;->l:Z

    if-eqz v1, :cond_4

    .line 6
    iget-boolean v1, v0, Lu3/p0/g/e;->k:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_3

    .line 7
    iget-boolean v1, v0, Lu3/p0/g/e;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 8
    monitor-exit v0

    .line 9
    iget-object v1, v0, Lu3/p0/g/e;->f:Lu3/p0/g/d;

    if-eqz v1, :cond_1

    .line 10
    iget-object v10, v0, Lu3/p0/g/e;->p:Lu3/e0;

    const-string v3, "client"

    .line 11
    invoke-static {v10, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "chain"

    invoke-static {p1, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    :try_start_1
    iget v4, p1, Lu3/p0/h/g;->g:I

    .line 13
    iget v5, p1, Lu3/p0/h/g;->h:I

    .line 14
    iget v6, p1, Lu3/p0/h/g;->i:I

    .line 15
    iget v7, v10, Lu3/e0;->B:I

    .line 16
    iget-boolean v8, v10, Lu3/e0;->f:Z

    .line 17
    iget-object v3, p1, Lu3/p0/h/g;->f:Lu3/g0;

    .line 18
    iget-object v3, v3, Lu3/g0;->c:Ljava/lang/String;

    const-string v9, "GET"

    .line 19
    invoke-static {v3, v9}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v9, v3, 0x1

    move-object v3, v1

    .line 20
    invoke-virtual/range {v3 .. v9}, Lu3/p0/g/d;->a(IIIIZZ)Lu3/p0/g/i;

    move-result-object v3

    .line 21
    invoke-virtual {v3, v10, p1}, Lu3/p0/g/i;->k(Lu3/e0;Lu3/p0/h/g;)Lu3/p0/h/d;

    move-result-object v3
    :try_end_1
    .catch Lu3/p0/g/l; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 22
    new-instance v4, Lu3/p0/g/c;

    iget-object v5, v0, Lu3/p0/g/e;->b:Lu3/u;

    invoke-direct {v4, v0, v5, v1, v3}, Lu3/p0/g/c;-><init>(Lu3/p0/g/e;Lu3/u;Lu3/p0/g/d;Lu3/p0/h/d;)V

    .line 23
    iput-object v4, v0, Lu3/p0/g/e;->i:Lu3/p0/g/c;

    .line 24
    iput-object v4, v0, Lu3/p0/g/e;->n:Lu3/p0/g/c;

    .line 25
    monitor-enter v0

    .line 26
    :try_start_2
    iput-boolean v2, v0, Lu3/p0/g/e;->j:Z

    .line 27
    iput-boolean v2, v0, Lu3/p0/g/e;->k:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    monitor-exit v0

    .line 29
    iget-boolean v0, v0, Lu3/p0/g/e;->m:Z

    if-nez v0, :cond_0

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3d

    move-object v1, p1

    move-object v3, v4

    move-object v4, v0

    .line 30
    invoke-static/range {v1 .. v8}, Lu3/p0/h/g;->b(Lu3/p0/h/g;ILu3/p0/g/c;Lu3/g0;IIII)Lu3/p0/h/g;

    move-result-object v0

    .line 31
    iget-object p1, p1, Lu3/p0/h/g;->f:Lu3/g0;

    .line 32
    invoke-virtual {v0, p1}, Lu3/p0/h/g;->a(Lu3/g0;)Lu3/k0;

    move-result-object p1

    return-object p1

    .line 33
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 34
    monitor-exit v0

    throw p1

    :catch_0
    move-exception p1

    .line 35
    invoke-virtual {v1, p1}, Lu3/p0/g/d;->c(Ljava/io/IOException;)V

    .line 36
    new-instance v0, Lu3/p0/g/l;

    invoke-direct {v0, p1}, Lu3/p0/g/l;-><init>(Ljava/io/IOException;)V

    throw v0

    :catch_1
    move-exception p1

    .line 37
    iget-object v0, p1, Lu3/p0/g/l;->a:Ljava/io/IOException;

    .line 38
    invoke-virtual {v1, v0}, Lu3/p0/g/d;->c(Ljava/io/IOException;)V

    .line 39
    throw p1

    .line 40
    :cond_1
    invoke-static {}, Ls1/z/c/l;->k()V

    const/4 p1, 0x0

    throw p1

    :cond_2
    :try_start_3
    const-string p1, "Check failed."

    .line 41
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string p1, "Check failed."

    .line 42
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string p1, "released"

    .line 43
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 44
    monitor-exit v0

    throw p1
.end method
