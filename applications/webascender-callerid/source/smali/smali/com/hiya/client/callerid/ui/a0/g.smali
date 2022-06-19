.class public final Lcom/hiya/client/callerid/ui/a0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroidx/core/app/j$e;

.field private b:Landroid/widget/RemoteViews;

.field private c:Ljava/lang/String;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/hiya/client/callerid/ui/incallui/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/hiya/client/callerid/ui/incallui/a;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerIdRemoteViews"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/g;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/a0/g;->e:Lcom/hiya/client/callerid/ui/incallui/a;

    .line 2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p2, v0, :cond_1

    .line 3
    sget p2, Lcom/hiya/client/callerid/ui/s;->x:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "context.getString(R.stri\u2026nnel_incoming_calls_name)"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget v0, Lcom/hiya/client/callerid/ui/s;->w:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026nnel_incoming_calls_desc)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 5
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "INCOMING_CALLS_CHANNEL_ID"

    invoke-direct {v2, v3, p2, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 6
    invoke-virtual {v2, v0}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const-string p2, "notification"

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/app/NotificationManager;

    .line 8
    invoke-virtual {p1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private final a(Lcom/hiya/client/callerid/ui/a0/c$b;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/g;->e:Lcom/hiya/client/callerid/ui/incallui/a;

    invoke-virtual {v0, p1}, Lcom/hiya/client/callerid/ui/incallui/c;->i(Lcom/hiya/client/callerid/ui/a0/c$b;)Lcom/hiya/client/callerid/ui/incallui/c$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/incallui/c$d;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private final b(Lcom/hiya/client/callerid/ui/a0/c$b;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/g;->e:Lcom/hiya/client/callerid/ui/incallui/a;

    invoke-virtual {v0, p1}, Lcom/hiya/client/callerid/ui/incallui/c;->g(Lcom/hiya/client/callerid/ui/a0/c$b;)Lcom/hiya/client/callerid/ui/incallui/c$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/incallui/c$d;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private final c(Lcom/hiya/client/callerid/ui/a0/c$b;)Landroid/app/PendingIntent;
    .locals 3

    .line 1
    sget-object v0, Lcom/hiya/client/callerid/ui/incallui/InCallActivity;->i:Lcom/hiya/client/callerid/ui/incallui/InCallActivity$a;

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/a0/g;->d:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/hiya/client/callerid/ui/incallui/InCallActivity$a;->a(Landroid/content/Context;Lcom/hiya/client/callerid/ui/a0/c$b;)Landroid/content/Intent;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/g;->d:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    .line 3
    invoke-static {v0, v1, p1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string v0, "PendingIntent.getActivit\u2026_UPDATE_CURRENT\n        )"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/g;->d:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/app/m;->d(Landroid/content/Context;)Landroidx/core/app/m;

    move-result-object v0

    const/16 v1, 0xc

    .line 2
    invoke-virtual {v0, v1}, Landroidx/core/app/m;->b(I)V

    return-void
.end method

.method private final h()Landroid/app/Notification;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/g;->a:Landroidx/core/app/j$e;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/hiya/client/callerid/ui/a0/g;->d:Landroid/content/Context;

    invoke-static {v1}, Landroidx/core/app/m;->d(Landroid/content/Context;)Landroidx/core/app/m;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Landroidx/core/app/j$e;->b()Landroid/app/Notification;

    move-result-object v0

    const/16 v2, 0xc

    .line 4
    invoke-virtual {v1, v2, v0}, Landroidx/core/app/m;->f(ILandroid/app/Notification;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final i(Lcom/hiya/client/callerid/ui/a0/c$b;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/g;->a:Landroidx/core/app/j$e;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/core/app/j$e;

    .line 2
    iget-object v1, p0, Lcom/hiya/client/callerid/ui/a0/g;->d:Landroid/content/Context;

    const-string v2, "INCOMING_CALLS_CHANNEL_ID"

    .line 3
    invoke-direct {v0, v1, v2}, Landroidx/core/app/j$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    :goto_0
    iput-object v0, p0, Lcom/hiya/client/callerid/ui/a0/g;->a:Landroidx/core/app/j$e;

    .line 5
    iget-object v1, p0, Lcom/hiya/client/callerid/ui/a0/g;->b:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/widget/RemoteViews;

    .line 6
    iget-object v2, p0, Lcom/hiya/client/callerid/ui/a0/g;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 7
    sget v3, Lcom/hiya/client/callerid/ui/r;->h:I

    .line 8
    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 9
    :goto_1
    iput-object v1, p0, Lcom/hiya/client/callerid/ui/a0/g;->b:Landroid/widget/RemoteViews;

    .line 10
    invoke-direct {p0, p1}, Lcom/hiya/client/callerid/ui/a0/g;->j(Lcom/hiya/client/callerid/ui/a0/c$b;)V

    .line 11
    sget v2, Lcom/hiya/client/callerid/ui/o;->h:I

    invoke-virtual {v0, v2}, Landroidx/core/app/j$e;->z(I)Landroidx/core/app/j$e;

    .line 12
    invoke-direct {p0, p1}, Lcom/hiya/client/callerid/ui/a0/g;->b(Lcom/hiya/client/callerid/ui/a0/c$b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/j$e;->l(Ljava/lang/CharSequence;)Landroidx/core/app/j$e;

    .line 13
    invoke-direct {p0, p1}, Lcom/hiya/client/callerid/ui/a0/g;->a(Lcom/hiya/client/callerid/ui/a0/c$b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/j$e;->k(Ljava/lang/CharSequence;)Landroidx/core/app/j$e;

    const/4 v2, 0x1

    .line 14
    invoke-virtual {v0, v2}, Landroidx/core/app/j$e;->x(I)Landroidx/core/app/j$e;

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroidx/core/app/j$e;->F(J)Landroidx/core/app/j$e;

    .line 16
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->q()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 17
    invoke-virtual {v0, v1}, Landroidx/core/app/j$e;->m(Landroid/widget/RemoteViews;)Landroidx/core/app/j$e;

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Landroidx/core/app/j$e;->m(Landroid/widget/RemoteViews;)Landroidx/core/app/j$e;

    .line 19
    :goto_2
    invoke-virtual {v0, v2}, Landroidx/core/app/j$e;->w(Z)Landroidx/core/app/j$e;

    const/4 v1, -0x1

    .line 20
    invoke-virtual {v0, v1}, Landroidx/core/app/j$e;->n(I)Landroidx/core/app/j$e;

    const-string v1, "call"

    .line 21
    invoke-virtual {v0, v1}, Landroidx/core/app/j$e;->g(Ljava/lang/String;)Landroidx/core/app/j$e;

    .line 22
    invoke-direct {p0, p1}, Lcom/hiya/client/callerid/ui/a0/g;->c(Lcom/hiya/client/callerid/ui/a0/c$b;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroidx/core/app/j$e;->q(Landroid/app/PendingIntent;Z)Landroidx/core/app/j$e;

    .line 23
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/g;->h()Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 24
    iget-object v1, p0, Lcom/hiya/client/callerid/ui/a0/g;->e:Lcom/hiya/client/callerid/ui/incallui/a;

    const/16 v2, 0xc

    invoke-virtual {v1, p1, v2, v0}, Lcom/hiya/client/callerid/ui/incallui/a;->w(Lcom/hiya/client/callerid/ui/a0/c$b;ILandroid/app/Notification;)V

    :cond_3
    return-void
.end method

.method private final j(Lcom/hiya/client/callerid/ui/a0/c$b;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/g;->b:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 2
    sget v1, Lcom/hiya/client/callerid/ui/p;->a:I

    .line 3
    iget-object v2, p0, Lcom/hiya/client/callerid/ui/a0/g;->d:Landroid/content/Context;

    .line 4
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/hiya/client/callerid/ui/a0/g;->d:Landroid/content/Context;

    const-class v5, Lcom/hiya/client/callerid/ui/service/InCallActionsBroadcastReceiver;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "ACTION_ACCEPT"

    .line 5
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->l()Ljava/lang/String;

    move-result-object v4

    const-string v5, "EXTRA_CALL_IDENTIFIER"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x0

    const/high16 v6, 0x8000000

    .line 7
    invoke-static {v2, v4, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 9
    sget v1, Lcom/hiya/client/callerid/ui/p;->E:I

    .line 10
    iget-object v2, p0, Lcom/hiya/client/callerid/ui/a0/g;->d:Landroid/content/Context;

    .line 11
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/hiya/client/callerid/ui/a0/g;->d:Landroid/content/Context;

    const-class v8, Lcom/hiya/client/callerid/ui/service/InCallActionsBroadcastReceiver;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "ACTION_DECLINE"

    .line 12
    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->l()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    invoke-static {v2, v4, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 16
    iget-object v1, p0, Lcom/hiya/client/callerid/ui/a0/g;->e:Lcom/hiya/client/callerid/ui/incallui/a;

    sget-object v2, Lcom/hiya/client/callerid/ui/incallui/c$b;->HEADS_UP:Lcom/hiya/client/callerid/ui/incallui/c$b;

    invoke-virtual {v1, v2}, Lcom/hiya/client/callerid/ui/incallui/c;->l(Lcom/hiya/client/callerid/ui/incallui/c$b;)V

    .line 17
    iget-object v1, p0, Lcom/hiya/client/callerid/ui/a0/g;->e:Lcom/hiya/client/callerid/ui/incallui/a;

    invoke-virtual {v1, v0}, Lcom/hiya/client/callerid/ui/incallui/a;->v(Landroid/widget/RemoteViews;)V

    .line 18
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/g;->e:Lcom/hiya/client/callerid/ui/incallui/a;

    invoke-virtual {v0, p1}, Lcom/hiya/client/callerid/ui/incallui/a;->n(Lcom/hiya/client/callerid/ui/a0/c$b;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/g;->e()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/hiya/client/callerid/ui/a0/g;->b:Landroid/widget/RemoteViews;

    .line 3
    iput-object v0, p0, Lcom/hiya/client/callerid/ui/a0/g;->c:Ljava/lang/String;

    return-void
.end method

.method public final f(Lcom/hiya/client/callerid/ui/a0/c$b;)V
    .locals 2

    const-string v0, "callInfo"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->l()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/a0/g;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/hiya/client/callerid/ui/a0/g;->i(Lcom/hiya/client/callerid/ui/a0/c$b;)V

    return-void
.end method

.method public final g(Lcom/hiya/client/callerid/ui/a0/c$b;)V
    .locals 7

    const-string v0, "callInfo"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/client/callerid/ui/a0/g;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->i()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->c()Lcom/hiya/client/callerid/ui/b0/e;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4
    sget-object v0, Lcom/hiya/client/callerid/ui/e;->f:Lcom/hiya/client/callerid/ui/e;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/e;->e()Lcom/hiya/client/callerid/ui/d;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->n()Lcom/hiya/client/callerid/ui/b0/j;

    move-result-object v3

    .line 6
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->c()Lcom/hiya/client/callerid/ui/b0/e;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->g()Lg/g/b/c/k;

    move-result-object v5

    .line 8
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->h()Lcom/hiya/client/callerid/ui/d$c;

    move-result-object v6

    .line 9
    invoke-interface {v1, v3, v4, v5, v6}, Lcom/hiya/client/callerid/ui/d;->d(Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/client/callerid/ui/b0/e;Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/d$c;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/e;->e()Lcom/hiya/client/callerid/ui/d;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->c()Lcom/hiya/client/callerid/ui/b0/e;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 13
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->h()Lcom/hiya/client/callerid/ui/d$c;

    move-result-object v2

    .line 14
    invoke-interface {v0, v1, v2}, Lcom/hiya/client/callerid/ui/d;->a(Lcom/hiya/client/callerid/ui/b0/e;Lcom/hiya/client/callerid/ui/d$c;)V

    goto :goto_1

    .line 15
    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p1, v0}, Lcom/hiya/client/callerid/ui/a0/c$b;->z(Z)V

    :cond_4
    return-void
.end method
