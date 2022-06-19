.class public final Lx3/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx3/s$b;,
        Lx3/s$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lx3/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lx3/z;

.field public final b:[Ljava/lang/Object;

.field public final c:Lu3/f$a;

.field public final d:Lx3/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx3/j<",
            "Lu3/l0;",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile e:Z

.field public f:Lu3/f;

.field public g:Ljava/lang/Throwable;

.field public h:Z


# direct methods
.method public constructor <init>(Lx3/z;[Ljava/lang/Object;Lu3/f$a;Lx3/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/z;",
            "[",
            "Ljava/lang/Object;",
            "Lu3/f$a;",
            "Lx3/j<",
            "Lu3/l0;",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx3/s;->a:Lx3/z;

    .line 3
    iput-object p2, p0, Lx3/s;->b:[Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lx3/s;->c:Lu3/f$a;

    .line 5
    iput-object p4, p0, Lx3/s;->d:Lx3/j;

    return-void
.end method


# virtual methods
.method public final a()Lu3/f;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lx3/s;->c:Lu3/f$a;

    iget-object v1, p0, Lx3/s;->a:Lx3/z;

    iget-object v2, p0, Lx3/s;->b:[Ljava/lang/Object;

    .line 2
    iget-object v3, v1, Lx3/z;->j:[Lx3/w;

    .line 3
    array-length v4, v2

    .line 4
    array-length v5, v3

    if-ne v4, v5, :cond_a

    .line 5
    new-instance v5, Lx3/y;

    iget-object v7, v1, Lx3/z;->c:Ljava/lang/String;

    iget-object v8, v1, Lx3/z;->b:Lu3/a0;

    iget-object v9, v1, Lx3/z;->d:Ljava/lang/String;

    iget-object v10, v1, Lx3/z;->e:Lu3/z;

    iget-object v11, v1, Lx3/z;->f:Lu3/c0;

    iget-boolean v12, v1, Lx3/z;->g:Z

    iget-boolean v13, v1, Lx3/z;->h:Z

    iget-boolean v14, v1, Lx3/z;->i:Z

    move-object v6, v5

    invoke-direct/range {v6 .. v14}, Lx3/y;-><init>(Ljava/lang/String;Lu3/a0;Ljava/lang/String;Lu3/z;Lu3/c0;ZZZ)V

    .line 6
    iget-boolean v6, v1, Lx3/z;->k:Z

    if-eqz v6, :cond_0

    add-int/lit8 v4, v4, -0x1

    .line 7
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v4, :cond_1

    .line 8
    aget-object v9, v2, v8

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    aget-object v9, v3, v8

    aget-object v10, v2, v8

    invoke-virtual {v9, v5, v10}, Lx3/w;->a(Lx3/y;Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v2, v5, Lx3/y;->d:Lu3/a0$a;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {v2}, Lu3/a0$a;->b()Lu3/a0;

    move-result-object v2

    goto :goto_2

    .line 12
    :cond_2
    iget-object v2, v5, Lx3/y;->b:Lu3/a0;

    iget-object v4, v5, Lx3/y;->c:Ljava/lang/String;

    .line 13
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "link"

    invoke-static {v4, v8}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2, v4}, Lu3/a0;->g(Ljava/lang/String;)Lu3/a0$a;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lu3/a0$a;->b()Lu3/a0;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_9

    .line 15
    :goto_2
    iget-object v4, v5, Lx3/y;->k:Lu3/j0;

    if-nez v4, :cond_6

    .line 16
    iget-object v8, v5, Lx3/y;->j:Lu3/v$a;

    if-eqz v8, :cond_4

    .line 17
    new-instance v4, Lu3/v;

    iget-object v3, v8, Lu3/v$a;->a:Ljava/util/List;

    iget-object v7, v8, Lu3/v$a;->b:Ljava/util/List;

    invoke-direct {v4, v3, v7}, Lu3/v;-><init>(Ljava/util/List;Ljava/util/List;)V

    goto :goto_3

    .line 18
    :cond_4
    iget-object v8, v5, Lx3/y;->i:Lu3/d0$a;

    if-eqz v8, :cond_5

    .line 19
    invoke-virtual {v8}, Lu3/d0$a;->d()Lu3/d0;

    move-result-object v4

    goto :goto_3

    .line 20
    :cond_5
    iget-boolean v8, v5, Lx3/y;->h:Z

    if-eqz v8, :cond_6

    new-array v4, v7, [B

    const-string v8, "content"

    .line 21
    invoke-static {v4, v8}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "$this$toRequestBody"

    .line 22
    invoke-static {v4, v8}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long v13, v7

    move-wide v9, v13

    move-wide v11, v13

    .line 23
    invoke-static/range {v9 .. v14}, Lu3/p0/c;->c(JJJ)V

    .line 24
    new-instance v8, Lu3/j0$a$a;

    invoke-direct {v8, v4, v3, v7, v7}, Lu3/j0$a$a;-><init>([BLu3/c0;II)V

    move-object v4, v8

    .line 25
    :cond_6
    :goto_3
    iget-object v3, v5, Lx3/y;->g:Lu3/c0;

    if-eqz v3, :cond_8

    if-eqz v4, :cond_7

    .line 26
    new-instance v7, Lx3/y$a;

    invoke-direct {v7, v4, v3}, Lx3/y$a;-><init>(Lu3/j0;Lu3/c0;)V

    move-object v4, v7

    goto :goto_4

    .line 27
    :cond_7
    iget-object v7, v5, Lx3/y;->f:Lu3/z$a;

    .line 28
    iget-object v3, v3, Lu3/c0;->a:Ljava/lang/String;

    const-string v8, "Content-Type"

    .line 29
    invoke-virtual {v7, v8, v3}, Lu3/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lu3/z$a;

    .line 30
    :cond_8
    :goto_4
    iget-object v3, v5, Lx3/y;->e:Lu3/g0$a;

    .line 31
    invoke-virtual {v3, v2}, Lu3/g0$a;->j(Lu3/a0;)Lu3/g0$a;

    iget-object v2, v5, Lx3/y;->f:Lu3/z$a;

    .line 32
    invoke-virtual {v2}, Lu3/z$a;->d()Lu3/z;

    move-result-object v2

    invoke-virtual {v3, v2}, Lu3/g0$a;->d(Lu3/z;)Lu3/g0$a;

    iget-object v2, v5, Lx3/y;->a:Ljava/lang/String;

    .line 33
    invoke-virtual {v3, v2, v4}, Lu3/g0$a;->e(Ljava/lang/String;Lu3/j0;)Lu3/g0$a;

    .line 34
    const-class v2, Lx3/n;

    new-instance v4, Lx3/n;

    iget-object v1, v1, Lx3/z;->a:Ljava/lang/reflect/Method;

    invoke-direct {v4, v1, v6}, Lx3/n;-><init>(Ljava/lang/reflect/Method;Ljava/util/List;)V

    .line 35
    invoke-virtual {v3, v2, v4}, Lu3/g0$a;->h(Ljava/lang/Class;Ljava/lang/Object;)Lu3/g0$a;

    .line 36
    invoke-virtual {v3}, Lu3/g0$a;->b()Lu3/g0;

    move-result-object v1

    .line 37
    invoke-interface {v0, v1}, Lu3/f$a;->a(Lu3/g0;)Lu3/f;

    move-result-object v0

    const-string v1, "Call.Factory returned null."

    .line 38
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 39
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Malformed URL. Base: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v5, Lx3/y;->b:Lu3/a0;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Relative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lx3/y;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument count ("

    const-string v2, ") doesn\'t match expected count ("

    invoke-static {v1, v4, v2}, Le/d/c/a/a;->E(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v3

    const-string v3, ")"

    invoke-static {v1, v2, v3}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lu3/k0;)Lx3/a0;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu3/k0;",
            ")",
            "Lx3/a0<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    iget-object v1, v0, Lu3/k0;->h:Lu3/l0;

    const-string v2, "response"

    .line 2
    invoke-static {v0, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v4, v0, Lu3/k0;->b:Lu3/g0;

    .line 4
    iget-object v5, v0, Lu3/k0;->c:Lu3/f0;

    .line 5
    iget v7, v0, Lu3/k0;->e:I

    .line 6
    iget-object v6, v0, Lu3/k0;->d:Ljava/lang/String;

    .line 7
    iget-object v8, v0, Lu3/k0;->f:Lu3/y;

    .line 8
    iget-object v2, v0, Lu3/k0;->g:Lu3/z;

    .line 9
    invoke-virtual {v2}, Lu3/z;->c()Lu3/z$a;

    move-result-object v2

    .line 10
    iget-object v11, v0, Lu3/k0;->i:Lu3/k0;

    .line 11
    iget-object v12, v0, Lu3/k0;->j:Lu3/k0;

    .line 12
    iget-object v13, v0, Lu3/k0;->k:Lu3/k0;

    .line 13
    iget-wide v14, v0, Lu3/k0;->l:J

    .line 14
    iget-wide v9, v0, Lu3/k0;->m:J

    .line 15
    iget-object v0, v0, Lu3/k0;->n:Lu3/p0/g/c;

    .line 16
    new-instance v3, Lx3/s$c;

    move-wide/from16 v16, v9

    .line 17
    invoke-virtual {v1}, Lu3/l0;->l()Lu3/c0;

    move-result-object v9

    move-wide/from16 v19, v14

    invoke-virtual {v1}, Lu3/l0;->k()J

    move-result-wide v14

    invoke-direct {v3, v9, v14, v15}, Lx3/s$c;-><init>(Lu3/c0;J)V

    if-ltz v7, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    if-eqz v9, :cond_9

    if-eqz v4, :cond_8

    if-eqz v5, :cond_7

    if-eqz v6, :cond_6

    .line 18
    invoke-virtual {v2}, Lu3/z$a;->d()Lu3/z;

    move-result-object v9

    .line 19
    new-instance v2, Lu3/k0;

    move-object v10, v3

    move-object v3, v2

    move-wide/from16 v14, v19

    move-object/from16 v18, v0

    invoke-direct/range {v3 .. v18}, Lu3/k0;-><init>(Lu3/g0;Lu3/f0;Ljava/lang/String;ILu3/y;Lu3/z;Lu3/l0;Lu3/k0;Lu3/k0;Lu3/k0;JJLu3/p0/g/c;)V

    .line 20
    iget v0, v2, Lu3/k0;->e:I

    const/16 v3, 0xc8

    if-lt v0, v3, :cond_5

    const/16 v3, 0x12c

    if-lt v0, v3, :cond_1

    goto :goto_2

    :cond_1
    const/16 v3, 0xcc

    if-eq v0, v3, :cond_4

    const/16 v3, 0xcd

    if-ne v0, v3, :cond_2

    goto :goto_1

    .line 21
    :cond_2
    new-instance v3, Lx3/s$b;

    invoke-direct {v3, v1}, Lx3/s$b;-><init>(Lu3/l0;)V

    move-object/from16 v4, p0

    .line 22
    :try_start_0
    iget-object v0, v4, Lx3/s;->d:Lx3/j;

    invoke-interface {v0, v3}, Lx3/j;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 23
    invoke-static {v0, v2}, Lx3/a0;->d(Ljava/lang/Object;Lu3/k0;)Lx3/a0;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 24
    iget-object v1, v3, Lx3/s$b;->e:Ljava/io/IOException;

    if-nez v1, :cond_3

    .line 25
    throw v0

    .line 26
    :cond_3
    throw v1

    :cond_4
    :goto_1
    move-object/from16 v4, p0

    .line 27
    invoke-virtual {v1}, Lu3/l0;->close()V

    const/4 v0, 0x0

    .line 28
    invoke-static {v0, v2}, Lx3/a0;->d(Ljava/lang/Object;Lu3/k0;)Lx3/a0;

    move-result-object v0

    return-object v0

    :cond_5
    :goto_2
    move-object/from16 v4, p0

    .line 29
    :try_start_1
    invoke-static {v1}, Lx3/f0;->a(Lu3/l0;)Lu3/l0;

    move-result-object v0

    .line 30
    invoke-static {v0, v2}, Lx3/a0;->a(Lu3/l0;Lu3/k0;)Lx3/a0;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    invoke-virtual {v1}, Lu3/l0;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lu3/l0;->close()V

    throw v0

    :cond_6
    move-object/from16 v4, p0

    .line 32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object/from16 v4, p0

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object/from16 v4, p0

    .line 34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move-object/from16 v4, p0

    const-string v0, "code < 0: "

    .line 35
    invoke-static {v0, v7}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lx3/s;->e:Z

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lx3/s;->f:Lu3/f;

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lu3/f;->cancel()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    new-instance v0, Lx3/s;

    iget-object v1, p0, Lx3/s;->a:Lx3/z;

    iget-object v2, p0, Lx3/s;->b:[Ljava/lang/Object;

    iget-object v3, p0, Lx3/s;->c:Lu3/f$a;

    iget-object v4, p0, Lx3/s;->d:Lx3/j;

    invoke-direct {v0, v1, v2, v3, v4}, Lx3/s;-><init>(Lx3/z;[Ljava/lang/Object;Lu3/f$a;Lx3/j;)V

    return-object v0
.end method

.method public clone()Lx3/b;
    .locals 5

    .line 2
    new-instance v0, Lx3/s;

    iget-object v1, p0, Lx3/s;->a:Lx3/z;

    iget-object v2, p0, Lx3/s;->b:[Ljava/lang/Object;

    iget-object v3, p0, Lx3/s;->c:Lu3/f$a;

    iget-object v4, p0, Lx3/s;->d:Lx3/j;

    invoke-direct {v0, v1, v2, v3, v4}, Lx3/s;-><init>(Lx3/z;[Ljava/lang/Object;Lu3/f$a;Lx3/j;)V

    return-object v0
.end method

.method public enqueue(Lx3/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/d<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "callback == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lx3/s;->h:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lx3/s;->h:Z

    .line 5
    iget-object v0, p0, Lx3/s;->f:Lu3/f;

    .line 6
    iget-object v1, p0, Lx3/s;->g:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 7
    :try_start_1
    invoke-virtual {p0}, Lx3/s;->a()Lu3/f;

    move-result-object v2

    iput-object v2, p0, Lx3/s;->f:Lu3/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 8
    :try_start_2
    invoke-static {v1}, Lx3/f0;->o(Ljava/lang/Throwable;)V

    .line 9
    iput-object v1, p0, Lx3/s;->g:Ljava/lang/Throwable;

    .line 10
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    .line 11
    invoke-interface {p1, p0, v1}, Lx3/d;->onFailure(Lx3/b;Ljava/lang/Throwable;)V

    return-void

    .line 12
    :cond_1
    iget-boolean v1, p0, Lx3/s;->e:Z

    if-eqz v1, :cond_2

    .line 13
    invoke-interface {v0}, Lu3/f;->cancel()V

    .line 14
    :cond_2
    new-instance v1, Lx3/s$a;

    invoke-direct {v1, p0, p1}, Lx3/s$a;-><init>(Lx3/s;Lx3/d;)V

    invoke-interface {v0, v1}, Lu3/f;->M1(Lu3/g;)V

    return-void

    .line 15
    :cond_3
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already executed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 16
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public execute()Lx3/a0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx3/a0<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lx3/s;->h:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lx3/s;->h:Z

    .line 4
    iget-object v0, p0, Lx3/s;->g:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 5
    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_1

    .line 6
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 7
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 8
    :cond_0
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 9
    :cond_1
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 10
    :cond_2
    iget-object v0, p0, Lx3/s;->f:Lu3/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    .line 11
    :try_start_1
    invoke-virtual {p0}, Lx3/s;->a()Lu3/f;

    move-result-object v0

    iput-object v0, p0, Lx3/s;->f:Lu3/f;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 12
    :goto_0
    :try_start_2
    invoke-static {v0}, Lx3/f0;->o(Ljava/lang/Throwable;)V

    .line 13
    iput-object v0, p0, Lx3/s;->g:Ljava/lang/Throwable;

    .line 14
    throw v0

    .line 15
    :cond_3
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    iget-boolean v1, p0, Lx3/s;->e:Z

    if-eqz v1, :cond_4

    .line 17
    invoke-interface {v0}, Lu3/f;->cancel()V

    .line 18
    :cond_4
    invoke-interface {v0}, Lu3/f;->execute()Lu3/k0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lx3/s;->b(Lu3/k0;)Lx3/a0;

    move-result-object v0

    return-object v0

    .line 19
    :cond_5
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 20
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public isCanceled()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lx3/s;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lx3/s;->f:Lu3/f;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lu3/f;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized request()Lu3/g0;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lx3/s;->f:Lu3/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lu3/f;->request()Lu3/g0;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lx3/s;->g:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 4
    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_2

    .line 5
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 7
    :cond_1
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to create request."

    iget-object v2, p0, Lx3/s;->g:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lx3/s;->a()Lu3/f;

    move-result-object v0

    iput-object v0, p0, Lx3/s;->f:Lu3/f;

    invoke-interface {v0}, Lu3/f;->request()Lu3/g0;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    .line 10
    :try_start_3
    iput-object v0, p0, Lx3/s;->g:Ljava/lang/Throwable;

    .line 11
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to create request."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 12
    :goto_0
    invoke-static {v0}, Lx3/f0;->o(Ljava/lang/Throwable;)V

    .line 13
    iput-object v0, p0, Lx3/s;->g:Ljava/lang/Throwable;

    .line 14
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
