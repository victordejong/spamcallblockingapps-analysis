.class public final Le/a/s/o/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/s/o/a;


# instance fields
.field public final a:Le/m/e/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/m/e/k;

    invoke-direct {v0}, Le/m/e/k;-><init>()V

    iput-object v0, p0, Le/a/s/o/c;->a:Le/m/e/k;

    return-void
.end method


# virtual methods
.method public a(Lu3/b0$a;)Lu3/k0;
    .locals 21

    move-object/from16 v0, p1

    const-string v1, "chain"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface/range {p1 .. p1}, Lu3/b0$a;->request()Lu3/g0;

    move-result-object v1

    invoke-interface {v0, v1}, Lu3/b0$a;->a(Lu3/g0;)Lu3/k0;

    move-result-object v0

    .line 2
    iget v1, v0, Lu3/k0;->e:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v1, v0, Lu3/k0;->h:Lu3/l0;

    if-eqz v1, :cond_6

    .line 4
    invoke-virtual {v1}, Lu3/l0;->q()Lv3/h;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lv3/h;->getBuffer()Lv3/f;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 5
    invoke-virtual {v1}, Lv3/f;->b()Lv3/f;

    move-result-object v1

    .line 6
    new-instance v2, Lv3/f$a;

    invoke-direct {v2, v1}, Lv3/f$a;-><init>(Lv3/f;)V

    const/4 v1, 0x0

    move-object/from16 v3, p0

    .line 7
    :try_start_0
    iget-object v4, v3, Le/a/s/o/c;->a:Le/m/e/k;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const-class v6, Lcom/truecaller/callhero_assistant/network/ErrorResponseDto;

    invoke-virtual {v4, v5, v6}, Le/m/e/k;->d(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/callhero_assistant/network/ErrorResponseDto;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {v2, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 9
    invoke-virtual {v4}, Lcom/truecaller/callhero_assistant/network/ErrorResponseDto;->getSuccess()Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "response"

    .line 10
    invoke-static {v0, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v5, v0, Lu3/k0;->b:Lu3/g0;

    .line 12
    iget-object v6, v0, Lu3/k0;->c:Lu3/f0;

    .line 13
    iget-object v7, v0, Lu3/k0;->d:Ljava/lang/String;

    .line 14
    iget-object v9, v0, Lu3/k0;->f:Lu3/y;

    .line 15
    iget-object v1, v0, Lu3/k0;->g:Lu3/z;

    .line 16
    invoke-virtual {v1}, Lu3/z;->c()Lu3/z$a;

    move-result-object v1

    .line 17
    iget-object v11, v0, Lu3/k0;->h:Lu3/l0;

    .line 18
    iget-object v12, v0, Lu3/k0;->i:Lu3/k0;

    .line 19
    iget-object v13, v0, Lu3/k0;->j:Lu3/k0;

    .line 20
    iget-object v14, v0, Lu3/k0;->k:Lu3/k0;

    move-object v2, v9

    .line 21
    iget-wide v8, v0, Lu3/k0;->l:J

    move-wide v15, v8

    .line 22
    iget-wide v8, v0, Lu3/k0;->m:J

    .line 23
    iget-object v0, v0, Lu3/k0;->n:Lu3/p0/g/c;

    const/16 v10, 0x1f4

    const/4 v4, 0x1

    if-eqz v4, :cond_4

    if-eqz v5, :cond_3

    if-eqz v6, :cond_2

    if-eqz v7, :cond_1

    .line 24
    invoke-virtual {v1}, Lu3/z$a;->d()Lu3/z;

    move-result-object v1

    .line 25
    new-instance v20, Lu3/k0;

    move-object/from16 v4, v20

    move-wide/from16 v17, v8

    move v8, v10

    move-object v9, v2

    move-object v10, v1

    move-object/from16 v19, v0

    invoke-direct/range {v4 .. v19}, Lu3/k0;-><init>(Lu3/g0;Lu3/f0;Ljava/lang/String;ILu3/y;Lu3/z;Lu3/l0;Lu3/k0;Lu3/k0;Lu3/k0;JJLu3/p0/g/c;)V

    return-object v20

    .line 26
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 30
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    invoke-static {v2, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4

    :cond_6
    move-object/from16 v3, p0

    return-object v0
.end method
