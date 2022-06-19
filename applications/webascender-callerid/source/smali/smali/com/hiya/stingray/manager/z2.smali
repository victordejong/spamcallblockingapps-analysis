.class public final Lcom/hiya/stingray/manager/z2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Li/c/b0/c/a;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/hiya/stingray/util/a0;

.field private final d:Lcom/hiya/stingray/manager/u3;

.field private final e:Lcom/hiya/stingray/manager/x3;

.field private final f:Lcom/hiya/stingray/manager/s2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/util/a0;Lcom/hiya/stingray/manager/u3;Lcom/hiya/stingray/manager/x3;Lcom/hiya/stingray/manager/s2;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumManager"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteConfigManager"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "experimentManager"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/z2;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/stingray/manager/z2;->c:Lcom/hiya/stingray/util/a0;

    iput-object p3, p0, Lcom/hiya/stingray/manager/z2;->d:Lcom/hiya/stingray/manager/u3;

    iput-object p4, p0, Lcom/hiya/stingray/manager/z2;->e:Lcom/hiya/stingray/manager/x3;

    iput-object p5, p0, Lcom/hiya/stingray/manager/z2;->f:Lcom/hiya/stingray/manager/s2;

    .line 2
    new-instance p1, Li/c/b0/c/a;

    invoke-direct {p1}, Li/c/b0/c/a;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/z2;->a:Li/c/b0/c/a;

    .line 3
    const-class p3, Lcom/hiya/stingray/manager/u3$g;

    invoke-virtual {p2, p3}, Lcom/hiya/stingray/util/a0;->b(Ljava/lang/Class;)Li/c/b0/b/v;

    move-result-object p2

    .line 4
    invoke-static {}, Lcom/hiya/stingray/s/c;->c()Li/c/b0/b/b0;

    move-result-object p3

    invoke-virtual {p2, p3}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p2

    .line 5
    new-instance p3, Lcom/hiya/stingray/manager/z2$a;

    invoke-direct {p3, p0}, Lcom/hiya/stingray/manager/z2$a;-><init>(Lcom/hiya/stingray/manager/z2;)V

    .line 6
    sget-object p4, Lcom/hiya/stingray/manager/z2$b;->f:Lcom/hiya/stingray/manager/z2$b;

    .line 7
    invoke-virtual {p2, p3, p4}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p2

    .line 8
    invoke-virtual {p1, p2}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public static final synthetic a(Lcom/hiya/stingray/manager/z2;)Lcom/hiya/stingray/manager/s2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/z2;->f:Lcom/hiya/stingray/manager/s2;

    return-object p0
.end method

.method public static final synthetic b(Lcom/hiya/stingray/manager/z2;)Lcom/hiya/stingray/manager/u3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/z2;->d:Lcom/hiya/stingray/manager/u3;

    return-object p0
.end method

