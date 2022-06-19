.class public final Le/a/h5/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h5/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/h5/z$a;
    }
.end annotation


# instance fields
.field public a:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "-",
            "Le/a/h5/l;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lq3/a/b3/c;

.field public final d:Ls1/w/f;

.field public final e:Landroid/content/Context;

.field public final f:Le/a/p5/a0;

.field public final g:Le/a/n5/c;


# direct methods
.method public constructor <init>(Ls1/w/f;Landroid/content/Context;Le/a/p5/a0;Le/a/n5/c;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ugcManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h5/z;->d:Ls1/w/f;

    iput-object p2, p0, Le/a/h5/z;->e:Landroid/content/Context;

    iput-object p3, p0, Le/a/h5/z;->f:Le/a/p5/a0;

    iput-object p4, p0, Le/a/h5/z;->g:Le/a/n5/c;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2}, Lq3/a/b3/g;->a(ZI)Lq3/a/b3/c;

    move-result-object p1

    iput-object p1, p0, Le/a/h5/z;->c:Lq3/a/b3/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/a/h5/z;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Intent(Settings.ACTION_M\u2026${context.packageName}\"))"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Le/a/h5/z;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public b(Lcom/truecaller/tcpermissions/PermissionRequestOptions;[Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/tcpermissions/PermissionRequestOptions;",
            "[",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/h5/l;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    instance-of v4, v3, Le/a/h5/z$e;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Le/a/h5/z$e;

    iget v5, v4, Le/a/h5/z$e;->e:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Le/a/h5/z$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v4, Le/a/h5/z$e;

    invoke-direct {v4, v1, v3}, Le/a/h5/z$e;-><init>(Le/a/h5/z;Ls1/w/d;)V

    :goto_0
    iget-object v3, v4, Le/a/h5/z$e;->d:Ljava/lang/Object;

    sget-object v5, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v6, v4, Le/a/h5/z$e;->e:I

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v6, :cond_5

    if-eq v6, v10, :cond_4

    if-eq v6, v9, :cond_3

    if-eq v6, v8, :cond_2

    if-ne v6, v7, :cond_1

    iget-object v0, v4, Le/a/h5/z$e;->h:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Le/a/h5/z$a;

    iget-object v0, v4, Le/a/h5/z$e;->g:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Le/a/h5/z;

    :try_start_0
    invoke-static {v3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget-object v0, v4, Le/a/h5/z$e;->h:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Le/a/h5/z$a;

    iget-object v0, v4, Le/a/h5/z$e;->g:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Le/a/h5/z;

    :try_start_1
    invoke-static {v3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :cond_3
    iget-object v0, v4, Le/a/h5/z$e;->i:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Le/a/h5/z$a;

    iget-object v0, v4, Le/a/h5/z$e;->h:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/tcpermissions/PermissionRequestOptions;

    iget-object v6, v4, Le/a/h5/z$e;->g:Ljava/lang/Object;

    check-cast v6, Le/a/h5/z;

    :try_start_2
    invoke-static {v3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v12, v6

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    move-object v4, v6

    goto/16 :goto_8

    :catch_1
    move-exception v0

    move-object v4, v6

    goto/16 :goto_7

    :cond_4
    iget-object v0, v4, Le/a/h5/z$e;->j:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Le/a/h5/z$a;

    iget-object v0, v4, Le/a/h5/z$e;->i:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v6, v4, Le/a/h5/z$e;->h:Ljava/lang/Object;

    check-cast v6, Lcom/truecaller/tcpermissions/PermissionRequestOptions;

    iget-object v12, v4, Le/a/h5/z$e;->g:Ljava/lang/Object;

    check-cast v12, Le/a/h5/z;

    :try_start_3
    invoke-static {v3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v3, v0

    move-object v0, v6

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    move-object v4, v12

    goto/16 :goto_8

    :catch_2
    move-exception v0

    move-object v4, v12

    goto/16 :goto_7

    :cond_5
    invoke-static {v3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    array-length v6, v2

    const/4 v12, 0x0

    move v13, v12

    :goto_1
    if-ge v13, v6, :cond_7

    aget-object v14, v2, v13

    .line 6
    iget-object v15, v1, Le/a/h5/z;->f:Le/a/p5/a0;

    new-array v7, v10, [Ljava/lang/String;

    aput-object v14, v7, v12

    invoke-interface {v15, v7}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v7

    xor-int/2addr v7, v10

    .line 7
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 8
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x4

    goto :goto_1

    .line 9
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 10
    new-instance v0, Le/a/h5/l;

    invoke-direct {v0, v10, v12, v9}, Le/a/h5/l;-><init>(ZZI)V

    return-object v0

    .line 11
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permissions to be requested: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ". Options: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    new-instance v2, Le/a/h5/z$a;

    invoke-direct {v2, v1, v3}, Le/a/h5/z$a;-><init>(Le/a/h5/z;Ljava/util/List;)V

    .line 13
    :try_start_4
    iget-object v6, v1, Le/a/h5/z;->c:Lq3/a/b3/c;

    invoke-interface {v6}, Lq3/a/b3/c;->a()Z

    move-result v6

    .line 14
    iget-object v6, v1, Le/a/h5/z;->c:Lq3/a/b3/c;

    iput-object v1, v4, Le/a/h5/z$e;->g:Ljava/lang/Object;

    iput-object v0, v4, Le/a/h5/z$e;->h:Ljava/lang/Object;

    iput-object v3, v4, Le/a/h5/z$e;->i:Ljava/lang/Object;

    iput-object v2, v4, Le/a/h5/z$e;->j:Ljava/lang/Object;

    iput v10, v4, Le/a/h5/z$e;->e:I

    invoke-static {v6, v11, v4, v10, v11}, Ls1/a/a/a/v0/f/d;->z2(Lq3/a/b3/c;Ljava/lang/Object;Ls1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-ne v6, v5, :cond_9

    return-object v5

    :cond_9
    move-object v12, v1

    .line 15
    :goto_2
    :try_start_5
    iget-boolean v6, v0, Lcom/truecaller/tcpermissions/PermissionRequestOptions;->b:Z

    if-eqz v6, :cond_c

    .line 16
    invoke-virtual {v12, v3}, Le/a/h5/z;->k(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 17
    iput-object v12, v4, Le/a/h5/z$e;->g:Ljava/lang/Object;

    iput-object v0, v4, Le/a/h5/z$e;->h:Ljava/lang/Object;

    iput-object v2, v4, Le/a/h5/z$e;->i:Ljava/lang/Object;

    iput-object v11, v4, Le/a/h5/z$e;->j:Ljava/lang/Object;

    iput v9, v4, Le/a/h5/z$e;->e:I

    invoke-virtual {v12, v4}, Le/a/h5/z;->i(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_a

    return-object v5

    .line 18
    :cond_a
    :goto_3
    check-cast v3, Le/a/h5/l;

    .line 19
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Result of requesting access contacts is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    iput-object v12, v4, Le/a/h5/z$e;->g:Ljava/lang/Object;

    iput-object v2, v4, Le/a/h5/z$e;->h:Ljava/lang/Object;

    iput-object v11, v4, Le/a/h5/z$e;->i:Ljava/lang/Object;

    iput v8, v4, Le/a/h5/z$e;->e:I

    invoke-virtual {v12, v0, v3, v2, v4}, Le/a/h5/z;->h(Lcom/truecaller/tcpermissions/PermissionRequestOptions;Le/a/h5/l;Le/a/h5/z$a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3
    :try_end_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-ne v3, v5, :cond_b

    return-object v5

    :cond_b
    move-object v4, v12

    :goto_4
    :try_start_6
    check-cast v3, Le/a/h5/l;
    :try_end_6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    .line 21
    :cond_c
    :try_start_7
    iput-object v12, v4, Le/a/h5/z$e;->g:Ljava/lang/Object;

    iput-object v2, v4, Le/a/h5/z$e;->h:Ljava/lang/Object;

    iput-object v11, v4, Le/a/h5/z$e;->i:Ljava/lang/Object;

    iput-object v11, v4, Le/a/h5/z$e;->j:Ljava/lang/Object;

    const/4 v3, 0x4

    iput v3, v4, Le/a/h5/z$e;->e:I

    invoke-virtual {v12, v0, v2, v4}, Le/a/h5/z;->j(Lcom/truecaller/tcpermissions/PermissionRequestOptions;Le/a/h5/z$a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3
    :try_end_7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-ne v3, v5, :cond_d

    return-object v5

    :cond_d
    move-object v4, v12

    .line 22
    :goto_5
    :try_start_8
    check-cast v3, Le/a/h5/l;
    :try_end_8
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 23
    :goto_6
    iput-object v11, v4, Le/a/h5/z;->a:Ls1/z/b/l;

    .line 24
    iget-object v0, v4, Le/a/h5/z;->c:Lq3/a/b3/c;

    invoke-interface {v0}, Lq3/a/b3/c;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v4, Le/a/h5/z;->c:Lq3/a/b3/c;

    invoke-static {v0, v11, v10, v11}, Ls1/a/a/a/v0/f/d;->U3(Lq3/a/b3/c;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 25
    :cond_e
    invoke-virtual {v2}, Le/a/h5/z$a;->c()Z

    .line 26
    invoke-virtual {v2}, Le/a/h5/z$a;->a()V

    return-object v3

    :catchall_3
    move-exception v0

    move-object v4, v1

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v4, v1

    .line 27
    :goto_7
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 28
    :goto_8
    iput-object v11, v4, Le/a/h5/z;->a:Ls1/z/b/l;

    .line 29
    iget-object v3, v4, Le/a/h5/z;->c:Lq3/a/b3/c;

    invoke-interface {v3}, Lq3/a/b3/c;->a()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, v4, Le/a/h5/z;->c:Lq3/a/b3/c;

    invoke-static {v3, v11, v10, v11}, Ls1/a/a/a/v0/f/d;->U3(Lq3/a/b3/c;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 30
    :cond_f
    invoke-virtual {v2}, Le/a/h5/z$a;->c()Z

    .line 31
    invoke-virtual {v2}, Le/a/h5/z$a;->a()V

    throw v0
.end method

.method public c(Ljava/util/List;Ls1/z/b/l;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ls1/z/b/l<",
            "-",
            "Le/a/h5/l;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "permissions"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callback"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v5, Lcom/truecaller/tcpermissions/PermissionRequestOptions;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    invoke-direct {v5, v2, v2, v3, v4}, Lcom/truecaller/tcpermissions/PermissionRequestOptions;-><init>(ZZLjava/lang/Integer;I)V

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v1, p0, Le/a/h5/z;->d:Ls1/w/f;

    new-instance v9, Le/a/h5/a0;

    const/4 v7, 0x0

    move-object v2, v9

    move-object v3, p0

    move-object v4, p2

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Le/a/h5/a0;-><init>(Le/a/h5/z;Ls1/z/b/l;Lcom/truecaller/tcpermissions/PermissionRequestOptions;Ljava/util/List;Ls1/w/d;)V

    const/4 v8, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v6, v0

    move-object v7, v1

    invoke-static/range {v6 .. v11}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public d(Le/a/h5/l;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h5/z;->a:Ls1/z/b/l;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Le/a/h5/z;->a:Ls1/z/b/l;

    .line 3
    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.REQUEST_SCHEDULE_EXACT_ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/a/h5/z;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Intent(Settings.ACTION_R\u2026${context.packageName}\"))"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Le/a/h5/z;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public f([Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/h5/l;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/truecaller/tcpermissions/PermissionRequestOptions;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/truecaller/tcpermissions/PermissionRequestOptions;-><init>(ZZLjava/lang/Integer;I)V

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Le/a/h5/z;->b(Lcom/truecaller/tcpermissions/PermissionRequestOptions;[Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/h5/z;->b:Ls1/z/b/l;

    return-void
.end method

.method public final h(Lcom/truecaller/tcpermissions/PermissionRequestOptions;Le/a/h5/l;Le/a/h5/z$a;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/tcpermissions/PermissionRequestOptions;",
            "Le/a/h5/l;",
            "Le/a/h5/z$a;",
            "Ls1/w/d<",
            "-",
            "Le/a/h5/l;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Le/a/h5/z$b;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Le/a/h5/z$b;

    iget v1, v0, Le/a/h5/z$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/h5/z$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/h5/z$b;

    invoke-direct {v0, p0, p4}, Le/a/h5/z$b;-><init>(Le/a/h5/z;Ls1/w/d;)V

    :goto_0
    iget-object p4, v0, Le/a/h5/z$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/h5/z$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-boolean p4, p2, Le/a/h5/l;->a:Z

    if-ne p4, v3, :cond_5

    .line 5
    invoke-virtual {p3}, Le/a/h5/z$a;->c()Z

    move-result p4

    if-eqz p4, :cond_3

    goto :goto_2

    .line 6
    :cond_3
    new-instance p2, Le/a/h5/z$a;

    .line 7
    iget-object p3, p3, Le/a/h5/z$a;->b:Ljava/util/List;

    .line 8
    invoke-direct {p2, p0, p3}, Le/a/h5/z$a;-><init>(Le/a/h5/z;Ljava/util/List;)V

    iput v3, v0, Le/a/h5/z$b;->e:I

    invoke-virtual {p0, p1, p2, v0}, Le/a/h5/z;->j(Lcom/truecaller/tcpermissions/PermissionRequestOptions;Le/a/h5/z$a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_4

    return-object v1

    .line 9
    :cond_4
    :goto_1
    move-object p2, p4

    check-cast p2, Le/a/h5/l;

    goto :goto_2

    :cond_5
    if-nez p4, :cond_6

    .line 10
    new-instance p2, Le/a/h5/l;

    const/4 p1, 0x2

    const/4 p3, 0x0

    invoke-direct {p2, p3, p3, p1}, Le/a/h5/l;-><init>(ZZI)V

    :goto_2
    return-object p2

    :cond_6
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method

.method public final i(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/h5/l;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lq3/a/o;

    invoke-static {p1}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 2
    invoke-virtual {v0}, Lq3/a/o;->z()V

    .line 3
    new-instance v1, Le/a/h5/z$c;

    invoke-direct {v1, v0, p0}, Le/a/h5/z$c;-><init>(Lq3/a/n;Le/a/h5/z;)V

    .line 4
    iput-object v1, p0, Le/a/h5/z;->a:Ls1/z/b/l;

    .line 5
    new-instance v1, Landroid/content/Intent;

    .line 6
    iget-object v2, p0, Le/a/h5/z;->e:Landroid/content/Context;

    .line 7
    const-class v3, Lcom/truecaller/tcpermissions/AccessContactsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 8
    iget-object v2, p0, Le/a/h5/z;->e:Landroid/content/Context;

    .line 9
    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 10
    invoke-virtual {v0}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object v0

    .line 11
    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne v0, v1, :cond_0

    const-string v1, "frame"

    .line 12
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final j(Lcom/truecaller/tcpermissions/PermissionRequestOptions;Le/a/h5/z$a;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/tcpermissions/PermissionRequestOptions;",
            "Le/a/h5/z$a;",
            "Ls1/w/d<",
            "-",
            "Le/a/h5/l;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lq3/a/o;

    invoke-static {p3}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 2
    invoke-virtual {v0}, Lq3/a/o;->z()V

    .line 3
    new-instance v1, Le/a/h5/z$d;

    invoke-direct {v1, v0}, Le/a/h5/z$d;-><init>(Lq3/a/n;)V

    .line 4
    iput-object v1, p0, Le/a/h5/z;->a:Ls1/z/b/l;

    const-string v1, "Requesting permissions "

    .line 5
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6
    iget-object v2, p2, Le/a/h5/z$a;->b:Ljava/util/List;

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 8
    iget-object v1, p0, Le/a/h5/z;->e:Landroid/content/Context;

    .line 9
    iget-object p2, p2, Le/a/h5/z$a;->b:Ljava/util/List;

    const-string v2, "context"

    .line 10
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "options"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "permissions"

    invoke-static {p2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/truecaller/tcpermissions/TcPermissionsHandlerActivity;

    invoke-direct {v4, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x10000000

    .line 12
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 13
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 14
    invoke-virtual {v4, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 15
    invoke-virtual {v1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 16
    invoke-virtual {v0}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object p1

    .line 17
    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    const-string p2, "frame"

    .line 18
    invoke-static {p3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public final k(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const-string v2, "android.permission.READ_CONTACTS"

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Le/a/h5/z;->g:Le/a/n5/c;

    invoke-interface {v0}, Le/a/n5/c;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Le/a/h5/z;->g:Le/a/n5/c;

    invoke-interface {v0}, Le/a/n5/c;->c()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x1

    :cond_2
    return p1
.end method
