.class public final Lcom/hiya/stingray/notification/PromoPremiumManagerWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# instance fields
.field public l:Lcom/hiya/stingray/manager/o1;

.field public m:Lcom/hiya/stingray/manager/h4;

.field public n:Lcom/hiya/stingray/manager/v3;

.field private o:Lcom/hiya/stingray/s/d/i;

.field private final p:Landroid/content/Context;

.field private final q:Landroidx/work/WorkerParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p1, p0, Lcom/hiya/stingray/notification/PromoPremiumManagerWorker;->p:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/stingray/notification/PromoPremiumManagerWorker;->q:Landroidx/work/WorkerParameters;

    return-void
.end method


# virtual methods
.method public p()Landroidx/work/ListenableWorker$a;
    .locals 14

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/notification/PromoPremiumManagerWorker;->r()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/notification/PromoPremiumManagerWorker;->o:Lcom/hiya/stingray/s/d/i;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/hiya/stingray/s/d/i;->f(Lcom/hiya/stingray/notification/PromoPremiumManagerWorker;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/notification/PromoPremiumManagerWorker;->q:Landroidx/work/WorkerParameters;

    invoke-virtual {v0}, Landroidx/work/WorkerParameters;->c()Landroidx/work/e;

    move-result-object v0

    const-string v1, "NOTIFY_WORK_DATA_TYPE"

    invoke-virtual {v0, v1}, Landroidx/work/e;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NOTIFY_WORK_PRE_TAG"

    .line 4
    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const-string v4, "NOTIFY_WORK_EXPIRED_TAG"

    const-string v5, "Result.success()"

    const-string v6, "NOTIFY_WORK_POST_TAG"

    if-eqz v2, :cond_1

    invoke-static {v0, v6}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v3

    if-eqz v2, :cond_1

    invoke-static {v0, v4}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid notification type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lr/a/a;->e(Ljava/lang/Throwable;)V

    .line 6
    invoke-static {}, Landroidx/work/ListenableWorker$a;->c()Landroidx/work/ListenableWorker$a;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string v2, "PromoPremiumManagerLog"

    .line 7
    invoke-static {v2}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PromoPremiumManagerWorker got work with type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v7, v9}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    invoke-static {v0, v4}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 9
    iget-object v0, p0, Lcom/hiya/stingray/notification/PromoPremiumManagerWorker;->n:Lcom/hiya/stingray/manager/v3;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v8}, Lcom/hiya/stingray/manager/v3;->e(Z)V

    .line 10
    invoke-static {}, Landroidx/work/ListenableWorker$a;->c()Landroidx/work/ListenableWorker$a;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_2
    const-string v0, "promoPremiumManager"

    .line 11
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v4

    .line 12
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/hiya/stingray/notification/PromoPremiumManagerWorker;->l:Lcom/hiya/stingray/manager/o1;

    if-eqz v2, :cond_5

    .line 13
    iget-object v7, p0, Lcom/hiya/stingray/notification/PromoPremiumManagerWorker;->m:Lcom/hiya/stingray/manager/h4;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/hiya/stingray/manager/h4;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/hiya/stingray/manager/o1;->o(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object v2

    .line 14
    new-instance v7, Lcom/hiya/stingray/s/b;

    invoke-direct {v7}, Lcom/hiya/stingray/s/b;-><init>()V

    invoke-virtual {v2, v7}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v2

    .line 15
    new-instance v7, Lcom/hiya/stingray/notification/PromoPremiumManagerWorker$a;

    invoke-direct {v7, p0}, Lcom/hiya/stingray/notification/PromoPremiumManagerWorker$a;-><init>(Lcom/hiya/stingray/notification/PromoPremiumManagerWorker;)V

    invoke-virtual {v2, v7}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v2

    .line 16
    invoke-virtual {v2}, Li/c/b0/b/v;->blockingFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    goto :goto_0

    :cond_4
    const-string v2, "userAccountManager"

    .line 17
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    throw v4

    :cond_5
    :try_start_1
    const-string v2, "callLogManager"

    .line 18
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    throw v4

    :catch_0
    move-exception v2

    .line 19
    invoke-static {v2}, Lr/a/a;->e(Ljava/lang/Throwable;)V

    .line 20
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 21
    :goto_0
    new-instance v7, Landroid/content/Intent;

    iget-object v9, p0, Lcom/hiya/stingray/notification/PromoPremiumManagerWorker;->p:Landroid/content/Context;

    const-class v10, Lcom/hiya/stingray/ui/SplashActivity;

    invoke-direct {v7, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v9, "android.intent.action.VIEW"

    .line 22
    invoke-virtual {v7, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v9, 0x5a06f253

    const v10, -0x64154e3a

    if-nez v0, :cond_6

    goto :goto_2

    .line 23
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    if-eq v11, v10, :cond_8

    if-eq v11, v9, :cond_7

    goto :goto_2

    .line 24
    :cond_7
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    sget-object v4, Lcom/hiya/stingray/manager/i2$a;->UPSELL_PROMO:Lcom/hiya/stingray/manager/i2$a;

    iget-object v11, p0, Lcom/hiya/stingray/notification/PromoPremiumManagerWorker;->p:Landroid/content/Context;

    invoke-virtual {v4, v11}, Lcom/hiya/stingray/manager/i2$a;->getUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_2

    .line 25
    :cond_8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    if-nez v2, :cond_9

    goto :goto_1

    .line 26
    :cond_9
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_a

    .line 27
    :goto_1
    sget-object v4, Lcom/hiya/stingray/manager/i2$a;->PREMIUM_INFO:Lcom/hiya/stingray/manager/i2$a;

    iget-object v11, p0, Lcom/hiya/stingray/notification/PromoPremiumManagerWorker;->p:Landroid/content/Context;

    invoke-virtual {v4, v11}, Lcom/hiya/stingray/manager/i2$a;->getUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_2

    .line 28
    :cond_a
    sget-object v4, Lcom/hiya/stingray/manager/i2$a;->KEYPAD:Lcom/hiya/stingray/manager/i2$a;

    iget-object v11, p0, Lcom/hiya/stingray/notification/PromoPremiumManagerWorker;->p:Landroid/content/Context;

    invoke-virtual {v4, v11}, Lcom/hiya/stingray/manager/i2$a;->getUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v4

    .line 29
    :cond_b
    :goto_2
    invoke-virtual {v7, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 30
    iget-object v4, p0, Lcom/hiya/stingray/notification/PromoPremiumManagerWorker;->p:Landroid/content/Context;

    invoke-static {v4}, Landroidx/core/app/p;->i(Landroid/content/Context;)Landroidx/core/app/p;

    move-result-object v4

    .line 31
    invoke-virtual {v4, v7}, Landroidx/core/app/p;->d(Landroid/content/Intent;)Landroidx/core/app/p;

    const/high16 v7, 0x10000000

    .line 32
    invoke-virtual {v4, v8, v7}, Landroidx/core/app/p;->j(II)Landroid/app/PendingIntent;

    move-result-object v4

    const-string v7, ""

    if-nez v0, :cond_c

    goto :goto_4

    .line 33
    :cond_c
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    if-eq v11, v10, :cond_e

    if-eq v11, v9, :cond_d

    goto :goto_4

    .line 34
    :cond_d
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    iget-object v11, p0, Lcom/hiya/stingray/notification/PromoPremiumManagerWorker;->p:Landroid/content/Context;

    const v12, 0x7f1102cd

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    .line 35
    :cond_e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    if-nez v2, :cond_f

    goto :goto_3

    .line 36
    :cond_f
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eqz v11, :cond_10

    .line 37
    :goto_3
    iget-object v11, p0, Lcom/hiya/stingray/notification/PromoPremiumManagerWorker;->p:Landroid/content/Context;

    const v12, 0x7f1102cf

    new-array v13, v3, [Ljava/lang/Object;

    aput-object v2, v13, v8

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    .line 38
    :cond_10
    iget-object v11, p0, Lcom/hiya/stingray/notification/PromoPremiumManagerWorker;->p:Landroid/content/Context;

    const v12, 0x7f1102d1

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    :cond_11
    :goto_4
    move-object v11, v7

    :goto_5
    const-string v12, "when (notificationType) \u2026     else -> \"\"\n        }"

    .line 39
    invoke-static {v11, v12}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_12

    goto :goto_7

    .line 40
    :cond_12
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v13

    if-eq v13, v10, :cond_14

    if-eq v13, v9, :cond_13

    goto :goto_7

    .line 41
    :cond_13
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/hiya/stingray/notification/PromoPremiumManagerWorker;->p:Landroid/content/Context;

    const v7, 0x7f1102ce

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    .line 42
    :cond_14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    if-nez v2, :cond_15

    goto :goto_6

    .line 43
    :cond_15
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_16

    .line 44
    :goto_6
    iget-object v2, p0, Lcom/hiya/stingray/notification/PromoPremiumManagerWorker;->p:Landroid/content/Context;

    const v7, 0x7f1102d0

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    .line 45
    :cond_16
    iget-object v2, p0, Lcom/hiya/stingray/notification/PromoPremiumManagerWorker;->p:Landroid/content/Context;

    const v7, 0x7f1102d2

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 46
    :cond_17
    :goto_7
    invoke-static {v7, v12}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_18

    goto :goto_8

    .line 47
    :cond_18
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    if-eq v2, v10, :cond_1a

    if-eq v2, v9, :cond_19

    goto :goto_8

    .line 48
    :cond_19
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/16 v8, 0x1b60

    goto :goto_8

    .line 49
    :cond_1a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/16 v8, 0x1b5f

    .line 50
    :cond_1b
    :goto_8
    new-instance v0, Landroidx/core/app/j$e;

    iget-object v1, p0, Lcom/hiya/stingray/notification/PromoPremiumManagerWorker;->p:Landroid/content/Context;

    const-string v2, "select_expired"

    invoke-direct {v0, v1, v2}, Landroidx/core/app/j$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/hiya/stingray/notification/PromoPremiumManagerWorker;->p:Landroid/content/Context;

    const v2, 0x7f060048

    invoke-static {v1, v2}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/j$e;->i(I)Landroidx/core/app/j$e;

    .line 52
    invoke-virtual {v0, v7}, Landroidx/core/app/j$e;->l(Ljava/lang/CharSequence;)Landroidx/core/app/j$e;

    .line 53
    new-instance v1, Landroidx/core/app/j$c;

    invoke-direct {v1}, Landroidx/core/app/j$c;-><init>()V

    invoke-virtual {v1, v11}, Landroidx/core/app/j$c;->g(Ljava/lang/CharSequence;)Landroidx/core/app/j$c;

    invoke-virtual {v0, v1}, Landroidx/core/app/j$e;->B(Landroidx/core/app/j$f;)Landroidx/core/app/j$e;

    .line 54
    invoke-virtual {v0, v3}, Landroidx/core/app/j$e;->f(Z)Landroidx/core/app/j$e;

    const v1, 0x7f08012b

    .line 55
    invoke-virtual {v0, v1}, Landroidx/core/app/j$e;->z(I)Landroidx/core/app/j$e;

    .line 56
    invoke-virtual {v0, v4}, Landroidx/core/app/j$e;->j(Landroid/app/PendingIntent;)Landroidx/core/app/j$e;

    .line 57
    invoke-virtual {v0}, Landroidx/core/app/j$e;->b()Landroid/app/Notification;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/hiya/stingray/notification/PromoPremiumManagerWorker;->p:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1c

    check-cast v1, Landroid/app/NotificationManager;

    .line 59
    invoke-virtual {v1, v8, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 60
    invoke-static {}, Landroidx/work/ListenableWorker$a;->c()Landroidx/work/ListenableWorker$a;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 61
    :cond_1c
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final q()Lcom/hiya/stingray/manager/v3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/notification/PromoPremiumManagerWorker;->n:Lcom/hiya/stingray/manager/v3;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "promoPremiumManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public r()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/notification/PromoPremiumManagerWorker;->o:Lcom/hiya/stingray/s/d/i;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/notification/PromoPremiumManagerWorker;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/hiya/stingray/s/a;->d(Landroid/content/Context;)Lcom/hiya/stingray/s/d/i;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/notification/PromoPremiumManagerWorker;->o:Lcom/hiya/stingray/s/d/i;

    :cond_0
    return-void
.end method