.method public static final synthetic c(Lcom/hiya/stingray/manager/z2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/manager/z2;->e()V

    return-void
.end method

.method private final d()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/z2;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/hiya/stingray/util/r;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private final e()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/z2;->b:Landroid/content/Context;

    invoke-static {v0}, Landroidx/work/w;->i(Landroid/content/Context;)Landroidx/work/w;

    move-result-object v0

    .line 2
    sget-object v1, Landroidx/work/g;->KEEP:Landroidx/work/g;

    .line 3
    new-instance v2, Landroidx/work/o$a;

    const-class v3, Lcom/hiya/stingray/manager/NewsletterManagerJobWorker;

    invoke-direct {v2, v3}, Landroidx/work/o$a;-><init>(Ljava/lang/Class;)V

    const-string v3, "NEWSLETTER_JOB_TAG"

    .line 4
    invoke-virtual {v2, v3}, Landroidx/work/x$a;->a(Ljava/lang/String;)Landroidx/work/x$a;

    move-result-object v2

    check-cast v2, Landroidx/work/o$a;

    .line 5
    invoke-direct {p0}, Lcom/hiya/stingray/manager/z2;->d()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v6}, Landroidx/work/x$a;->f(JLjava/util/concurrent/TimeUnit;)Landroidx/work/x$a;

    move-result-object v2

    check-cast v2, Landroidx/work/o$a;

    .line 6
    invoke-virtual {v2}, Landroidx/work/x$a;->b()Landroidx/work/x;

    move-result-object v2

    check-cast v2, Landroidx/work/o;

    .line 7
    invoke-virtual {v0, v3, v1, v2}, Landroidx/work/w;->g(Ljava/lang/String;Landroidx/work/g;Landroidx/work/o;)Landroidx/work/p;

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/hiya/stingray/manager/z2;->b:Landroid/content/Context;

    const-class v2, Lcom/hiya/stingray/ui/SplashActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.VIEW"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    sget-object v1, Lcom/hiya/stingray/manager/i2$a;->NEWSLETTER:Lcom/hiya/stingray/manager/i2$a;

    iget-object v2, p0, Lcom/hiya/stingray/manager/z2;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/manager/i2$a;->getUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/hiya/stingray/manager/z2;->b:Landroid/content/Context;

    invoke-static {v1}, Landroidx/core/app/p;->i(Landroid/content/Context;)Landroidx/core/app/p;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v0}, Landroidx/core/app/p;->d(Landroid/content/Intent;)Landroidx/core/app/p;

    const/4 v0, 0x0

    const/high16 v2, 0x10000000

    .line 6
    invoke-virtual {v1, v0, v2}, Landroidx/core/app/p;->j(II)Landroid/app/PendingIntent;

    move-result-object v0

    .line 7
    new-instance v1, Landroidx/core/app/j$e;

    iget-object v2, p0, Lcom/hiya/stingray/manager/z2;->b:Landroid/content/Context;

    const-string v3, "select_expired"

    invoke-direct {v1, v2, v3}, Landroidx/core/app/j$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/hiya/stingray/manager/z2;->b:Landroid/content/Context;

    const v3, 0x7f060048

    invoke-static {v2, v3}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/core/app/j$e;->i(I)Landroidx/core/app/j$e;

    .line 9
    iget-object v2, p0, Lcom/hiya/stingray/manager/z2;->e:Lcom/hiya/stingray/manager/x3;

    const-string v3, "newsletter_push_title"

    invoke-virtual {v2, v3}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/j$e;->l(Ljava/lang/CharSequence;)Landroidx/core/app/j$e;

    .line 10
    new-instance v2, Landroidx/core/app/j$c;

    invoke-direct {v2}, Landroidx/core/app/j$c;-><init>()V

    iget-object v3, p0, Lcom/hiya/stingray/manager/z2;->e:Lcom/hiya/stingray/manager/x3;

    const-string v4, "newsletter_push_body"

    invoke-virtual {v3, v4}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/j$c;->g(Ljava/lang/CharSequence;)Landroidx/core/app/j$c;

    invoke-virtual {v1, v2}, Landroidx/core/app/j$e;->B(Landroidx/core/app/j$f;)Landroidx/core/app/j$e;

    const/4 v2, 0x1

    .line 11
    invoke-virtual {v1, v2}, Landroidx/core/app/j$e;->f(Z)Landroidx/core/app/j$e;

    const v2, 0x7f08012b

    .line 12
    invoke-virtual {v1, v2}, Landroidx/core/app/j$e;->z(I)Landroidx/core/app/j$e;

    .line 13
    invoke-virtual {v1, v0}, Landroidx/core/app/j$e;->j(Landroid/app/PendingIntent;)Landroidx/core/app/j$e;

    .line 14
    invoke-virtual {v1}, Landroidx/core/app/j$e;->b()Landroid/app/Notification;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/hiya/stingray/manager/z2;->b:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/app/NotificationManager;

    const/16 v2, 0x1b61

    .line 16
    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    .line 17
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
