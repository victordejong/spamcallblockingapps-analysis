.class public Le/p/b/i$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/p/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Le/p/b/i;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Le/p/b/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    iput-object p2, p0, Le/p/b/i$a;->a:Le/p/b/i;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "canceled"

    const-string v4, ""

    const-string v5, "Dispatcher"

    packed-switch v0, :pswitch_data_0

    .line 2
    :pswitch_0
    sget-object v0, Lcom/squareup/picasso/Picasso;->o:Landroid/os/Handler;

    new-instance v1, Le/p/b/i$a$a;

    invoke-direct {v1, p0, p1}, Le/p/b/i$a$a;-><init>(Le/p/b/i$a;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_f

    .line 3
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/p/b/i$a;->a:Le/p/b/i;

    .line 5
    iget-object v2, v0, Le/p/b/i;->h:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_f

    .line 6
    :cond_0
    iget-object v2, v0, Le/p/b/i;->g:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/p/b/a;

    .line 8
    iget-object v4, v3, Le/p/b/a;->j:Ljava/lang/Object;

    .line 9
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_2

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_26

    .line 13
    iget-object p1, v0, Le/p/b/i;->j:Landroid/os/Handler;

    const/16 v0, 0xd

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_f

    .line 14
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Le/p/b/i$a;->a:Le/p/b/i;

    .line 16
    iget-object v1, v0, Le/p/b/i;->h:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_f

    .line 17
    :cond_4
    iget-object v1, v0, Le/p/b/i;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/p/b/c;

    .line 19
    iget-object v4, v2, Le/p/b/c;->b:Lcom/squareup/picasso/Picasso;

    .line 20
    iget-boolean v4, v4, Lcom/squareup/picasso/Picasso;->n:Z

    .line 21
    iget-object v6, v2, Le/p/b/c;->k:Le/p/b/a;

    .line 22
    iget-object v7, v2, Le/p/b/c;->l:Ljava/util/List;

    if-eqz v7, :cond_6

    .line 23
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    const/4 v8, 0x1

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    :goto_2
    if-nez v6, :cond_7

    if-nez v8, :cond_7

    goto :goto_1

    :cond_7
    const-string v9, "\' was paused"

    const-string v10, "because tag \'"

    const-string v11, "paused"

    if-eqz v6, :cond_8

    .line 24
    iget-object v12, v6, Le/p/b/a;->j:Ljava/lang/Object;

    .line 25
    invoke-virtual {v12, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 26
    invoke-virtual {v2, v6}, Le/p/b/c;->d(Le/p/b/a;)V

    .line 27
    iget-object v12, v0, Le/p/b/i;->g:Ljava/util/Map;

    invoke-virtual {v6}, Le/p/b/a;->d()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_8

    .line 28
    iget-object v6, v6, Le/p/b/a;->b:Le/p/b/x;

    invoke-virtual {v6}, Le/p/b/x;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, p1, v9}, Le/d/c/a/a;->y2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v11, v6, v12}, Le/p/b/f0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-eqz v8, :cond_b

    .line 29
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_3
    if-ltz v6, :cond_b

    .line 30
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/p/b/a;

    .line 31
    iget-object v12, v8, Le/p/b/a;->j:Ljava/lang/Object;

    .line 32
    invoke-virtual {v12, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    goto :goto_4

    .line 33
    :cond_9
    invoke-virtual {v2, v8}, Le/p/b/c;->d(Le/p/b/a;)V

    .line 34
    iget-object v12, v0, Le/p/b/i;->g:Ljava/util/Map;

    invoke-virtual {v8}, Le/p/b/a;->d()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_a

    .line 35
    iget-object v8, v8, Le/p/b/a;->b:Le/p/b/x;

    invoke-virtual {v8}, Le/p/b/x;->b()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, p1, v9}, Le/d/c/a/a;->y2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v11, v8, v12}, Le/p/b/f0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 36
    :cond_b
    invoke-virtual {v2}, Le/p/b/c;->b()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    if-eqz v4, :cond_5

    .line 38
    invoke-static {v2}, Le/p/b/f0;->c(Le/p/b/c;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "all actions paused"

    invoke-static {v5, v3, v2, v4}, Le/p/b/f0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 39
    :pswitch_3
    iget-object v0, p0, Le/p/b/i$a;->a:Le/p/b/i;

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_c

    const/4 p1, 0x1

    goto :goto_5

    :cond_c
    const/4 p1, 0x0

    .line 40
    :goto_5
    iput-boolean p1, v0, Le/p/b/i;->p:Z

    goto/16 :goto_f

    .line 41
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/NetworkInfo;

    .line 42
    iget-object v0, p0, Le/p/b/i$a;->a:Le/p/b/i;

    .line 43
    iget-object v1, v0, Le/p/b/i;->c:Ljava/util/concurrent/ExecutorService;

    instance-of v3, v1, Le/p/b/w;

    if-eqz v3, :cond_11

    .line 44
    check-cast v1, Le/p/b/w;

    .line 45
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    if-eqz p1, :cond_10

    .line 46
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-nez v6, :cond_d

    goto :goto_6

    .line 47
    :cond_d
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-eqz v6, :cond_f

    const/4 v2, 0x1

    if-eq v6, v2, :cond_e

    const/4 v2, 0x6

    if-eq v6, v2, :cond_e

    const/16 v2, 0x9

    if-eq v6, v2, :cond_e

    .line 48
    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 49
    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    goto :goto_7

    :cond_e
    const/4 v2, 0x4

    .line 50
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 51
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    goto :goto_7

    .line 52
    :cond_f
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v6

    packed-switch v6, :pswitch_data_1

    packed-switch v6, :pswitch_data_2

    .line 53
    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 54
    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    goto :goto_7

    :pswitch_5
    const/4 v2, 0x1

    .line 55
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 56
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    goto :goto_7

    .line 57
    :pswitch_6
    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 58
    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    goto :goto_7

    .line 59
    :pswitch_7
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 60
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    goto :goto_7

    .line 61
    :cond_10
    :goto_6
    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 62
    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    :cond_11
    :goto_7
    if-eqz p1, :cond_26

    .line 63
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 64
    iget-object p1, v0, Le/p/b/i;->f:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_26

    .line 65
    iget-object p1, v0, Le/p/b/i;->f:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 66
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 67
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/p/b/a;

    .line 68
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 69
    iget-object v2, v1, Le/p/b/a;->a:Lcom/squareup/picasso/Picasso;

    .line 70
    iget-boolean v2, v2, Lcom/squareup/picasso/Picasso;->n:Z

    if-eqz v2, :cond_12

    .line 71
    iget-object v2, v1, Le/p/b/a;->b:Le/p/b/x;

    .line 72
    invoke-virtual {v2}, Le/p/b/x;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "replaying"

    .line 73
    invoke-static {v5, v3, v2, v4}, Le/p/b/f0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    const/4 v2, 0x0

    .line 74
    invoke-virtual {v0, v1, v2}, Le/p/b/i;->e(Le/p/b/a;Z)V

    goto :goto_8

    .line 75
    :pswitch_8
    iget-object p1, p0, Le/p/b/i$a;->a:Le/p/b/i;

    .line 76
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Le/p/b/i;->m:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    iget-object v1, p1, Le/p/b/i;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 79
    iget-object p1, p1, Le/p/b/i;->j:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 80
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_13

    goto/16 :goto_f

    :cond_13
    const/4 p1, 0x0

    .line 81
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/p/b/c;

    .line 82
    iget-object p1, p1, Le/p/b/c;->b:Lcom/squareup/picasso/Picasso;

    .line 83
    iget-boolean p1, p1, Lcom/squareup/picasso/Picasso;->n:Z

    if-eqz p1, :cond_26

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/p/b/c;

    .line 86
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_14

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_14
    invoke-static {v1}, Le/p/b/f0;->c(Le/p/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 88
    :cond_15
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "delivered"

    .line 89
    invoke-static {v5, v0, p1, v4}, Le/p/b/f0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 90
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Le/p/b/c;

    .line 91
    iget-object v0, p0, Le/p/b/i$a;->a:Le/p/b/i;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Le/p/b/i;->d(Le/p/b/c;Z)V

    goto/16 :goto_f

    .line 92
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Le/p/b/c;

    .line 93
    iget-object v0, p0, Le/p/b/i$a;->a:Le/p/b/i;

    .line 94
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v2, p1, Le/p/b/c;->n:Ljava/util/concurrent/Future;

    if-eqz v2, :cond_16

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    goto :goto_a

    :cond_16
    const/4 v2, 0x0

    :goto_a
    if-eqz v2, :cond_17

    goto/16 :goto_f

    .line 96
    :cond_17
    iget-object v2, v0, Le/p/b/i;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v1, 0x0

    .line 97
    invoke-virtual {v0, p1, v1}, Le/p/b/i;->d(Le/p/b/c;Z)V

    goto/16 :goto_f

    :cond_18
    const/4 v2, 0x0

    .line 98
    iget-boolean v3, v0, Le/p/b/i;->o:Z

    if-eqz v3, :cond_19

    .line 99
    iget-object v1, v0, Le/p/b/i;->b:Landroid/content/Context;

    .line 100
    sget-object v3, Le/p/b/f0;->a:Ljava/lang/StringBuilder;

    const-string v3, "connectivity"

    .line 101
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 102
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 103
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 104
    :cond_19
    iget-boolean v3, v0, Le/p/b/i;->p:Z

    .line 105
    iget v6, p1, Le/p/b/c;->r:I

    if-lez v6, :cond_1a

    const/4 v7, 0x1

    goto :goto_b

    :cond_1a
    move v7, v2

    :goto_b
    if-nez v7, :cond_1b

    move v1, v2

    goto :goto_c

    :cond_1b
    add-int/lit8 v6, v6, -0x1

    .line 106
    iput v6, p1, Le/p/b/c;->r:I

    .line 107
    iget-object v6, p1, Le/p/b/c;->j:Le/p/b/z;

    invoke-virtual {v6, v3, v1}, Le/p/b/z;->g(ZLandroid/net/NetworkInfo;)Z

    move-result v1

    :goto_c
    if-eqz v1, :cond_1e

    .line 108
    iget-object v1, p1, Le/p/b/c;->b:Lcom/squareup/picasso/Picasso;

    .line 109
    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->n:Z

    if-eqz v1, :cond_1c

    .line 110
    invoke-static {p1}, Le/p/b/f0;->c(Le/p/b/c;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "retrying"

    .line 111
    invoke-static {v5, v2, v1, v4}, Le/p/b/f0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_1c
    iget-object v1, p1, Le/p/b/c;->p:Ljava/lang/Exception;

    .line 113
    instance-of v1, v1, Le/p/b/t$a;

    if-eqz v1, :cond_1d

    .line 114
    iget v1, p1, Le/p/b/c;->i:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p1, Le/p/b/c;->i:I

    .line 115
    :cond_1d
    iget-object v0, v0, Le/p/b/i;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p1, Le/p/b/c;->n:Ljava/util/concurrent/Future;

    goto/16 :goto_f

    .line 116
    :cond_1e
    iget-boolean v1, v0, Le/p/b/i;->o:Z

    if-eqz v1, :cond_1f

    .line 117
    iget-object v1, p1, Le/p/b/c;->j:Le/p/b/z;

    invoke-virtual {v1}, Le/p/b/z;->h()Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v1, 0x1

    goto :goto_d

    :cond_1f
    move v1, v2

    .line 118
    :goto_d
    invoke-virtual {v0, p1, v1}, Le/p/b/i;->d(Le/p/b/c;Z)V

    if-eqz v1, :cond_26

    .line 119
    iget-object v1, p1, Le/p/b/c;->k:Le/p/b/a;

    if-eqz v1, :cond_20

    .line 120
    invoke-virtual {v1}, Le/p/b/a;->d()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_20

    const/4 v4, 0x1

    .line 121
    iput-boolean v4, v1, Le/p/b/a;->k:Z

    .line 122
    iget-object v4, v0, Le/p/b/i;->f:Ljava/util/Map;

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_20
    iget-object p1, p1, Le/p/b/c;->l:Ljava/util/List;

    if-eqz p1, :cond_26

    .line 124
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_e
    if-ge v2, v1, :cond_26

    .line 125
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/p/b/a;

    .line 126
    invoke-virtual {v3}, Le/p/b/a;->d()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_21

    const/4 v5, 0x1

    .line 127
    iput-boolean v5, v3, Le/p/b/a;->k:Z

    .line 128
    iget-object v5, v0, Le/p/b/i;->f:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :pswitch_b
    const/4 v0, 0x0

    .line 129
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Le/p/b/c;

    .line 130
    iget-object v1, p0, Le/p/b/i$a;->a:Le/p/b/i;

    .line 131
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget v3, p1, Le/p/b/c;->h:I

    and-int/2addr v2, v3

    if-nez v2, :cond_22

    const/4 v0, 0x1

    :cond_22
    if-eqz v0, :cond_23

    .line 133
    iget-object v0, v1, Le/p/b/i;->k:Le/p/b/d;

    .line 134
    iget-object v2, p1, Le/p/b/c;->f:Ljava/lang/String;

    .line 135
    iget-object v3, p1, Le/p/b/c;->m:Landroid/graphics/Bitmap;

    .line 136
    invoke-interface {v0, v2, v3}, Le/p/b/d;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 137
    :cond_23
    iget-object v0, v1, Le/p/b/i;->e:Ljava/util/Map;

    .line 138
    iget-object v2, p1, Le/p/b/c;->f:Ljava/lang/String;

    .line 139
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-virtual {v1, p1}, Le/p/b/i;->a(Le/p/b/c;)V

    .line 141
    iget-object v0, p1, Le/p/b/c;->b:Lcom/squareup/picasso/Picasso;

    .line 142
    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->n:Z

    if-eqz v0, :cond_26

    .line 143
    invoke-static {p1}, Le/p/b/f0;->c(Le/p/b/c;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "batched"

    const-string v1, "for completion"

    invoke-static {v5, v0, p1, v1}, Le/p/b/f0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 144
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Le/p/b/a;

    .line 145
    iget-object v0, p0, Le/p/b/i$a;->a:Le/p/b/i;

    .line 146
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v1, p1, Le/p/b/a;->i:Ljava/lang/String;

    .line 148
    iget-object v2, v0, Le/p/b/i;->e:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/p/b/c;

    if-eqz v2, :cond_24

    .line 149
    invoke-virtual {v2, p1}, Le/p/b/c;->d(Le/p/b/a;)V

    .line 150
    invoke-virtual {v2}, Le/p/b/c;->b()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 151
    iget-object v2, v0, Le/p/b/i;->e:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v1, p1, Le/p/b/a;->a:Lcom/squareup/picasso/Picasso;

    .line 153
    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->n:Z

    if-eqz v1, :cond_24

    .line 154
    iget-object v1, p1, Le/p/b/a;->b:Le/p/b/x;

    .line 155
    invoke-virtual {v1}, Le/p/b/x;->b()Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-static {v5, v3, v1, v4}, Le/p/b/f0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_24
    iget-object v1, v0, Le/p/b/i;->h:Ljava/util/Set;

    .line 158
    iget-object v2, p1, Le/p/b/a;->j:Ljava/lang/Object;

    .line 159
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 160
    iget-object v1, v0, Le/p/b/i;->g:Ljava/util/Map;

    invoke-virtual {p1}, Le/p/b/a;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v1, p1, Le/p/b/a;->a:Lcom/squareup/picasso/Picasso;

    .line 162
    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->n:Z

    if-eqz v1, :cond_25

    .line 163
    iget-object v1, p1, Le/p/b/a;->b:Le/p/b/x;

    .line 164
    invoke-virtual {v1}, Le/p/b/x;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "because paused request got canceled"

    invoke-static {v5, v3, v1, v2}, Le/p/b/f0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_25
    iget-object v0, v0, Le/p/b/i;->f:Ljava/util/Map;

    invoke-virtual {p1}, Le/p/b/a;->d()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/p/b/a;

    if-eqz p1, :cond_26

    .line 166
    iget-object v0, p1, Le/p/b/a;->a:Lcom/squareup/picasso/Picasso;

    .line 167
    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->n:Z

    if-eqz v0, :cond_26

    .line 168
    iget-object p1, p1, Le/p/b/a;->b:Le/p/b/x;

    .line 169
    invoke-virtual {p1}, Le/p/b/x;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "from replaying"

    invoke-static {v5, v3, p1, v0}, Le/p/b/f0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 170
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Le/p/b/a;

    .line 171
    iget-object v0, p0, Le/p/b/i$a;->a:Le/p/b/i;

    const/4 v1, 0x1

    .line 172
    invoke-virtual {v0, p1, v1}, Le/p/b/i;->e(Le/p/b/a;Z)V

    :cond_26
    :goto_f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method
