.class public final synthetic Le/j/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/j/k0$a;


# instance fields
.field public final synthetic a:Le/j/v$d;

.field public final synthetic b:Lcom/facebook/AccessToken;

.field public final synthetic c:Lcom/facebook/AccessToken$a;

.field public final synthetic d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic e:Ljava/util/Set;

.field public final synthetic f:Ljava/util/Set;

.field public final synthetic g:Ljava/util/Set;

.field public final synthetic h:Le/j/v;


# direct methods
.method public synthetic constructor <init>(Le/j/v$d;Lcom/facebook/AccessToken;Lcom/facebook/AccessToken$a;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Le/j/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/j/c;->a:Le/j/v$d;

    iput-object p2, p0, Le/j/c;->b:Lcom/facebook/AccessToken;

    iput-object p3, p0, Le/j/c;->c:Lcom/facebook/AccessToken$a;

    iput-object p4, p0, Le/j/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p5, p0, Le/j/c;->e:Ljava/util/Set;

    iput-object p6, p0, Le/j/c;->f:Ljava/util/Set;

    iput-object p7, p0, Le/j/c;->g:Ljava/util/Set;

    iput-object p8, p0, Le/j/c;->h:Le/j/v;

    return-void
.end method


# virtual methods
.method public final a(Le/j/k0;)V
    .locals 30

    move-object/from16 v1, p0

    iget-object v0, v1, Le/j/c;->a:Le/j/v$d;

    iget-object v2, v1, Le/j/c;->b:Lcom/facebook/AccessToken;

    iget-object v3, v1, Le/j/c;->c:Lcom/facebook/AccessToken$a;

    iget-object v4, v1, Le/j/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v5, v1, Le/j/c;->e:Ljava/util/Set;

    iget-object v6, v1, Le/j/c;->f:Ljava/util/Set;

    iget-object v7, v1, Le/j/c;->g:Ljava/util/Set;

    iget-object v8, v1, Le/j/c;->h:Le/j/v;

    const-string v9, "$refreshResult"

    .line 1
    invoke-static {v0, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "$permissionsCallSucceeded"

    invoke-static {v4, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "$permissions"

    invoke-static {v5, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "$declinedPermissions"

    invoke-static {v6, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "$expiredPermissions"

    invoke-static {v7, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "this$0"

    invoke-static {v8, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "it"

    move-object/from16 v10, p1

    invoke-static {v10, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v9, v0, Le/j/v$d;->a:Ljava/lang/String;

    .line 3
    iget v10, v0, Le/j/v$d;->b:I

    .line 4
    iget-object v11, v0, Le/j/v$d;->d:Ljava/lang/Long;

    .line 5
    iget-object v12, v0, Le/j/v$d;->e:Ljava/lang/String;

    .line 6
    :try_start_0
    sget-object v15, Le/j/v;->f:Le/j/v$a;

    invoke-virtual {v15}, Le/j/v$a;->a()Le/j/v;

    move-result-object v13

    .line 7
    iget-object v13, v13, Le/j/v;->c:Lcom/facebook/AccessToken;

    if-eqz v13, :cond_c

    .line 8
    invoke-virtual {v15}, Le/j/v$a;->a()Le/j/v;

    move-result-object v13

    .line 9
    iget-object v13, v13, Le/j/v;->c:Lcom/facebook/AccessToken;

    if-nez v13, :cond_0

    const/4 v13, 0x0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v13, v13, Lcom/facebook/AccessToken;->i:Ljava/lang/String;

    :goto_0
    iget-object v14, v2, Lcom/facebook/AccessToken;->i:Ljava/lang/String;

    if-eq v13, v14, :cond_1

    goto/16 :goto_a

    .line 11
    :cond_1
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v13

    if-nez v13, :cond_3

    if-nez v9, :cond_3

    if-nez v10, :cond_3

    if-nez v3, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    new-instance v0, Le/j/c0;

    const-string v2, "Failed to refresh access token"

    invoke-direct {v0, v2}, Le/j/c0;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v0}, Lcom/facebook/AccessToken$a;->a(Le/j/c0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :goto_1
    iget-object v0, v8, Le/j/v;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_c

    .line 14
    :cond_3
    :try_start_1
    iget-object v10, v2, Lcom/facebook/AccessToken;->a:Ljava/util/Date;

    .line 15
    iget v13, v0, Le/j/v$d;->b:I

    const-wide/16 v16, 0x3e8

    if-eqz v13, :cond_4

    .line 16
    new-instance v10, Ljava/util/Date;

    .line 17
    iget v0, v0, Le/j/v$d;->b:I

    int-to-long v13, v0

    mul-long v13, v13, v16

    .line 18
    invoke-direct {v10, v13, v14}, Ljava/util/Date;-><init>(J)V

    goto :goto_2

    .line 19
    :cond_4
    iget v13, v0, Le/j/v$d;->c:I

    if-eqz v13, :cond_5

    .line 20
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    .line 21
    new-instance v10, Ljava/util/Date;

    .line 22
    iget v0, v0, Le/j/v$d;->c:I

    int-to-long v0, v0

    mul-long v0, v0, v16

    add-long/2addr v0, v13

    .line 23
    invoke-direct {v10, v0, v1}, Ljava/util/Date;-><init>(J)V

    :cond_5
    :goto_2
    move-object/from16 v26, v10

    .line 24
    new-instance v1, Lcom/facebook/AccessToken;

    if-nez v9, :cond_6

    .line 25
    iget-object v9, v2, Lcom/facebook/AccessToken;->e:Ljava/lang/String;

    :cond_6
    move-object/from16 v19, v9

    .line 26
    iget-object v0, v2, Lcom/facebook/AccessToken;->h:Ljava/lang/String;

    .line 27
    iget-object v9, v2, Lcom/facebook/AccessToken;->i:Ljava/lang/String;

    .line 28
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v10

    if-eqz v10, :cond_7

    :goto_3
    move-object/from16 v22, v5

    goto :goto_4

    .line 29
    :cond_7
    iget-object v5, v2, Lcom/facebook/AccessToken;->b:Ljava/util/Set;

    goto :goto_3

    .line 30
    :goto_4
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_8

    :goto_5
    move-object/from16 v23, v6

    goto :goto_6

    .line 31
    :cond_8
    iget-object v6, v2, Lcom/facebook/AccessToken;->c:Ljava/util/Set;

    goto :goto_5

    .line 32
    :goto_6
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_7
    move-object/from16 v24, v7

    goto :goto_8

    .line 33
    :cond_9
    iget-object v7, v2, Lcom/facebook/AccessToken;->d:Ljava/util/Set;

    goto :goto_7

    .line 34
    :goto_8
    iget-object v4, v2, Lcom/facebook/AccessToken;->f:Le/j/w;

    .line 35
    new-instance v27, Ljava/util/Date;

    invoke-direct/range {v27 .. v27}, Ljava/util/Date;-><init>()V

    if-eqz v11, :cond_a

    .line 36
    new-instance v5, Ljava/util/Date;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    mul-long v6, v6, v16

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    goto :goto_9

    .line 37
    :cond_a
    iget-object v5, v2, Lcom/facebook/AccessToken;->j:Ljava/util/Date;

    :goto_9
    move-object/from16 v28, v5

    if-nez v12, :cond_b

    .line 38
    iget-object v12, v2, Lcom/facebook/AccessToken;->k:Ljava/lang/String;

    :cond_b
    move-object/from16 v29, v12

    move-object/from16 v18, v1

    move-object/from16 v20, v0

    move-object/from16 v21, v9

    move-object/from16 v25, v4

    .line 39
    invoke-direct/range {v18 .. v29}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Le/j/w;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    :try_start_2
    invoke-virtual {v15}, Le/j/v$a;->a()Le/j/v;

    move-result-object v0

    const/4 v2, 0x1

    .line 41
    invoke-virtual {v0, v1, v2}, Le/j/v;->c(Lcom/facebook/AccessToken;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    iget-object v0, v8, Le/j/v;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v3, :cond_e

    .line 43
    invoke-interface {v3, v1}, Lcom/facebook/AccessToken$a;->b(Lcom/facebook/AccessToken;)V

    goto :goto_c

    :catchall_0
    move-exception v0

    move-object v13, v1

    goto :goto_d

    :cond_c
    :goto_a
    if-nez v3, :cond_d

    goto :goto_b

    .line 44
    :cond_d
    :try_start_3
    new-instance v0, Le/j/c0;

    const-string v1, "No current access token to refresh"

    invoke-direct {v0, v1}, Le/j/c0;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-interface {v3, v0}, Lcom/facebook/AccessToken$a;->a(Le/j/c0;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 46
    :goto_b
    iget-object v0, v8, Le/j/v;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_e
    :goto_c
    return-void

    :catchall_1
    move-exception v0

    const/4 v13, 0x0

    :goto_d
    iget-object v1, v8, Le/j/v;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v3, :cond_f

    if-eqz v13, :cond_f

    .line 47
    invoke-interface {v3, v13}, Lcom/facebook/AccessToken$a;->b(Lcom/facebook/AccessToken;)V

    :cond_f
    throw v0
.end method
