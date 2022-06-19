.class public final Lu3/p0/h/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/b0;


# instance fields
.field public final a:Lu3/e0;


# direct methods
.method public constructor <init>(Lu3/e0;)V
    .locals 1

    const-string v0, "client"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu3/p0/h/i;->a:Lu3/e0;

    return-void
.end method


# virtual methods
.method public a(Lu3/b0$a;)Lu3/k0;
    .locals 48
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "chain"

    invoke-static {v0, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    move-object v2, v0

    check-cast v2, Lu3/p0/h/g;

    .line 2
    iget-object v0, v2, Lu3/p0/h/g;->f:Lu3/g0;

    .line 3
    iget-object v3, v2, Lu3/p0/h/g;->b:Lu3/p0/g/e;

    .line 4
    sget-object v4, Ls1/u/s;->a:Ls1/u/s;

    const/4 v7, 0x1

    move-object v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v0

    move v0, v7

    .line 5
    :goto_0
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "request"

    invoke-static {v4, v11}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v11, v3, Lu3/p0/g/e;->i:Lu3/p0/g/c;

    if-nez v11, :cond_0

    move v11, v7

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    :goto_1
    if-eqz v11, :cond_1c

    .line 7
    monitor-enter v3

    .line 8
    :try_start_0
    iget-boolean v11, v3, Lu3/p0/g/e;->k:Z

    xor-int/2addr v11, v7

    if-eqz v11, :cond_1b

    .line 9
    iget-boolean v11, v3, Lu3/p0/g/e;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    xor-int/2addr v11, v7

    if-eqz v11, :cond_1a

    .line 10
    monitor-exit v3

    if-eqz v0, :cond_3

    .line 11
    new-instance v0, Lu3/p0/g/d;

    .line 12
    iget-object v11, v3, Lu3/p0/g/e;->a:Lu3/p0/g/j;

    .line 13
    iget-object v12, v4, Lu3/g0;->b:Lu3/a0;

    .line 14
    iget-boolean v13, v12, Lu3/a0;->a:Z

    if-eqz v13, :cond_2

    .line 15
    iget-object v13, v3, Lu3/p0/g/e;->p:Lu3/e0;

    .line 16
    iget-object v14, v13, Lu3/e0;->q:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v14, :cond_1

    .line 17
    iget-object v15, v13, Lu3/e0;->u:Ljavax/net/ssl/HostnameVerifier;

    .line 18
    iget-object v13, v13, Lu3/e0;->v:Lu3/h;

    move-object/from16 v19, v13

    move-object/from16 v17, v14

    move-object/from16 v18, v15

    goto :goto_2

    .line 19
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "CLEARTEXT-only client"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 20
    :goto_2
    new-instance v15, Lu3/a;

    .line 21
    iget-object v13, v12, Lu3/a0;->e:Ljava/lang/String;

    .line 22
    iget v14, v12, Lu3/a0;->f:I

    .line 23
    iget-object v12, v3, Lu3/p0/g/e;->p:Lu3/e0;

    .line 24
    iget-object v5, v12, Lu3/e0;->l:Lu3/t;

    .line 25
    iget-object v6, v12, Lu3/e0;->p:Ljavax/net/SocketFactory;

    .line 26
    iget-object v7, v12, Lu3/e0;->o:Lu3/c;

    move-object/from16 v25, v8

    .line 27
    iget-object v8, v12, Lu3/e0;->m:Ljava/net/Proxy;

    move/from16 v26, v10

    .line 28
    iget-object v10, v12, Lu3/e0;->t:Ljava/util/List;

    .line 29
    iget-object v1, v12, Lu3/e0;->s:Ljava/util/List;

    .line 30
    iget-object v12, v12, Lu3/e0;->n:Ljava/net/ProxySelector;

    move-object/from16 v24, v12

    move-object v12, v15

    move-object/from16 v27, v9

    move-object v9, v15

    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v10

    move-object/from16 v23, v1

    .line 31
    invoke-direct/range {v12 .. v24}, Lu3/a;-><init>(Ljava/lang/String;ILu3/t;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lu3/h;Lu3/c;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    .line 32
    iget-object v1, v3, Lu3/p0/g/e;->b:Lu3/u;

    .line 33
    invoke-direct {v0, v11, v9, v3, v1}, Lu3/p0/g/d;-><init>(Lu3/p0/g/j;Lu3/a;Lu3/p0/g/e;Lu3/u;)V

    iput-object v0, v3, Lu3/p0/g/e;->f:Lu3/p0/g/d;

    goto :goto_3

    :cond_3
    move-object/from16 v25, v8

    move-object/from16 v27, v9

    move/from16 v26, v10

    .line 34
    :goto_3
    :try_start_1
    iget-boolean v0, v3, Lu3/p0/g/e;->m:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-nez v0, :cond_19

    .line 35
    :try_start_2
    invoke-virtual {v2, v4}, Lu3/p0/h/g;->a(Lu3/g0;)Lu3/k0;

    move-result-object v0
    :try_end_2
    .catch Lu3/p0/g/l; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v27, :cond_10

    :try_start_3
    const-string v1, "response"

    .line 36
    invoke-static {v0, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v5, v0, Lu3/k0;->b:Lu3/g0;

    .line 38
    iget-object v6, v0, Lu3/k0;->c:Lu3/f0;

    .line 39
    iget v8, v0, Lu3/k0;->e:I

    .line 40
    iget-object v7, v0, Lu3/k0;->d:Ljava/lang/String;

    .line 41
    iget-object v9, v0, Lu3/k0;->f:Lu3/y;

    .line 42
    iget-object v1, v0, Lu3/k0;->g:Lu3/z;

    .line 43
    invoke-virtual {v1}, Lu3/z;->c()Lu3/z$a;

    move-result-object v1

    .line 44
    iget-object v11, v0, Lu3/k0;->h:Lu3/l0;

    .line 45
    iget-object v12, v0, Lu3/k0;->i:Lu3/k0;

    .line 46
    iget-object v13, v0, Lu3/k0;->j:Lu3/k0;

    .line 47
    iget-wide v14, v0, Lu3/k0;->l:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    .line 48
    :try_start_4
    iget-wide v2, v0, Lu3/k0;->m:J

    .line 49
    iget-object v0, v0, Lu3/k0;->n:Lu3/p0/g/c;

    const-string v4, "response"

    move-object/from16 v10, v27

    .line 50
    invoke-static {v10, v4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v4, v10, Lu3/k0;->b:Lu3/g0;

    move-wide/from16 v16, v14

    .line 52
    iget-object v14, v10, Lu3/k0;->c:Lu3/f0;

    .line 53
    iget v15, v10, Lu3/k0;->e:I

    move-object/from16 v19, v0

    .line 54
    iget-object v0, v10, Lu3/k0;->d:Ljava/lang/String;

    move-wide/from16 v22, v2

    .line 55
    iget-object v2, v10, Lu3/k0;->f:Lu3/y;

    .line 56
    iget-object v3, v10, Lu3/k0;->g:Lu3/z;

    .line 57
    invoke-virtual {v3}, Lu3/z;->c()Lu3/z$a;

    move-result-object v3

    move-object/from16 v18, v13

    .line 58
    iget-object v13, v10, Lu3/k0;->i:Lu3/k0;

    move-object/from16 v24, v12

    .line 59
    iget-object v12, v10, Lu3/k0;->j:Lu3/k0;

    move-object/from16 v43, v11

    .line 60
    iget-object v11, v10, Lu3/k0;->k:Lu3/k0;

    move-object/from16 v44, v6

    move-object/from16 v45, v7

    .line 61
    iget-wide v6, v10, Lu3/k0;->l:J

    move/from16 v46, v8

    move-object/from16 v47, v9

    .line 62
    iget-wide v8, v10, Lu3/k0;->m:J

    .line 63
    iget-object v10, v10, Lu3/k0;->n:Lu3/p0/g/c;

    const/16 v34, 0x0

    if-ltz v15, :cond_4

    const/16 v27, 0x1

    goto :goto_4

    :cond_4
    const/16 v27, 0x0

    :goto_4
    if-eqz v27, :cond_f

    if-eqz v4, :cond_e

    if-eqz v14, :cond_d

    if-eqz v0, :cond_c

    .line 64
    invoke-virtual {v3}, Lu3/z$a;->d()Lu3/z;

    move-result-object v33

    .line 65
    new-instance v3, Lu3/k0;

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move-object/from16 v29, v14

    move-object/from16 v30, v0

    move/from16 v31, v15

    move-object/from16 v32, v2

    move-object/from16 v35, v13

    move-object/from16 v36, v12

    move-object/from16 v37, v11

    move-wide/from16 v38, v6

    move-wide/from16 v40, v8

    move-object/from16 v42, v10

    invoke-direct/range {v27 .. v42}, Lu3/k0;-><init>(Lu3/g0;Lu3/f0;Ljava/lang/String;ILu3/y;Lu3/z;Lu3/l0;Lu3/k0;Lu3/k0;Lu3/k0;JJLu3/p0/g/c;)V

    .line 66
    iget-object v0, v3, Lu3/k0;->h:Lu3/l0;

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_b

    if-ltz v46, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_a

    if-eqz v5, :cond_9

    if-eqz v44, :cond_8

    if-eqz v45, :cond_7

    .line 67
    invoke-virtual {v1}, Lu3/z$a;->d()Lu3/z;

    move-result-object v10

    .line 68
    new-instance v0, Lu3/k0;

    move-object v4, v0

    move-object/from16 v6, v44

    move-object/from16 v7, v45

    move/from16 v8, v46

    move-object/from16 v9, v47

    move-object/from16 v11, v43

    move-object/from16 v12, v24

    move-object/from16 v13, v18

    move-wide/from16 v1, v16

    move-object v14, v3

    move-wide v15, v1

    move-wide/from16 v17, v22

    invoke-direct/range {v4 .. v19}, Lu3/k0;-><init>(Lu3/g0;Lu3/f0;Ljava/lang/String;ILu3/y;Lu3/z;Lu3/l0;Lu3/k0;Lu3/k0;Lu3/k0;JJLu3/p0/g/c;)V

    goto/16 :goto_8

    .line 69
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "priorResponse.body != null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v21, v3

    :goto_7
    move-object/from16 v2, p0

    move-object/from16 v1, v21

    goto/16 :goto_e

    :cond_10
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    :goto_8
    move-object v9, v0

    move-object/from16 v1, v21

    .line 78
    :try_start_5
    iget-object v0, v1, Lu3/p0/g/e;->i:Lu3/p0/g/c;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v2, p0

    .line 79
    :try_start_6
    invoke-virtual {v2, v9, v0}, Lu3/p0/h/i;->b(Lu3/k0;Lu3/p0/g/c;)Lu3/g0;

    move-result-object v4

    if-nez v4, :cond_13

    if-eqz v0, :cond_12

    .line 80
    iget-boolean v0, v0, Lu3/p0/g/c;->a:Z

    if-eqz v0, :cond_12

    .line 81
    iget-boolean v0, v1, Lu3/p0/g/e;->h:Z

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    if-eqz v0, :cond_11

    .line 82
    iput-boolean v3, v1, Lu3/p0/g/e;->h:Z

    .line 83
    iget-object v0, v1, Lu3/p0/g/e;->c:Lu3/p0/g/e$c;

    invoke-virtual {v0}, Lv3/b;->i()Z

    goto :goto_9

    .line 84
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Check failed."

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_12
    :goto_9
    const/4 v3, 0x0

    .line 85
    invoke-virtual {v1, v3}, Lu3/p0/g/e;->e(Z)V

    return-object v9

    .line 86
    :cond_13
    :try_start_7
    iget-object v0, v9, Lu3/k0;->h:Lu3/l0;

    if-eqz v0, :cond_14

    .line 87
    sget-object v3, Lu3/p0/c;->a:[B

    const-string v3, "$this$closeQuietly"

    invoke-static {v0, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 88
    :try_start_8
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_a

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 89
    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catch_1
    :cond_14
    :goto_a
    add-int/lit8 v10, v26, 0x1

    const/16 v0, 0x14

    if-gt v10, v0, :cond_15

    const/4 v3, 0x1

    .line 90
    invoke-virtual {v1, v3}, Lu3/p0/g/e;->e(Z)V

    move-object v3, v1

    move-object v1, v2

    move-object/from16 v2, v20

    move-object/from16 v8, v25

    const/4 v0, 0x1

    goto/16 :goto_d

    .line 91
    :cond_15
    :try_start_a
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many follow-up requests: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    move-object/from16 v2, p0

    goto/16 :goto_e

    :catch_2
    move-exception v0

    move-object/from16 v20, v2

    move-object v1, v3

    move-object/from16 v10, v27

    move-object/from16 v2, p0

    move-object v3, v0

    .line 92
    nop

    instance-of v0, v3, Lu3/p0/j/a;

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_b

    :cond_16
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {v2, v3, v1, v4, v0}, Lu3/p0/h/i;->c(Ljava/io/IOException;Lu3/p0/g/e;Lu3/g0;Z)Z

    move-result v0

    if-eqz v0, :cond_17

    move-object/from16 v5, v25

    .line 93
    invoke-static {v5, v3}, Ls1/u/i;->m0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    const/4 v3, 0x1

    .line 94
    invoke-virtual {v1, v3}, Lu3/p0/g/e;->e(Z)V

    move-object v8, v0

    const/4 v6, 0x0

    goto :goto_c

    :cond_17
    move-object/from16 v5, v25

    .line 95
    :try_start_b
    invoke-static {v3, v5}, Lu3/p0/c;->B(Ljava/lang/Exception;Ljava/util/List;)Ljava/lang/Throwable;

    throw v3

    :catch_3
    move-exception v0

    move-object/from16 v20, v2

    move-object v1, v3

    move-object/from16 v5, v25

    move-object/from16 v10, v27

    move-object/from16 v2, p0

    move-object v3, v0

    .line 96
    iget-object v0, v3, Lu3/p0/g/l;->a:Ljava/io/IOException;

    const/4 v6, 0x0

    .line 97
    invoke-virtual {v2, v0, v1, v4, v6}, Lu3/p0/h/i;->c(Ljava/io/IOException;Lu3/p0/g/e;Lu3/g0;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 98
    iget-object v0, v3, Lu3/p0/g/l;->b:Ljava/io/IOException;

    .line 99
    invoke-static {v5, v0}, Ls1/u/i;->m0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    const/4 v3, 0x1

    .line 100
    invoke-virtual {v1, v3}, Lu3/p0/g/e;->e(Z)V

    move-object v8, v0

    :goto_c
    move-object v3, v1

    move-object v1, v2

    move v0, v6

    move-object v9, v10

    move-object/from16 v2, v20

    move/from16 v10, v26

    :goto_d
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 101
    :cond_18
    :try_start_c
    iget-object v0, v3, Lu3/p0/g/l;->b:Ljava/io/IOException;

    .line 102
    invoke-static {v0, v5}, Lu3/p0/c;->B(Ljava/lang/Exception;Ljava/util/List;)Ljava/lang/Throwable;

    throw v0

    :cond_19
    move-object/from16 v2, p0

    move-object v1, v3

    .line 103
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_e

    :catchall_4
    move-exception v0

    move-object/from16 v2, p0

    move-object v1, v3

    :goto_e
    const/4 v3, 0x1

    .line 104
    invoke-virtual {v1, v3}, Lu3/p0/g/e;->e(Z)V

    throw v0

    :cond_1a
    move-object v2, v1

    move-object v1, v3

    :try_start_d
    const-string v0, "Check failed."

    .line 105
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1b
    move-object v2, v1

    move-object v1, v3

    const-string v0, "cannot make a new request because the previous response is still open: please call response.close()"

    .line 106
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :catchall_5
    move-exception v0

    goto :goto_f

    :catchall_6
    move-exception v0

    move-object v2, v1

    move-object v1, v3

    .line 107
    :goto_f
    monitor-exit v1

    throw v0

    :cond_1c
    move-object v2, v1

    const-string v0, "Check failed."

    .line 108
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final b(Lu3/k0;Lu3/p0/g/c;)Lu3/g0;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    iget-object v1, p2, Lu3/p0/g/c;->b:Lu3/p0/g/i;

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v1, Lu3/p0/g/i;->q:Lu3/n0;

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 3
    :goto_0
    iget v2, p1, Lu3/k0;->e:I

    .line 4
    iget-object v3, p1, Lu3/k0;->b:Lu3/g0;

    .line 5
    iget-object v3, v3, Lu3/g0;->c:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0x134

    const/16 v6, 0x133

    const/4 v7, 0x1

    if-eq v2, v6, :cond_f

    if-eq v2, v5, :cond_f

    const/16 v8, 0x191

    if-eq v2, v8, :cond_e

    const/16 v8, 0x1a5

    if-eq v2, v8, :cond_b

    const/16 p2, 0x1f7

    if-eq v2, p2, :cond_8

    const/16 p2, 0x197

    if-eq v2, p2, :cond_5

    const/16 p2, 0x198

    if-eq v2, p2, :cond_1

    packed-switch v2, :pswitch_data_0

    return-object v0

    .line 6
    :cond_1
    iget-object v1, p0, Lu3/p0/h/i;->a:Lu3/e0;

    .line 7
    iget-boolean v1, v1, Lu3/e0;->f:Z

    if-nez v1, :cond_2

    return-object v0

    .line 8
    :cond_2
    iget-object v1, p1, Lu3/k0;->k:Lu3/k0;

    if-eqz v1, :cond_3

    .line 9
    iget v1, v1, Lu3/k0;->e:I

    if-ne v1, p2, :cond_3

    return-object v0

    .line 10
    :cond_3
    invoke-virtual {p0, p1, v4}, Lu3/p0/h/i;->d(Lu3/k0;I)I

    move-result p2

    if-lez p2, :cond_4

    return-object v0

    .line 11
    :cond_4
    iget-object p1, p1, Lu3/k0;->b:Lu3/g0;

    return-object p1

    :cond_5
    if-eqz v1, :cond_7

    .line 12
    iget-object p2, v1, Lu3/n0;->b:Ljava/net/Proxy;

    .line 13
    invoke-virtual {p2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p2

    sget-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p2, v0, :cond_6

    .line 14
    iget-object p2, p0, Lu3/p0/h/i;->a:Lu3/e0;

    .line 15
    iget-object p2, p2, Lu3/e0;->o:Lu3/c;

    .line 16
    invoke-interface {p2, v1, p1}, Lu3/c;->a(Lu3/n0;Lu3/k0;)Lu3/g0;

    move-result-object p1

    return-object p1

    .line 17
    :cond_6
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_7
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v0

    .line 19
    :cond_8
    iget-object v1, p1, Lu3/k0;->k:Lu3/k0;

    if-eqz v1, :cond_9

    .line 20
    iget v1, v1, Lu3/k0;->e:I

    if-ne v1, p2, :cond_9

    return-object v0

    :cond_9
    const p2, 0x7fffffff

    .line 21
    invoke-virtual {p0, p1, p2}, Lu3/p0/h/i;->d(Lu3/k0;I)I

    move-result p2

    if-nez p2, :cond_a

    .line 22
    iget-object p1, p1, Lu3/k0;->b:Lu3/g0;

    return-object p1

    :cond_a
    return-object v0

    :cond_b
    if-eqz p2, :cond_d

    .line 23
    iget-object v1, p2, Lu3/p0/g/c;->e:Lu3/p0/g/d;

    .line 24
    iget-object v1, v1, Lu3/p0/g/d;->h:Lu3/a;

    .line 25
    iget-object v1, v1, Lu3/a;->a:Lu3/a0;

    .line 26
    iget-object v1, v1, Lu3/a0;->e:Ljava/lang/String;

    .line 27
    iget-object v2, p2, Lu3/p0/g/c;->b:Lu3/p0/g/i;

    .line 28
    iget-object v2, v2, Lu3/p0/g/i;->q:Lu3/n0;

    .line 29
    iget-object v2, v2, Lu3/n0;->a:Lu3/a;

    .line 30
    iget-object v2, v2, Lu3/a;->a:Lu3/a0;

    .line 31
    iget-object v2, v2, Lu3/a0;->e:Ljava/lang/String;

    .line 32
    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v7

    if-nez v1, :cond_c

    goto :goto_1

    .line 33
    :cond_c
    iget-object p2, p2, Lu3/p0/g/c;->b:Lu3/p0/g/i;

    .line 34
    monitor-enter p2

    .line 35
    :try_start_0
    iput-boolean v7, p2, Lu3/p0/g/i;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p2

    .line 37
    iget-object p1, p1, Lu3/k0;->b:Lu3/g0;

    return-object p1

    :catchall_0
    move-exception p1

    .line 38
    monitor-exit p2

    throw p1

    :cond_d
    :goto_1
    return-object v0

    .line 39
    :cond_e
    iget-object p2, p0, Lu3/p0/h/i;->a:Lu3/e0;

    .line 40
    iget-object p2, p2, Lu3/e0;->g:Lu3/c;

    .line 41
    invoke-interface {p2, v1, p1}, Lu3/c;->a(Lu3/n0;Lu3/k0;)Lu3/g0;

    move-result-object p1

    return-object p1

    .line 42
    :cond_f
    :pswitch_0
    iget-object p2, p0, Lu3/p0/h/i;->a:Lu3/e0;

    .line 43
    iget-boolean p2, p2, Lu3/e0;->h:Z

    if-nez p2, :cond_10

    goto/16 :goto_4

    :cond_10
    const/4 p2, 0x2

    const-string v1, "Location"

    .line 44
    invoke-static {p1, v1, v0, p2}, Lu3/k0;->d(Lu3/k0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_19

    .line 45
    iget-object v1, p1, Lu3/k0;->b:Lu3/g0;

    .line 46
    iget-object v1, v1, Lu3/g0;->b:Lu3/a0;

    .line 47
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "link"

    invoke-static {p2, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1, p2}, Lu3/a0;->g(Ljava/lang/String;)Lu3/a0$a;

    move-result-object p2

    if-eqz p2, :cond_11

    invoke-virtual {p2}, Lu3/a0$a;->b()Lu3/a0;

    move-result-object p2

    goto :goto_2

    :cond_11
    move-object p2, v0

    :goto_2
    if-eqz p2, :cond_19

    .line 49
    iget-object v1, p2, Lu3/a0;->b:Ljava/lang/String;

    .line 50
    iget-object v2, p1, Lu3/k0;->b:Lu3/g0;

    .line 51
    iget-object v2, v2, Lu3/g0;->b:Lu3/a0;

    .line 52
    iget-object v2, v2, Lu3/a0;->b:Ljava/lang/String;

    .line 53
    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 54
    iget-object v1, p0, Lu3/p0/h/i;->a:Lu3/e0;

    .line 55
    iget-boolean v1, v1, Lu3/e0;->i:Z

    if-nez v1, :cond_12

    goto :goto_4

    .line 56
    :cond_12
    iget-object v1, p1, Lu3/k0;->b:Lu3/g0;

    .line 57
    new-instance v2, Lu3/g0$a;

    invoke-direct {v2, v1}, Lu3/g0$a;-><init>(Lu3/g0;)V

    .line 58
    invoke-static {v3}, Lu3/p0/h/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 59
    iget v1, p1, Lu3/k0;->e:I

    const-string v8, "method"

    .line 60
    invoke-static {v3, v8}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "PROPFIND"

    .line 61
    invoke-static {v3, v9}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    if-eq v1, v5, :cond_13

    if-ne v1, v6, :cond_14

    :cond_13
    move v4, v7

    .line 62
    :cond_14
    invoke-static {v3, v8}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-static {v3, v9}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v7, v8

    if-eqz v7, :cond_15

    if-eq v1, v5, :cond_15

    if-eq v1, v6, :cond_15

    const-string v1, "GET"

    .line 64
    invoke-virtual {v2, v1, v0}, Lu3/g0$a;->e(Ljava/lang/String;Lu3/j0;)Lu3/g0$a;

    goto :goto_3

    :cond_15
    if-eqz v4, :cond_16

    .line 65
    iget-object v0, p1, Lu3/k0;->b:Lu3/g0;

    .line 66
    iget-object v0, v0, Lu3/g0;->e:Lu3/j0;

    .line 67
    :cond_16
    invoke-virtual {v2, v3, v0}, Lu3/g0$a;->e(Ljava/lang/String;Lu3/j0;)Lu3/g0$a;

    :goto_3
    if-nez v4, :cond_17

    const-string v0, "Transfer-Encoding"

    .line 68
    invoke-virtual {v2, v0}, Lu3/g0$a;->g(Ljava/lang/String;)Lu3/g0$a;

    const-string v0, "Content-Length"

    .line 69
    invoke-virtual {v2, v0}, Lu3/g0$a;->g(Ljava/lang/String;)Lu3/g0$a;

    const-string v0, "Content-Type"

    .line 70
    invoke-virtual {v2, v0}, Lu3/g0$a;->g(Ljava/lang/String;)Lu3/g0$a;

    .line 71
    :cond_17
    iget-object p1, p1, Lu3/k0;->b:Lu3/g0;

    .line 72
    iget-object p1, p1, Lu3/g0;->b:Lu3/a0;

    .line 73
    invoke-static {p1, p2}, Lu3/p0/c;->a(Lu3/a0;Lu3/a0;)Z

    move-result p1

    if-nez p1, :cond_18

    const-string p1, "Authorization"

    .line 74
    invoke-virtual {v2, p1}, Lu3/g0$a;->g(Ljava/lang/String;)Lu3/g0$a;

    .line 75
    :cond_18
    invoke-virtual {v2, p2}, Lu3/g0$a;->j(Lu3/a0;)Lu3/g0$a;

    invoke-virtual {v2}, Lu3/g0$a;->b()Lu3/g0;

    move-result-object v0

    :cond_19
    :goto_4
    return-object v0

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/io/IOException;Lu3/p0/g/e;Lu3/g0;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lu3/p0/h/i;->a:Lu3/e0;

    .line 2
    iget-boolean v0, v0, Lu3/e0;->f:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p4, :cond_1

    .line 3
    iget-object p3, p3, Lu3/g0;->e:Lu3/j0;

    .line 4
    instance-of p3, p1, Ljava/io/FileNotFoundException;

    if-eqz p3, :cond_1

    return v1

    .line 5
    :cond_1
    instance-of p3, p1, Ljava/net/ProtocolException;

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    instance-of p3, p1, Ljava/io/InterruptedIOException;

    if-eqz p3, :cond_3

    .line 7
    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_5

    if-nez p4, :cond_5

    goto :goto_1

    .line 8
    :cond_3
    instance-of p3, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p3, :cond_4

    .line 9
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    instance-of p3, p3, Ljava/security/cert/CertificateException;

    if-eqz p3, :cond_4

    goto :goto_0

    .line 10
    :cond_4
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p1, :cond_6

    :cond_5
    :goto_0
    move p1, v1

    goto :goto_2

    :cond_6
    :goto_1
    move p1, v0

    :goto_2
    if-nez p1, :cond_7

    return v1

    .line 11
    :cond_7
    iget-object p1, p2, Lu3/p0/g/e;->f:Lu3/p0/g/d;

    const/4 p2, 0x0

    if-eqz p1, :cond_12

    .line 12
    iget p3, p1, Lu3/p0/g/d;->c:I

    if-nez p3, :cond_8

    iget p4, p1, Lu3/p0/g/d;->d:I

    if-nez p4, :cond_8

    iget p4, p1, Lu3/p0/g/d;->e:I

    if-nez p4, :cond_8

    move p1, v1

    goto :goto_5

    .line 13
    :cond_8
    iget-object p4, p1, Lu3/p0/g/d;->f:Lu3/n0;

    if-eqz p4, :cond_9

    goto :goto_4

    :cond_9
    if-gt p3, v0, :cond_d

    .line 14
    iget p3, p1, Lu3/p0/g/d;->d:I

    if-gt p3, v0, :cond_d

    iget p3, p1, Lu3/p0/g/d;->e:I

    if-lez p3, :cond_a

    goto :goto_3

    .line 15
    :cond_a
    iget-object p3, p1, Lu3/p0/g/d;->i:Lu3/p0/g/e;

    .line 16
    iget-object p3, p3, Lu3/p0/g/e;->g:Lu3/p0/g/i;

    if-eqz p3, :cond_d

    .line 17
    monitor-enter p3

    .line 18
    :try_start_0
    iget p4, p3, Lu3/p0/g/i;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p4, :cond_b

    .line 19
    monitor-exit p3

    goto :goto_3

    .line 20
    :cond_b
    :try_start_1
    iget-object p4, p3, Lu3/p0/g/i;->q:Lu3/n0;

    .line 21
    iget-object p4, p4, Lu3/n0;->a:Lu3/a;

    .line 22
    iget-object p4, p4, Lu3/a;->a:Lu3/a0;

    .line 23
    iget-object v2, p1, Lu3/p0/g/d;->h:Lu3/a;

    .line 24
    iget-object v2, v2, Lu3/a;->a:Lu3/a0;

    .line 25
    invoke-static {p4, v2}, Lu3/p0/c;->a(Lu3/a0;Lu3/a0;)Z

    move-result p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p4, :cond_c

    monitor-exit p3

    goto :goto_3

    .line 26
    :cond_c
    :try_start_2
    iget-object p2, p3, Lu3/p0/g/i;->q:Lu3/n0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    monitor-exit p3

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 28
    monitor-exit p3

    throw p1

    :cond_d
    :goto_3
    if-eqz p2, :cond_e

    .line 29
    iput-object p2, p1, Lu3/p0/g/d;->f:Lu3/n0;

    goto :goto_4

    .line 30
    :cond_e
    iget-object p2, p1, Lu3/p0/g/d;->a:Lu3/p0/g/m$a;

    if-eqz p2, :cond_f

    invoke-virtual {p2}, Lu3/p0/g/m$a;->a()Z

    move-result p2

    if-ne p2, v0, :cond_f

    goto :goto_4

    .line 31
    :cond_f
    iget-object p1, p1, Lu3/p0/g/d;->b:Lu3/p0/g/m;

    if-eqz p1, :cond_10

    .line 32
    invoke-virtual {p1}, Lu3/p0/g/m;->a()Z

    move-result p1

    goto :goto_5

    :cond_10
    :goto_4
    move p1, v0

    :goto_5
    if-nez p1, :cond_11

    return v1

    :cond_11
    return v0

    .line 33
    :cond_12
    invoke-static {}, Ls1/z/c/l;->k()V

    throw p2
.end method

.method public final d(Lu3/k0;I)I
    .locals 3

    const-string v0, "Retry-After"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1
    invoke-static {p1, v0, v1, v2}, Lu3/k0;->d(Lu3/k0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "\\d+"

    .line 2
    invoke-static {p2, p1}, Le/d/c/a/a;->Z0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "Integer.valueOf(header)"

    invoke-static {p1, p2}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const p1, 0x7fffffff

    return p1

    :cond_1
    return p2
.end method
