.class public final Le/a/g4/a/d/b;
.super Le/a/g4/a/a;
.source "SourceFile"


# instance fields
.field public final j:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ls1/w/f;Ls1/w/f;Le/a/u3/g;Le/a/p5/g;ILjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Le/a/g4/a/d/a;)V
    .locals 14

    move-object v8, p0

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    const-string v0, "context"

    move-object v13, p1

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cpuContext"

    move-object/from16 v2, p3

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    move-object/from16 v4, p4

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelId"

    move-object/from16 v7, p7

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "muteIntent"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "speakerIntent"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hangupIntent"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v3, p1

    move/from16 v6, p6

    .line 1
    invoke-direct/range {v0 .. v7}, Le/a/g4/a/a;-><init>(Ls1/w/f;Ls1/w/f;Landroid/content/Context;Le/a/u3/g;Le/a/p5/g;ILjava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Le/a/g4/a/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/truecaller/notification/call/R$layout;->notification_call_ongoing_dark:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/truecaller/notification/call/R$layout;->notification_call_ongoing_default:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 5
    :goto_0
    iput-object v0, v8, Le/a/g4/a/d/b;->j:Landroid/widget/RemoteViews;

    .line 6
    sget v1, Lcom/truecaller/notification/call/R$id;->image_mute:I

    invoke-virtual {v0, v1, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 7
    sget v2, Lcom/truecaller/notification/call/R$id;->image_speaker:I

    invoke-virtual {v0, v2, v10}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 8
    sget v2, Lcom/truecaller/notification/call/R$id;->image_hangup:I

    invoke-virtual {v0, v2, v11}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const/16 v2, 0x8

    if-eqz v12, :cond_2

    .line 9
    sget v3, Lcom/truecaller/notification/call/R$id;->image_start_record:I

    invoke-virtual/range {p11 .. p11}, Le/a/g4/a/d/a;->a()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 10
    sget v3, Lcom/truecaller/notification/call/R$id;->panel_record:I

    invoke-virtual/range {p11 .. p11}, Le/a/g4/a/d/a;->a()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 12
    instance-of v1, v12, Le/a/g4/a/d/a$b;

    if-eqz v1, :cond_1

    move-object v1, v12

    check-cast v1, Le/a/g4/a/d/a$b;

    .line 13
    iget-wide v3, v1, Le/a/g4/a/d/a$b;->b:J

    .line 14
    invoke-virtual {p0, v3, v4}, Le/a/g4/a/d/b;->s(J)V

    goto :goto_1

    .line 15
    :cond_1
    instance-of v1, v12, Le/a/g4/a/d/a$a;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Le/a/g4/a/d/b;->w()V

    .line 16
    :cond_2
    :goto_1
    invoke-virtual {p0}, Le/a/g4/a/a;->c()Ln3/k/a/q;

    move-result-object v1

    .line 17
    new-instance v3, Ln3/k/a/r;

    invoke-direct {v3}, Ln3/k/a/r;-><init>()V

    invoke-virtual {v1, v3}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    .line 18
    iput-object v0, v1, Ln3/k/a/q;->G:Landroid/widget/RemoteViews;

    const/4 v3, 0x0

    .line 19
    invoke-virtual {v1, v3}, Ln3/k/a/q;->w(Landroid/net/Uri;)Ln3/k/a/q;

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    aput-wide v5, v3, v4

    .line 20
    iget-object v1, v1, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object v3, v1, Landroid/app/Notification;->vibrate:[J

    .line 21
    invoke-static {}, Le/a/n/g0;->D0()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 22
    sget v1, Lcom/truecaller/notification/call/R$id;->image_avatar:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 23
    :cond_3
    invoke-virtual {p0}, Le/a/g4/a/d/b;->v()V

    .line 24
    invoke-virtual {p0}, Le/a/g4/a/d/b;->x()V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 0

    return-void
.end method

.method public h(Ljava/lang/String;II)V
    .locals 0

    const-string p2, "label"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 2

    const-string v0, "title"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/g4/a/d/b;->j:Landroid/widget/RemoteViews;

    sget v1, Lcom/truecaller/notification/call/R$id;->title:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public l(Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "icon"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Le/a/g4/a/a;->l(Landroid/graphics/Bitmap;)V

    .line 2
    invoke-static {}, Le/a/n/g0;->D0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Le/a/g4/a/a;->c()Ln3/k/a/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Ln3/k/a/q;->q(Landroid/graphics/Bitmap;)Ln3/k/a/q;

    const-string p1, "notificationBuilder.setLargeIcon(icon)"

    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/g4/a/d/b;->j:Landroid/widget/RemoteViews;

    sget v1, Lcom/truecaller/notification/call/R$id;->image_avatar:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public final r()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/g4/a/d/b;->j:Landroid/widget/RemoteViews;

    .line 2
    sget v1, Lcom/truecaller/notification/call/R$id;->image_mute:I

    .line 3
    sget v2, Lcom/truecaller/notification/call/R$drawable;->notification_call_ic_button_mute_checked:I

    const/4 v3, 0x1

    .line 4
    invoke-virtual {p0, v0, v1, v2, v3}, Le/a/g4/a/a;->k(Landroid/widget/RemoteViews;IIZ)V

    return-void
.end method

.method public final s(J)V
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/g4/a/d/b;->j:Landroid/widget/RemoteViews;

    sget v1, Lcom/truecaller/notification/call/R$id;->panel_record:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2
    iget-object v0, p0, Le/a/g4/a/d/b;->j:Landroid/widget/RemoteViews;

    sget v1, Lcom/truecaller/notification/call/R$id;->image_start_record:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3
    iget-object v3, p0, Le/a/g4/a/d/b;->j:Landroid/widget/RemoteViews;

    sget v0, Lcom/truecaller/notification/call/R$id;->record_time:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    move v4, v0

    move-wide v5, p1

    invoke-virtual/range {v3 .. v8}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    .line 4
    iget-object p1, p0, Le/a/g4/a/d/b;->j:Landroid/widget/RemoteViews;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, v0, p2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    return-void
.end method

.method public final t()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/g4/a/d/b;->j:Landroid/widget/RemoteViews;

    .line 2
    sget v1, Lcom/truecaller/notification/call/R$id;->image_speaker:I

    .line 3
    sget v2, Lcom/truecaller/notification/call/R$drawable;->notification_call_ic_button_speaker_checked:I

    const/4 v3, 0x1

    .line 4
    invoke-virtual {p0, v0, v1, v2, v3}, Le/a/g4/a/a;->k(Landroid/widget/RemoteViews;IIZ)V

    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 2

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/g4/a/d/b;->j:Landroid/widget/RemoteViews;

    sget v1, Lcom/truecaller/notification/call/R$id;->description:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public final v()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/g4/a/d/b;->j:Landroid/widget/RemoteViews;

    .line 2
    sget v1, Lcom/truecaller/notification/call/R$id;->image_mute:I

    .line 3
    sget v2, Lcom/truecaller/notification/call/R$drawable;->notification_call_ic_button_mute_normal:I

    const/4 v3, 0x0

    .line 4
    invoke-virtual {p0, v0, v1, v2, v3}, Le/a/g4/a/a;->k(Landroid/widget/RemoteViews;IIZ)V

    return-void
.end method

.method public final w()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/g4/a/d/b;->j:Landroid/widget/RemoteViews;

    sget v1, Lcom/truecaller/notification/call/R$id;->panel_record:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2
    iget-object v0, p0, Le/a/g4/a/d/b;->j:Landroid/widget/RemoteViews;

    sget v1, Lcom/truecaller/notification/call/R$id;->image_start_record:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3
    iget-object v0, p0, Le/a/g4/a/d/b;->j:Landroid/widget/RemoteViews;

    sget v3, Lcom/truecaller/notification/call/R$drawable;->ic_call_record_24dp:I

    invoke-virtual {p0, v0, v1, v3, v2}, Le/a/g4/a/a;->k(Landroid/widget/RemoteViews;IIZ)V

    return-void
.end method

.method public final x()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/g4/a/d/b;->j:Landroid/widget/RemoteViews;

    .line 2
    sget v1, Lcom/truecaller/notification/call/R$id;->image_speaker:I

    .line 3
    sget v2, Lcom/truecaller/notification/call/R$drawable;->notification_call_ic_button_speaker_normal:I

    const/4 v3, 0x0

    .line 4
    invoke-virtual {p0, v0, v1, v2, v3}, Le/a/g4/a/a;->k(Landroid/widget/RemoteViews;IIZ)V

    return-void
.end method
