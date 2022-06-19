.class public final synthetic Le/m/a/h/a/a/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/h/a/a/z;

.field public final synthetic b:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Le/m/a/h/a/a/z;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/a/v;->a:Le/m/a/h/a/a/z;

    iput-object p2, p0, Le/m/a/h/a/a/v;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Le/m/a/h/a/a/v;->a:Le/m/a/h/a/a/z;

    iget-object v1, p0, Le/m/a/h/a/a/v;->b:Landroid/os/Bundle;

    .line 1
    iget-object v2, v0, Le/m/a/h/a/a/z;->g:Le/m/a/h/a/a/p1;

    .line 2
    new-instance v3, Le/m/a/h/a/a/h1;

    .line 3
    invoke-direct {v3, v2, v1}, Le/m/a/h/a/a/h1;-><init>(Le/m/a/h/a/a/p1;Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Le/m/a/h/a/a/p1;->b(Le/m/a/h/a/a/o1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4
    iget-object v0, v0, Le/m/a/h/a/a/z;->h:Le/m/a/h/a/a/y0;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Le/m/a/h/a/a/y0;->k:Le/m/a/h/a/d/g;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Run extractor loop"

    .line 6
    invoke-virtual {v1, v4, v3}, Le/m/a/h/a/d/g;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v3, v0, Le/m/a/h/a/a/y0;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    .line 7
    invoke-virtual {v3, v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v3, v0, Le/m/a/h/a/a/y0;->i:Le/m/a/h/a/a/s1;

    .line 8
    invoke-virtual {v3}, Le/m/a/h/a/a/s1;->a()Le/m/a/h/a/a/r1;

    move-result-object v1
    :try_end_0
    .catch Le/m/a/h/a/a/x0; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 9
    sget-object v5, Le/m/a/h/a/a/y0;->k:Le/m/a/h/a/d/g;

    new-array v6, v4, [Ljava/lang/Object;

    .line 10
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "Error while getting next extraction task: %s"

    invoke-virtual {v5, v7, v6}, Le/m/a/h/a/d/g;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    iget v5, v3, Le/m/a/h/a/a/x0;->a:I

    if-ltz v5, :cond_0

    iget-object v5, v0, Le/m/a/h/a/a/y0;->h:Le/m/a/h/a/d/f1;

    .line 11
    invoke-interface {v5}, Le/m/a/h/a/d/f1;->zza()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/m/a/h/a/a/s3;

    iget v6, v3, Le/m/a/h/a/a/x0;->a:I

    invoke-interface {v5, v6}, Le/m/a/h/a/a/s3;->zzi(I)V

    iget v5, v3, Le/m/a/h/a/a/x0;->a:I

    .line 12
    invoke-virtual {v0, v5, v3}, Le/m/a/h/a/a/y0;->a(ILjava/lang/Exception;)V

    :cond_0
    :goto_1
    if-eqz v1, :cond_7

    .line 13
    :try_start_1
    instance-of v3, v1, Le/m/a/h/a/a/u0;

    if-eqz v3, :cond_1

    iget-object v3, v0, Le/m/a/h/a/a/y0;->b:Le/m/a/h/a/a/v0;

    .line 14
    move-object v5, v1

    check-cast v5, Le/m/a/h/a/a/u0;

    invoke-virtual {v3, v5}, Le/m/a/h/a/a/v0;->a(Le/m/a/h/a/a/u0;)V

    goto :goto_0

    .line 15
    :cond_1
    instance-of v3, v1, Le/m/a/h/a/a/y2;

    if-eqz v3, :cond_2

    iget-object v3, v0, Le/m/a/h/a/a/y0;->c:Le/m/a/h/a/a/z2;

    .line 16
    move-object v5, v1

    check-cast v5, Le/m/a/h/a/a/y2;

    invoke-virtual {v3, v5}, Le/m/a/h/a/a/z2;->a(Le/m/a/h/a/a/y2;)V

    goto :goto_0

    .line 17
    :cond_2
    instance-of v3, v1, Le/m/a/h/a/a/b2;

    if-eqz v3, :cond_3

    iget-object v3, v0, Le/m/a/h/a/a/y0;->d:Le/m/a/h/a/a/c2;

    .line 18
    move-object v5, v1

    check-cast v5, Le/m/a/h/a/a/b2;

    invoke-virtual {v3, v5}, Le/m/a/h/a/a/c2;->a(Le/m/a/h/a/a/b2;)V

    goto :goto_0

    .line 19
    :cond_3
    instance-of v3, v1, Le/m/a/h/a/a/e2;

    if-eqz v3, :cond_4

    iget-object v3, v0, Le/m/a/h/a/a/y0;->e:Le/m/a/h/a/a/h2;

    .line 20
    move-object v5, v1

    check-cast v5, Le/m/a/h/a/a/e2;

    invoke-virtual {v3, v5}, Le/m/a/h/a/a/h2;->a(Le/m/a/h/a/a/e2;)V

    goto :goto_0

    .line 21
    :cond_4
    instance-of v3, v1, Le/m/a/h/a/a/n2;

    if-eqz v3, :cond_5

    iget-object v3, v0, Le/m/a/h/a/a/y0;->f:Le/m/a/h/a/a/o2;

    .line 22
    move-object v5, v1

    check-cast v5, Le/m/a/h/a/a/n2;

    invoke-virtual {v3, v5}, Le/m/a/h/a/a/o2;->a(Le/m/a/h/a/a/n2;)V

    goto :goto_0

    .line 23
    :cond_5
    instance-of v3, v1, Le/m/a/h/a/a/q2;

    if-eqz v3, :cond_6

    iget-object v3, v0, Le/m/a/h/a/a/y0;->g:Le/m/a/h/a/a/s2;

    .line 24
    move-object v5, v1

    check-cast v5, Le/m/a/h/a/a/q2;

    invoke-virtual {v3, v5}, Le/m/a/h/a/a/s2;->a(Le/m/a/h/a/a/q2;)V

    goto :goto_0

    :cond_6
    sget-object v3, Le/m/a/h/a/a/y0;->k:Le/m/a/h/a/d/g;

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 25
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "Unknown task type: %s"

    invoke-virtual {v3, v6, v5}, Le/m/a/h/a/d/g;->b(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v3

    .line 26
    sget-object v5, Le/m/a/h/a/a/y0;->k:Le/m/a/h/a/d/g;

    new-array v6, v4, [Ljava/lang/Object;

    .line 27
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "Error during extraction task: %s"

    invoke-virtual {v5, v7, v6}, Le/m/a/h/a/d/g;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v5, v0, Le/m/a/h/a/a/y0;->h:Le/m/a/h/a/d/f1;

    .line 28
    invoke-interface {v5}, Le/m/a/h/a/d/f1;->zza()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/m/a/h/a/a/s3;

    iget v6, v1, Le/m/a/h/a/a/r1;->a:I

    invoke-interface {v5, v6}, Le/m/a/h/a/a/s3;->zzi(I)V

    iget v1, v1, Le/m/a/h/a/a/r1;->a:I

    .line 29
    invoke-virtual {v0, v1, v3}, Le/m/a/h/a/a/y0;->a(ILjava/lang/Exception;)V

    goto/16 :goto_0

    .line 30
    :cond_7
    iget-object v0, v0, Le/m/a/h/a/a/y0;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2

    :cond_8
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "runLoop already looping; return"

    .line 32
    invoke-virtual {v1, v2, v0}, Le/m/a/h/a/d/g;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_9
    :goto_2
    return-void
.end method
