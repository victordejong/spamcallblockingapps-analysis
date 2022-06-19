.class public abstract Le/a/g4/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/i0;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Ls1/g;

.field public final c:Ls1/g;

.field public d:Lq3/a/p1;

.field public e:Lq3/a/p1;

.field public final f:Ls1/g;

.field public final g:Le/a/u3/g;

.field public final h:Le/a/p5/g;

.field public final i:I


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Landroid/content/Context;Le/a/u3/g;Le/a/p5/g;ILjava/lang/String;)V
    .locals 1

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cpuContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelId"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Le/a/g4/a/a;->g:Le/a/u3/g;

    iput-object p5, p0, Le/a/g4/a/a;->h:Le/a/p5/g;

    iput p6, p0, Le/a/g4/a/a;->i:I

    const/4 p4, 0x0

    const/4 p5, 0x1

    .line 2
    invoke-static {p4, p5, p4}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object p4

    invoke-interface {p1, p4}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object p1

    iput-object p1, p0, Le/a/g4/a/a;->a:Ls1/w/f;

    .line 3
    new-instance p1, Le/a/g4/a/a$d;

    invoke-direct {p1, p0, p3}, Le/a/g4/a/a$d;-><init>(Le/a/g4/a/a;Landroid/content/Context;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/g4/a/a;->b:Ls1/g;

    .line 4
    new-instance p1, Le/a/g4/a/a$a;

    invoke-direct {p1, p0, p2}, Le/a/g4/a/a$a;-><init>(Le/a/g4/a/a;Ls1/w/f;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/g4/a/a;->c:Ls1/g;

    .line 5
    new-instance p1, Le/a/g4/a/a$b;

    invoke-direct {p1, p0, p7}, Le/a/g4/a/a$b;-><init>(Le/a/g4/a/a;Ljava/lang/String;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/g4/a/a;->f:Ls1/g;

    return-void
.end method

.method public static synthetic q(Le/a/g4/a/a;Landroid/app/Service;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Le/a/g4/a/a;->p(Landroid/app/Service;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/g4/a/a;->b()Le/a/b0/a/a0/a;

    move-result-object v0

    invoke-virtual {v0}, Le/a/b0/a/b/a;->c()V

    .line 2
    iget-object v0, p0, Le/a/g4/a/a;->a:Ls1/w/f;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    invoke-static {v0, v2, v1, v2}, Ls1/a/a/a/v0/f/d;->R(Ls1/w/f;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public final b()Le/a/b0/a/a0/a;
    .locals 1

    iget-object v0, p0, Le/a/g4/a/a;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/a/a0/a;

    return-object v0
.end method

.method public final c()Ln3/k/a/q;
    .locals 1

    iget-object v0, p0, Le/a/g4/a/a;->f:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/k/a/q;

    return-object v0
.end method

.method public final d()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Le/a/g4/a/a;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public abstract e()V
.end method

.method public final f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/g4/a/a;->h:Le/a/p5/g;

    iget-object v1, p0, Le/a/g4/a/a;->g:Le/a/u3/g;

    invoke-static {v0, v1}, Le/a/e/a2;->K(Le/a/p5/g;Le/a/u3/g;)Z

    move-result v0

    return v0
.end method

.method public final g(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V
    .locals 10

    const-string v0, "config"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/g4/a/a;->b()Le/a/b0/a/a0/a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/g4/a/a;->d:Lq3/a/p1;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-static {p1, v3, v0, v3}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3
    new-instance v7, Le/a/g4/a/a$c;

    invoke-direct {v7, p0, v3}, Le/a/g4/a/a$c;-><init>(Le/a/g4/a/a;Ls1/w/d;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    iput-object p1, p0, Le/a/g4/a/a;->d:Lq3/a/p1;

    return-void
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/g4/a/a;->a:Ls1/w/f;

    return-object v0
.end method

.method public abstract h(Ljava/lang/String;II)V
.end method

.method public final i(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "intent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/g4/a/a;->c()Ln3/k/a/q;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Le/a/g4/a/a;->d()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x4000000

    .line 3
    invoke-static {v1, v2, p1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 4
    iput-object p1, v0, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    return-void
.end method

.method public abstract j(Ljava/lang/String;)V
.end method

.method public final k(Landroid/widget/RemoteViews;IIZ)V
    .locals 2

    const-string v0, "$this$setImageIconAndState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1, p2, p3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const-string p3, "setBackgroundResource"

    const-string v0, "setColorFilter"

    if-eqz p4, :cond_0

    .line 2
    invoke-virtual {p0}, Le/a/g4/a/a;->d()Landroid/content/Context;

    move-result-object p4

    sget v1, Lcom/truecaller/notification/call/R$attr;->notificationCallButtonCheckedColor:I

    invoke-static {p4, v1}, Le/a/p5/s0/g;->k0(Landroid/content/Context;I)I

    move-result p4

    .line 3
    invoke-virtual {p1, p2, v0, p4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 4
    sget p4, Lcom/truecaller/notification/call/R$drawable;->notification_call_button_background_checked:I

    invoke-virtual {p1, p2, p3, p4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Le/a/g4/a/a;->d()Landroid/content/Context;

    move-result-object p4

    sget v1, Lcom/truecaller/notification/call/R$attr;->notificationCallButtonNormalColor:I

    invoke-static {p4, v1}, Le/a/p5/s0/g;->k0(Landroid/content/Context;I)I

    move-result p4

    .line 6
    invoke-virtual {p1, p2, v0, p4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 7
    sget p4, Lcom/truecaller/notification/call/R$drawable;->notification_call_button_background_normal:I

    invoke-virtual {p1, p2, p3, p4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public l(Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "icon"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/g4/a/a;->d:Lq3/a/p1;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final m(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/g4/a/a;->c()Ln3/k/a/q;

    move-result-object v0

    .line 2
    iget-object v0, v0, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    return-void
.end method

.method public final n(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/g4/a/a;->c()Ln3/k/a/q;

    move-result-object v0

    .line 2
    iput-boolean p1, v0, Ln3/k/a/q;->n:Z

    return-void
.end method

.method public final o(J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/g4/a/a;->c()Ln3/k/a/q;

    move-result-object v0

    .line 2
    iget-object v0, v0, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    return-void
.end method

.method public final p(Landroid/app/Service;Z)V
    .locals 8

    const-string v0, "service"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/g4/a/a;->e:Lq3/a/p1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    iget v0, p0, Le/a/g4/a/a;->i:I

    invoke-virtual {p0}, Le/a/g4/a/a;->c()Ln3/k/a/q;

    move-result-object v2

    invoke-virtual {v2}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[InCallUIService] startForeground called. Immediate = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a/c/p/a;->M1(Ljava/lang/String;)V

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    new-instance v5, Le/a/g4/a/a$e;

    invoke-direct {v5, p0, p1, p2, v1}, Le/a/g4/a/a$e;-><init>(Le/a/g4/a/a;Landroid/app/Service;ZLs1/w/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    iput-object p1, p0, Le/a/g4/a/a;->e:Lq3/a/p1;

    return-void
.end method
