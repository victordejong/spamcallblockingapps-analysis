.class public final Lcom/hiya/client/callerid/ui/a0/h;
.super Lcom/hiya/client/callerid/ui/a0/p;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/client/callerid/ui/a0/h$a;
    }
.end annotation


# instance fields
.field private i:Lcom/hiya/client/callerid/ui/a0/h$a;

.field private j:Ljava/util/Timer;

.field private final k:Landroid/os/Handler;

.field private l:Ljava/lang/Long;

.field private m:Landroid/view/WindowManager$LayoutParams;

.field private n:Landroid/graphics/PointF;

.field private o:Landroid/graphics/PointF;

.field private p:Landroid/graphics/PointF;

.field private q:Z

.field private r:Lf/k/a/d;

.field private s:Z

.field private final t:Lcom/hiya/client/callerid/ui/a0/h$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/client/callerid/ui/a0/p;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hiya/client/callerid/ui/a0/h;->k:Landroid/os/Handler;

    .line 3
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/hiya/client/callerid/ui/a0/h;->n:Landroid/graphics/PointF;

    .line 4
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/hiya/client/callerid/ui/a0/h;->o:Landroid/graphics/PointF;

    .line 5
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/hiya/client/callerid/ui/a0/h;->p:Landroid/graphics/PointF;

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 7
    sget v0, Lcom/hiya/client/callerid/ui/s;->x:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026nnel_incoming_calls_name)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget v1, Lcom/hiya/client/callerid/ui/s;->w:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.stri\u2026nnel_incoming_calls_desc)"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x4

    .line 9
    new-instance v3, Landroid/app/NotificationChannel;

    const-string v4, "INCOMING_CALLS_CHANNEL_ID"

    invoke-direct {v3, v4, v0, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 10
    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const-string v0, "notification"

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/app/NotificationManager;

    .line 12
    invoke-virtual {p1, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_1
    :goto_0
    new-instance p1, Lcom/hiya/client/callerid/ui/a0/h$b;

    const-string v0, "xx"

    invoke-direct {p1, p0, v0}, Lcom/hiya/client/callerid/ui/a0/h$b;-><init>(Lcom/hiya/client/callerid/ui/a0/h;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/h;->t:Lcom/hiya/client/callerid/ui/a0/h$b;

    return-void
.end method

.method public static final synthetic l(Lcom/hiya/client/callerid/ui/a0/h;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/ui/a0/h;->m:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method public static final synthetic m(Lcom/hiya/client/callerid/ui/a0/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/h;->w()V

    return-void
.end method

.method private final n()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/p;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private final p()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/p;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/m;->d(Landroid/content/Context;)Landroidx/core/app/m;

    move-result-object v0

    const/16 v1, 0xd

    .line 2
    invoke-virtual {v0, v1}, Landroidx/core/app/m;->b(I)V

    return-void
.end method

.method private final q()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/hiya/client/callerid/ui/a0/p;->f()V

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/h;->j:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/hiya/client/callerid/ui/a0/h;->q:Z

    .line 4
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/h;->r:Lf/k/a/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lf/k/a/b;->b()V

    :cond_1
    return-void
.end method

.method private final t(Lcom/hiya/client/callerid/ui/a0/c$b;)V
    .locals 7

    .line 1
    new-instance v0, Landroidx/core/app/j$e;

    .line 2
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/p;->b()Landroid/content/Context;

    move-result-object v1

    const-string v2, "INCOMING_CALLS_CHANNEL_ID"

    .line 3
    invoke-direct {v0, v1, v2}, Landroidx/core/app/j$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    sget-object v1, Lcom/hiya/client/callerid/ui/incallui/InCallActivity;->i:Lcom/hiya/client/callerid/ui/incallui/InCallActivity$a;

    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/p;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/hiya/client/callerid/ui/incallui/InCallActivity$a;->a(Landroid/content/Context;Lcom/hiya/client/callerid/ui/a0/c$b;)Landroid/content/Intent;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/p;->b()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    .line 6
    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 7
    sget v2, Lcom/hiya/client/callerid/ui/o;->h:I

    invoke-virtual {v0, v2}, Landroidx/core/app/j$e;->z(I)Landroidx/core/app/j$e;

    .line 8
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/p;->b()Landroid/content/Context;

    move-result-object v2

    .line 9
    sget v4, Lcom/hiya/client/callerid/ui/s;->o:I

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    .line 10
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->o()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hiya/client/callerid/ui/e0/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v3

    .line 11
    invoke-virtual {v2, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Landroidx/core/app/j$e;->l(Ljava/lang/CharSequence;)Landroidx/core/app/j$e;

    .line 13
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/p;->b()Landroid/content/Context;

    move-result-object p1

    sget v2, Lcom/hiya/client/callerid/ui/s;->n:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/app/j$e;->k(Ljava/lang/CharSequence;)Landroidx/core/app/j$e;

    .line 14
    invoke-virtual {v0, v3}, Landroidx/core/app/j$e;->x(I)Landroidx/core/app/j$e;

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/core/app/j$e;->F(J)Landroidx/core/app/j$e;

    .line 16
    invoke-virtual {v0, v5}, Landroidx/core/app/j$e;->w(Z)Landroidx/core/app/j$e;

    .line 17
    invoke-virtual {v0}, Landroidx/core/app/j$e;->u()Landroidx/core/app/j$e;

    .line 18
    invoke-virtual {v0, v1}, Landroidx/core/app/j$e;->j(Landroid/app/PendingIntent;)Landroidx/core/app/j$e;

    const-string p1, "call"

    .line 19
    invoke-virtual {v0, p1}, Landroidx/core/app/j$e;->g(Ljava/lang/String;)Landroidx/core/app/j$e;

    .line 20
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/p;->b()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/app/m;->d(Landroid/content/Context;)Landroidx/core/app/m;

    move-result-object p1

    .line 21
    invoke-virtual {v0}, Landroidx/core/app/j$e;->b()Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Landroidx/core/app/m;->f(ILandroid/app/Notification;)V

    return-void
.end method

.method private final u()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/hiya/client/callerid/ui/a0/p;->j()V

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/h;->j:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 4
    new-instance v2, Lcom/hiya/client/callerid/ui/a0/h$d;

    invoke-direct {v2, p0}, Lcom/hiya/client/callerid/ui/a0/h$d;-><init>(Lcom/hiya/client/callerid/ui/a0/h;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 5
    iput-object v0, p0, Lcom/hiya/client/callerid/ui/a0/h;->j:Ljava/util/Timer;

    return-void
.end method

.method private final w()V
    .locals 10

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/hiya/client/callerid/ui/a0/h;->l:Ljava/lang/Long;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_0
    sub-long/2addr v0, v2

    const v2, 0xea60

    int-to-long v2, v2

    .line 2
    div-long v6, v0, v2

    mul-long v2, v2, v6

    sub-long/2addr v0, v2

    const/16 v2, 0x3e8

    int-to-long v2, v2

    .line 3
    div-long v8, v0, v2

    .line 4
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/h;->k:Landroid/os/Handler;

    new-instance v1, Lcom/hiya/client/callerid/ui/a0/h$e;

    move-object v4, v1

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/hiya/client/callerid/ui/a0/h$e;-><init>(Lcom/hiya/client/callerid/ui/a0/h;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected c()I
    .locals 1

    .line 1
    sget v0, Lcom/hiya/client/callerid/ui/r;->i:I

    return v0
.end method

.method public f()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/h;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/h;->q()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/hiya/client/callerid/ui/a0/h;->s:Z

    .line 4
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/h;->p()V

    :goto_0
    return-void
.end method

.method protected g(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3

    const-string v0, "layoutParams"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x33

    .line 1
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v0, 0x0

    .line 2
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "Resources.getSystem()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    invoke-static {v0}, Lkotlin/x/a;->b(F)I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 4
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/p;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/hiya/client/callerid/ui/n;->i:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 5
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/p;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/hiya/client/callerid/ui/n;->h:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 6
    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/h;->m:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method protected h()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/p;->e()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/hiya/client/callerid/ui/a0/h$c;

    invoke-direct {v1, p0}, Lcom/hiya/client/callerid/ui/a0/h$c;-><init>(Lcom/hiya/client/callerid/ui/a0/h;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/p;->e()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    return-void
.end method

.method public final o()Lcom/hiya/client/callerid/ui/a0/h$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/h;->i:Lcom/hiya/client/callerid/ui/a0/h$a;

    return-object v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_6

    .line 3
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/h;->o:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 4
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/h;->o:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 5
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/h;->p:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/p;->e()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 6
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/h;->p:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/p;->e()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    sub-float/2addr v2, p2

    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 7
    iget-object p2, p0, Lcom/hiya/client/callerid/ui/a0/h;->n:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/h;->m:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_3

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v2, v2

    iput v2, p2, Landroid/graphics/PointF;->x:F

    if-eqz v0, :cond_2

    .line 8
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float p1, p1

    iput p1, p2, Landroid/graphics/PointF;->y:F

    return v1

    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw p1

    .line 9
    :cond_3
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw p1

    .line 10
    :cond_4
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw p1

    .line 11
    :cond_5
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw p1

    :cond_6
    :goto_1
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v0, :cond_7

    goto :goto_3

    .line 12
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_e

    .line 13
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/h;->o:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x42200000    # 40.0f

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_8

    .line 14
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/h;->o:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_9

    :cond_8
    const/4 v3, 0x1

    :cond_9
    iput-boolean v3, p0, Lcom/hiya/client/callerid/ui/a0/h;->q:Z

    if-eqz v3, :cond_d

    .line 15
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v2, p0, Lcom/hiya/client/callerid/ui/a0/h;->p:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v2

    .line 16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget-object v2, p0, Lcom/hiya/client/callerid/ui/a0/h;->p:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr p2, v2

    .line 17
    iget-object v2, p0, Lcom/hiya/client/callerid/ui/a0/h;->m:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_c

    iget-object v3, p0, Lcom/hiya/client/callerid/ui/a0/h;->n:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v0

    float-to-int v0, v4

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eqz v2, :cond_b

    .line 18
    iget v0, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, p2

    float-to-int p2, v0

    iput p2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eqz v2, :cond_a

    .line 19
    invoke-virtual {p0, v2}, Lcom/hiya/client/callerid/ui/a0/p;->k(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_2

    :cond_a
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw p1

    .line 20
    :cond_b
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw p1

    .line 21
    :cond_c
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw p1

    :cond_d
    :goto_2
    return v1

    :cond_e
    :goto_3
    if-nez v0, :cond_f

    goto :goto_6

    .line 22
    :cond_f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_13

    .line 23
    iget-boolean p1, p0, Lcom/hiya/client/callerid/ui/a0/h;->q:Z

    if-eqz p1, :cond_11

    .line 24
    iput-boolean v3, p0, Lcom/hiya/client/callerid/ui/a0/h;->q:Z

    .line 25
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/p;->d()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_10

    const/4 p1, 0x0

    goto :goto_4

    :cond_10
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/p;->d()I

    move-result p1

    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/p;->b()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 26
    sget v0, Lcom/hiya/client/callerid/ui/n;->i:I

    .line 27
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    .line 28
    :goto_4
    new-instance p2, Lf/k/a/d;

    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/p;->e()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/hiya/client/callerid/ui/a0/h;->t:Lcom/hiya/client/callerid/ui/a0/h$b;

    invoke-direct {p2, v0, v2, p1}, Lf/k/a/d;-><init>(Ljava/lang/Object;Lf/k/a/c;F)V

    .line 29
    invoke-virtual {p2}, Lf/k/a/d;->h()V

    .line 30
    iput-object p2, p0, Lcom/hiya/client/callerid/ui/a0/h;->r:Lf/k/a/d;

    goto :goto_5

    .line 31
    :cond_11
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/p;->e()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_12
    :goto_5
    return v1

    :cond_13
    :goto_6
    return v3
.end method

.method public final r(Lcom/hiya/client/callerid/ui/a0/h$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/h;->i:Lcom/hiya/client/callerid/ui/a0/h$a;

    return-void
.end method

.method public final s(Lcom/hiya/client/callerid/ui/a0/c$b;)V
    .locals 1

    const-string v0, "callInfo"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/h;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/h;->u()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/hiya/client/callerid/ui/a0/h;->s:Z

    .line 4
    invoke-direct {p0, p1}, Lcom/hiya/client/callerid/ui/a0/h;->t(Lcom/hiya/client/callerid/ui/a0/c$b;)V

    :goto_0
    return-void
.end method

.method public final v(Lcom/hiya/client/callerid/ui/a0/c$b;)V
    .locals 5

    const-string v0, "callInfo"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->e()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/client/callerid/ui/a0/h;->l:Ljava/lang/Long;

    .line 2
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/h;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lcom/hiya/client/callerid/ui/a0/h;->s:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lcom/hiya/client/callerid/ui/a0/h;->t(Lcom/hiya/client/callerid/ui/a0/c$b;)V

    :cond_1
    return-void
.end method
