.class public final Lcom/hiya/stingray/manager/v3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:J


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/hiya/stingray/q/d/e;

.field private final c:Lcom/hiya/stingray/util/b0;

.field private final d:Lcom/hiya/stingray/util/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    sput-wide v0, Lcom/hiya/stingray/manager/v3;->e:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/q/d/e;Lcom/hiya/stingray/util/b0;Lcom/hiya/stingray/util/a0;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encryptedUserSharedPreferences"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sticky"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/v3;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/stingray/manager/v3;->b:Lcom/hiya/stingray/q/d/e;

    iput-object p3, p0, Lcom/hiya/stingray/manager/v3;->c:Lcom/hiya/stingray/util/b0;

    iput-object p4, p0, Lcom/hiya/stingray/manager/v3;->d:Lcom/hiya/stingray/util/a0;

    return-void
.end method

.method private final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/v3;->a:Landroid/content/Context;

    invoke-static {v0}, Landroidx/work/w;->i(Landroid/content/Context;)Landroidx/work/w;

    move-result-object v0

    const-string v1, "NOTIFY_WORK_PRE_TAG"

    invoke-virtual {v0, v1}, Landroidx/work/w;->c(Ljava/lang/String;)Landroidx/work/p;

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/v3;->a:Landroid/content/Context;

    invoke-static {v0}, Landroidx/work/w;->i(Landroid/content/Context;)Landroidx/work/w;

    move-result-object v0

    const-string v1, "NOTIFY_WORK_POST_TAG"

    invoke-virtual {v0, v1}, Landroidx/work/w;->c(Ljava/lang/String;)Landroidx/work/p;

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/manager/v3;->a:Landroid/content/Context;

    invoke-static {v0}, Landroidx/work/w;->i(Landroid/content/Context;)Landroidx/work/w;

    move-result-object v0

    const-string v1, "NOTIFY_WORK_EXPIRED_TAG"

    invoke-virtual {v0, v1}, Landroidx/work/w;->c(Ljava/lang/String;)Landroidx/work/p;

    return-void
.end method

.method public static synthetic f(Lcom/hiya/stingray/manager/v3;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/v3;->e(Z)V

    return-void
.end method

.method private final h()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/v3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/hiya/stingray/util/r;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/v3;->j()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/v3;->j()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v2

    :goto_0
    add-long/2addr v0, v2

    return-wide v0

    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1
.end method

.method private final i()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/v3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/hiya/stingray/util/r;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/v3;->j()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/v3;->j()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v2

    :goto_0
    sub-long/2addr v0, v2

    return-wide v0

    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1
.end method

.method private final m(Ljava/lang/String;Landroidx/work/e;J)V
    .locals 5

    const-string v0, "PromoPremiumManagerLog"

    .line 1
    invoke-static {v0}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduling notification "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with delay of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " min"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/v3;->a:Landroid/content/Context;

    invoke-static {v0}, Landroidx/work/w;->i(Landroid/content/Context;)Landroidx/work/w;

    move-result-object v0

    .line 3
    sget-object v1, Landroidx/work/g;->REPLACE:Landroidx/work/g;

    .line 4
    new-instance v3, Landroidx/work/o$a;

    const-class v4, Lcom/hiya/stingray/notification/PromoPremiumManagerWorker;

    invoke-direct {v3, v4}, Landroidx/work/o$a;-><init>(Ljava/lang/Class;)V

    .line 5
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p3, p4, v4}, Landroidx/work/x$a;->f(JLjava/util/concurrent/TimeUnit;)Landroidx/work/x$a;

    move-result-object p3

    check-cast p3, Landroidx/work/o$a;

    .line 6
    invoke-virtual {p3, p2}, Landroidx/work/x$a;->g(Landroidx/work/e;)Landroidx/work/x$a;

    move-result-object p2

    check-cast p2, Landroidx/work/o$a;

    .line 7
    new-instance p3, Landroidx/work/c$a;

    invoke-direct {p3}, Landroidx/work/c$a;-><init>()V

    .line 8
    invoke-virtual {p3, v2}, Landroidx/work/c$a;->c(Z)Landroidx/work/c$a;

    .line 9
    invoke-virtual {p3, v2}, Landroidx/work/c$a;->f(Z)Landroidx/work/c$a;

    .line 10
    invoke-virtual {p3, v2}, Landroidx/work/c$a;->d(Z)Landroidx/work/c$a;

    .line 11
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt p4, v3, :cond_0

    .line 12
    invoke-virtual {p3, v2}, Landroidx/work/c$a;->e(Z)Landroidx/work/c$a;

    .line 13
    :cond_0
    invoke-virtual {p3}, Landroidx/work/c$a;->a()Landroidx/work/c;

    move-result-object p3

    .line 14
    invoke-virtual {p2, p3}, Landroidx/work/x$a;->e(Landroidx/work/c;)Landroidx/work/x$a;

    move-result-object p2

    check-cast p2, Landroidx/work/o$a;

    .line 15
    invoke-virtual {p2, p1}, Landroidx/work/x$a;->a(Ljava/lang/String;)Landroidx/work/x$a;

    move-result-object p2

    check-cast p2, Landroidx/work/o$a;

    .line 16
    invoke-virtual {p2}, Landroidx/work/x$a;->b()Landroidx/work/x;

    move-result-object p2

    check-cast p2, Landroidx/work/o;

    .line 17
    invoke-virtual {v0, p1, v1, p2}, Landroidx/work/w;->a(Ljava/lang/String;Landroidx/work/g;Landroidx/work/o;)Landroidx/work/u;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroidx/work/u;->a()Landroidx/work/p;

    return-void
