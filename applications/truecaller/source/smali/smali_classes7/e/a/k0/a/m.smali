.class public final Le/a/k0/a/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k0/a/l;


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Le/a/b0/a/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/b0/a/b/b<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/a/p5/g;

.field public final e:Le/a/u3/g;

.field public final f:Landroid/content/Context;

.field public final g:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/b0/a/b/b;Le/a/p5/g;Le/a/u3/g;Landroid/content/Context;Ls1/w/f;)V
    .locals 1
    .param p5    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "CPU"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/b0/a/b/b<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;",
            "Le/a/p5/g;",
            "Le/a/u3/g;",
            "Landroid/content/Context;",
            "Ls1/w/f;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "avatarXConfigProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cpuContext"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k0/a/m;->c:Le/a/b0/a/b/b;

    iput-object p2, p0, Le/a/k0/a/m;->d:Le/a/p5/g;

    iput-object p3, p0, Le/a/k0/a/m;->e:Le/a/u3/g;

    iput-object p4, p0, Le/a/k0/a/m;->f:Landroid/content/Context;

    iput-object p5, p0, Le/a/k0/a/m;->g:Ls1/w/f;

    .line 2
    new-instance p1, Le/a/k0/a/m$d;

    invoke-direct {p1, p0}, Le/a/k0/a/m$d;-><init>(Le/a/k0/a/m;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/k0/a/m;->a:Ls1/g;

    .line 3
    new-instance p1, Le/a/k0/a/m$b;

    invoke-direct {p1, p0}, Le/a/k0/a/m$b;-><init>(Le/a/k0/a/m;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/k0/a/m;->b:Ls1/g;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/k0/a/m;->d()Le/a/h4/n;

    move-result-object v0

    sget v1, Lcom/truecaller/callrecording/R$id;->call_recorded_notification:I

    invoke-interface {v0, v1}, Le/a/h4/n;->f(I)V

    return-void
.end method

.method public b(Lcom/truecaller/data/entity/Contact;Landroid/content/Intent;Landroid/content/Intent;Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Le/a/k0/a/m$c;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Le/a/k0/a/m$c;

    iget v1, v0, Le/a/k0/a/m$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k0/a/m$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k0/a/m$c;

    invoke-direct {v0, p0, p4}, Le/a/k0/a/m$c;-><init>(Le/a/k0/a/m;Ls1/w/d;)V

    :goto_0
    move-object v7, v0

    iget-object p4, v7, Le/a/k0/a/m$c;->d:Ljava/lang/Object;

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v7, Le/a/k0/a/m$c;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v7, Le/a/k0/a/m$c;->g:Ljava/lang/Object;

    check-cast p1, Le/a/k0/a/m;

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

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
    iget-object p4, p0, Le/a/k0/a/m;->c:Le/a/b0/a/b/b;

    invoke-interface {p4, p1}, Le/a/b0/a/b/b;->a(Ljava/lang/Object;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object p4

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object v3, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->x()Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    .line 6
    :goto_1
    invoke-virtual {p0}, Le/a/k0/a/m;->d()Le/a/h4/n;

    move-result-object p1

    const-string v1, "recorded_calls"

    invoke-interface {p1, v1}, Le/a/h4/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7
    iput-object p0, v7, Le/a/k0/a/m$c;->g:Ljava/lang/Object;

    iput v2, v7, Le/a/k0/a/m$c;->e:I

    move-object v1, p0

    move-object v2, p4

    move-object v5, p3

    move-object v6, p2

    .line 8
    invoke-virtual/range {v1 .. v7}, Le/a/k0/a/m;->c(Lcom/truecaller/common/ui/avatar/AvatarXConfig;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/content/Intent;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v0, :cond_4

    return-object v0

    :cond_4
    move-object p1, p0

    .line 9
    :goto_2
    check-cast p4, Landroid/app/Notification;

    .line 10
    invoke-virtual {p1}, Le/a/k0/a/m;->d()Le/a/h4/n;

    move-result-object p1

    sget p2, Lcom/truecaller/callrecording/R$id;->call_recorded_notification:I

    invoke-interface {p1, p2, p4}, Le/a/h4/n;->g(ILandroid/app/Notification;)V

    .line 11
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final c(Lcom/truecaller/common/ui/avatar/AvatarXConfig;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/content/Intent;Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/common/ui/avatar/AvatarXConfig;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Ls1/w/d<",
            "-",
            "Landroid/app/Notification;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p6, Le/a/k0/a/m$a;

    if-eqz v0, :cond_0

    move-object v0, p6

    check-cast v0, Le/a/k0/a/m$a;

    iget v1, v0, Le/a/k0/a/m$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k0/a/m$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k0/a/m$a;

    invoke-direct {v0, p0, p6}, Le/a/k0/a/m$a;-><init>(Le/a/k0/a/m;Ls1/w/d;)V

    :goto_0
    iget-object p6, v0, Le/a/k0/a/m$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k0/a/m$a;->e:I

    const/16 v3, 0x8

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Le/a/k0/a/m$a;->h:Ljava/lang/Object;

    check-cast p1, Ln3/k/a/q;

    iget-object p2, v0, Le/a/k0/a/m$a;->g:Ljava/lang/Object;

    check-cast p2, Landroid/widget/RemoteViews;

    invoke-static {p6}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p6}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance p6, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Le/a/k0/a/m;->e()Ln3/b/e/c;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget v5, Lcom/truecaller/callrecording/R$layout;->notification_call_recorded:I

    invoke-direct {p6, v2, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 5
    new-instance v2, Ln3/k/a/q;

    invoke-virtual {p0}, Le/a/k0/a/m;->e()Ln3/b/e/c;

    move-result-object v5

    invoke-direct {v2, v5, p3}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    sget p3, Lcom/truecaller/callrecording/R$drawable;->ic_tcx_phone_24dp:I

    .line 7
    iget-object v5, v2, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput p3, v5, Landroid/app/Notification;->icon:I

    .line 8
    new-instance p3, Ln3/k/a/r;

    invoke-direct {p3}, Ln3/k/a/r;-><init>()V

    invoke-virtual {v2, p3}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    const-string p3, "social"

    .line 9
    iput-object p3, v2, Ln3/k/a/q;->B:Ljava/lang/String;

    .line 10
    iput-object p6, v2, Ln3/k/a/q;->G:Landroid/widget/RemoteViews;

    .line 11
    iput v4, v2, Ln3/k/a/q;->l:I

    const/4 p3, 0x0

    .line 12
    invoke-virtual {v2, p3}, Ln3/k/a/q;->w(Landroid/net/Uri;)Ln3/k/a/q;

    const/16 v5, 0x10

    .line 13
    invoke-virtual {v2, v5, v4}, Ln3/k/a/q;->p(IZ)V

    const-string v5, "NotificationCompat.Build\u2026     .setAutoCancel(true)"

    .line 14
    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    if-eqz p4, :cond_3

    .line 15
    invoke-virtual {p0}, Le/a/k0/a/m;->e()Ln3/b/e/c;

    move-result-object v6

    const/high16 v7, 0x14000000

    .line 16
    invoke-static {v6, v5, p4, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p4

    .line 17
    iput-object p4, v2, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    :cond_3
    if-eqz p5, :cond_4

    .line 18
    sget p4, Lcom/truecaller/callrecording/R$id;->image_play:I

    .line 19
    invoke-virtual {p0}, Le/a/k0/a/m;->e()Ln3/b/e/c;

    move-result-object v6

    const/high16 v7, 0x4000000

    invoke-static {v6, v4, p5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p5

    .line 20
    invoke-virtual {p6, p4, p5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_1

    .line 21
    :cond_4
    sget p4, Lcom/truecaller/callrecording/R$id;->image_play:I

    invoke-virtual {p6, p4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_1
    if-eqz p2, :cond_5

    .line 22
    sget p4, Lcom/truecaller/callrecording/R$id;->title:I

    invoke-virtual {p6, p4, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_5
    if-eqz p1, :cond_8

    .line 23
    new-instance p2, Le/a/b0/a/a0/a;

    invoke-virtual {p0}, Le/a/k0/a/m;->e()Ln3/b/e/c;

    move-result-object p4

    iget-object p5, p0, Le/a/k0/a/m;->g:Ls1/w/f;

    const/4 v6, 0x4

    invoke-direct {p2, p4, p5, v5, v6}, Le/a/b0/a/a0/a;-><init>(Landroid/content/Context;Ls1/w/f;II)V

    const/4 p4, 0x2

    .line 24
    invoke-static {p2, p1, v5, p4, p3}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    .line 25
    iput-object p6, v0, Le/a/k0/a/m$a;->g:Ljava/lang/Object;

    iput-object v2, v0, Le/a/k0/a/m$a;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/k0/a/m$a;->e:I

    .line 26
    iget p1, p2, Le/a/b0/a/a0/a;->W:I

    invoke-virtual {p2, p1, v0}, Le/a/b0/a/a0/a;->rk(ILs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object p2, p6

    move-object p6, p1

    move-object p1, v2

    .line 27
    :goto_2
    check-cast p6, Landroid/graphics/Bitmap;

    .line 28
    invoke-static {}, Le/a/n/g0;->D0()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 29
    invoke-virtual {p1, p6}, Ln3/k/a/q;->q(Landroid/graphics/Bitmap;)Ln3/k/a/q;

    .line 30
    sget p3, Lcom/truecaller/callrecording/R$id;->image_avatar:I

    invoke-virtual {p2, p3, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_3

    .line 31
    :cond_7
    sget p3, Lcom/truecaller/callrecording/R$id;->image_avatar:I

    invoke-virtual {p2, p3, p6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_3
    move-object v2, p1

    .line 32
    :cond_8
    invoke-virtual {v2}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object p1

    const-string p2, "builder.build()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final d()Le/a/h4/n;
    .locals 1

    iget-object v0, p0, Le/a/k0/a/m;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/h4/n;

    return-object v0
.end method

.method public final e()Ln3/b/e/c;
    .locals 1

    iget-object v0, p0, Le/a/k0/a/m;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/b/e/c;

    return-object v0
.end method