.end method

.method private final n()V
    .locals 5

    .line 1
    new-instance v0, Landroidx/work/e$a;

    invoke-direct {v0}, Landroidx/work/e$a;-><init>()V

    const-string v1, "NOTIFY_WORK_DATA_TYPE"

    const-string v2, "NOTIFY_WORK_PRE_TAG"

    invoke-virtual {v0, v1, v2}, Landroidx/work/e$a;->e(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/e$a;

    invoke-virtual {v0}, Landroidx/work/e$a;->a()Landroidx/work/e;

    move-result-object v0

    const-string v3, "Data.Builder().putString\u2026IFY_WORK_PRE_TAG).build()"

    invoke-static {v0, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/hiya/stingray/manager/v3;->i()J

    move-result-wide v3

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/hiya/stingray/manager/v3;->m(Ljava/lang/String;Landroidx/work/e;J)V

    .line 2
    new-instance v0, Landroidx/work/e$a;

    invoke-direct {v0}, Landroidx/work/e$a;-><init>()V

    const-string v2, "NOTIFY_WORK_POST_TAG"

    invoke-virtual {v0, v1, v2}, Landroidx/work/e$a;->e(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/e$a;

    invoke-virtual {v0}, Landroidx/work/e$a;->a()Landroidx/work/e;

    move-result-object v0

    const-string v3, "Data.Builder().putString\u2026FY_WORK_POST_TAG).build()"

    invoke-static {v0, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/hiya/stingray/manager/v3;->h()J

    move-result-wide v3

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/hiya/stingray/manager/v3;->m(Ljava/lang/String;Landroidx/work/e;J)V

    .line 3
    new-instance v0, Landroidx/work/e$a;

    invoke-direct {v0}, Landroidx/work/e$a;-><init>()V

    const-string v2, "NOTIFY_WORK_EXPIRED_TAG"

    invoke-virtual {v0, v1, v2}, Landroidx/work/e$a;->e(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/e$a;

    invoke-virtual {v0}, Landroidx/work/e$a;->a()Landroidx/work/e;

    move-result-object v0

    const-string v1, "Data.Builder().putString\u2026WORK_EXPIRED_TAG).build()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/v3;->j()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/hiya/stingray/manager/v3;->m(Ljava/lang/String;Landroidx/work/e;J)V

    return-void

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 v0, 0x0

    throw v0
.end method

.method private final o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/v3;->d:Lcom/hiya/stingray/util/a0;

    new-instance v1, Lcom/hiya/stingray/manager/u3$h;

    invoke-direct {v1}, Lcom/hiya/stingray/manager/u3$h;-><init>()V

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/a0;->c(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/v3;->d:Lcom/hiya/stingray/util/a0;

    new-instance v1, Lcom/hiya/stingray/manager/g1$b;

    invoke-direct {v1}, Lcom/hiya/stingray/manager/g1$b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/a0;->c(Ljava/lang/Object;)V

    return-void
.end method

.method private final p(Ljava/lang/Long;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/v3;->b:Lcom/hiya/stingray/q/d/e;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/d/e;->j(Ljava/lang/Long;)V

    return-void
.end method

.method private final q(Ljava/lang/Long;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/v3;->b:Lcom/hiya/stingray/q/d/e;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/d/e;->k(Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hiya/stingray/manager/v3;->q(Ljava/lang/Long;)V

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hiya/stingray/manager/v3;->p(Ljava/lang/Long;)V

    .line 3
    invoke-direct {p0}, Lcom/hiya/stingray/manager/v3;->o()V

    .line 4
    invoke-direct {p0}, Lcom/hiya/stingray/manager/v3;->n()V

    return-void
.end method

.method public final c(Landroid/content/Intent;)V
    .locals 8

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "promo_premium_token"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "promo_premium_duration"

    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_3

    goto :goto_2

    .line 4
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_2

    :cond_4
    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_3

    .line 5
    :cond_5
    sget-wide v2, Lcom/hiya/stingray/manager/v3;->e:J

    :goto_3
    if-nez v0, :cond_6

    return-void

    :cond_6
    const/16 p1, 0x10

    const/4 v4, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v0, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v5, v6}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "null cannot be cast to non-null type kotlin.CharSequence"

    if-eqz v5, :cond_9

    :try_start_1
    invoke-static {v5}, Lkotlin/c0/m;->N0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "7lQF5EG4xY3Ah8d7"

    invoke-static {v5, v7}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_8

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_7

    invoke-static {p1}, Lkotlin/c0/m;->N0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "grZTUY59r6oEaY01"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_8

    const-string p1, "PromoPremiumManagerLog"

    .line 8
    invoke-static {p1}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detected promo premium ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " minutes)."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v4}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0, v2, v3}, Lcom/hiya/stingray/manager/v3;->a(J)V

    .line 10
    iget-object p1, p0, Lcom/hiya/stingray/manager/v3;->c:Lcom/hiya/stingray/util/b0;

    new-instance v0, Lcom/hiya/stingray/manager/i2$b;

    sget-object v2, Lcom/hiya/stingray/manager/i2$a;->PREMIUM_INFO:Lcom/hiya/stingray/manager/i2$a;

    const/4 v3, 0x2

    invoke-direct {v0, v2, v1, v3, v1}, Lcom/hiya/stingray/manager/i2$b;-><init>(Lcom/hiya/stingray/manager/i2$a;Ljava/util/Map;ILkotlin/w/c/g;)V

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/util/b0;->c(Ljava/lang/Object;)V

    goto :goto_4

    .line 11
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid promo premium token"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 14
    invoke-static {p1}, Lr/a/a;->e(Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method public final d()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    invoke-static {p0, v0, v1, v2}, Lcom/hiya/stingray/manager/v3;->f(Lcom/hiya/stingray/manager/v3;ZILjava/lang/Object;)V

    .line 2
    invoke-direct {p0, v2}, Lcom/hiya/stingray/manager/v3;->p(Ljava/lang/Long;)V

    .line 3
    invoke-direct {p0, v2}, Lcom/hiya/stingray/manager/v3;->q(Ljava/lang/Long;)V

    return-void
.end method

.method public final e(Z)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hiya/stingray/manager/v3;->p(Ljava/lang/Long;)V

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/manager/v3;->o()V

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/hiya/stingray/manager/v3;->b()V

    :cond_0
    return-void
.end method

.method public final g()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/v3;->k()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/v3;->j()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/v3;->k()Ljava/lang/Long;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v2, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-ltz v0, :cond_2

    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/v3;->j()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_3

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v4

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :cond_3
    return v1

    .line 4
    :cond_4
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v4

    :cond_5
    :goto_1
    return v1
.end method

.method public final j()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/v3;->b:Lcom/hiya/stingray/q/d/e;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/e;->c()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/v3;->b:Lcom/hiya/stingray/q/d/e;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/e;->d()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final l()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/v3;->k()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/v3;->j()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/v3;->k()Ljava/lang/Long;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v2, v5

    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/v3;->j()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v4

    .line 4
    :cond_3
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v4

    :cond_4
    :goto_0
    return v1
.end method
