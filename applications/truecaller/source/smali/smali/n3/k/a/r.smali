.class public Ln3/k/a/r;
.super Ln3/k/a/u;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/k/a/u;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ln3/k/a/j;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 2
    check-cast p1, Ln3/k/a/v;

    .line 3
    iget-object p1, p1, Ln3/k/a/v;->b:Landroid/app/Notification$Builder;

    .line 4
    new-instance v0, Landroid/app/Notification$DecoratedCustomViewStyle;

    invoke-direct {v0}, Landroid/app/Notification$DecoratedCustomViewStyle;-><init>()V

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :cond_0
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle"

    return-object v0
.end method

.method public g(Ln3/k/a/j;)Landroid/widget/RemoteViews;
    .locals 2

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x18

    if-lt p1, v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object p1, p0, Ln3/k/a/u;->a:Ln3/k/a/q;

    .line 3
    iget-object v1, p1, Ln3/k/a/q;->H:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, p1, Ln3/k/a/q;->G:Landroid/widget/RemoteViews;

    :goto_0
    if-nez v1, :cond_2

    return-object v0

    :cond_2
    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, v1, p1}, Ln3/k/a/r;->k(Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method public h(Ln3/k/a/j;)Landroid/widget/RemoteViews;
    .locals 2

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x18

    if-lt p1, v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object p1, p0, Ln3/k/a/u;->a:Ln3/k/a/q;

    .line 3
    iget-object p1, p1, Ln3/k/a/q;->G:Landroid/widget/RemoteViews;

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Ln3/k/a/r;->k(Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method public i(Ln3/k/a/j;)Landroid/widget/RemoteViews;
    .locals 2

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x18

    if-lt p1, v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object p1, p0, Ln3/k/a/u;->a:Ln3/k/a/q;

    .line 3
    iget-object v1, p1, Ln3/k/a/q;->I:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_1

    move-object p1, v1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p1, Ln3/k/a/q;->G:Landroid/widget/RemoteViews;

    :goto_0
    if-nez v1, :cond_2

    return-object v0

    :cond_2
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, p1, v0}, Ln3/k/a/r;->k(Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method public final k(Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;
    .locals 13

    .line 1
    sget v0, Landroidx/core/R$layout;->notification_template_custom_big:I

    .line 2
    iget-object v1, p0, Ln3/k/a/u;->a:Ln3/k/a/q;

    iget-object v1, v1, Ln3/k/a/q;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3
    new-instance v8, Landroid/widget/RemoteViews;

    iget-object v2, p0, Ln3/k/a/u;->a:Ln3/k/a/q;

    iget-object v2, v2, Ln3/k/a/q;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 4
    iget-object v0, p0, Ln3/k/a/u;->a:Ln3/k/a/q;

    .line 5
    iget v2, v0, Ln3/k/a/q;->l:I

    .line 6
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    iget-object v2, v0, Ln3/k/a/q;->i:Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    if-eqz v2, :cond_0

    .line 8
    sget v0, Landroidx/core/R$id;->icon:I

    invoke-virtual {v8, v0, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 9
    iget-object v2, p0, Ln3/k/a/u;->a:Ln3/k/a/q;

    iget-object v2, v2, Ln3/k/a/q;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v0, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 10
    iget-object v0, p0, Ln3/k/a/u;->a:Ln3/k/a/q;

    iget-object v0, v0, Ln3/k/a/q;->R:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->icon:I

    if-eqz v0, :cond_1

    .line 11
    sget v0, Landroidx/core/R$dimen;->notification_right_icon_size:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 12
    sget v2, Landroidx/core/R$dimen;->notification_small_icon_background_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v0, v2

    .line 13
    iget-object v3, p0, Ln3/k/a/u;->a:Ln3/k/a/q;

    iget-object v4, v3, Ln3/k/a/q;->R:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->icon:I

    .line 14
    iget v3, v3, Ln3/k/a/q;->D:I

    .line 15
    invoke-virtual {p0, v4, v0, v2, v3}, Ln3/k/a/u;->e(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 16
    sget v2, Landroidx/core/R$id;->right_icon:I

    invoke-virtual {v8, v2, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 17
    invoke-virtual {v8, v2, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, v0, Ln3/k/a/q;->R:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->icon:I

    if-eqz v0, :cond_1

    .line 19
    sget v0, Landroidx/core/R$id;->icon:I

    invoke-virtual {v8, v0, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 20
    sget v2, Landroidx/core/R$dimen;->notification_large_icon_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Landroidx/core/R$dimen;->notification_big_circle_margin:I

    .line 21
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 22
    sget v3, Landroidx/core/R$dimen;->notification_small_icon_size_as_large:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 23
    iget-object v4, p0, Ln3/k/a/u;->a:Ln3/k/a/q;

    iget-object v5, v4, Ln3/k/a/q;->R:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->icon:I

    .line 24
    iget v4, v4, Ln3/k/a/q;->D:I

    .line 25
    invoke-virtual {p0, v5, v2, v3, v4}, Ln3/k/a/u;->e(IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 26
    invoke-virtual {v8, v0, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 27
    :cond_1
    :goto_0
    iget-object v0, p0, Ln3/k/a/u;->a:Ln3/k/a/q;

    iget-object v0, v0, Ln3/k/a/q;->e:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 28
    sget v2, Landroidx/core/R$id;->title:I

    invoke-virtual {v8, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 29
    :cond_2
    iget-object v0, p0, Ln3/k/a/u;->a:Ln3/k/a/q;

    iget-object v0, v0, Ln3/k/a/q;->f:Ljava/lang/CharSequence;

    const/4 v11, 0x1

    if-eqz v0, :cond_3

    .line 30
    sget v2, Landroidx/core/R$id;->text:I

    invoke-virtual {v8, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    move v0, v11

    goto :goto_1

    :cond_3
    move v0, v10

    .line 31
    :goto_1
    iget-object v2, p0, Ln3/k/a/u;->a:Ln3/k/a/q;

    iget-object v3, v2, Ln3/k/a/q;->j:Ljava/lang/CharSequence;

    const/16 v12, 0x8

    if-eqz v3, :cond_4

    .line 32
    sget v0, Landroidx/core/R$id;->info:I

    invoke-virtual {v8, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 33
    invoke-virtual {v8, v0, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_3

    .line 34
    :cond_4
    iget v2, v2, Ln3/k/a/q;->k:I

    if-lez v2, :cond_6

    .line 35
    sget v0, Landroidx/core/R$integer;->status_bar_notification_info_maxnum:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 36
    iget-object v2, p0, Ln3/k/a/u;->a:Ln3/k/a/q;

    iget v2, v2, Ln3/k/a/q;->k:I

    if-le v2, v0, :cond_5

    .line 37
    sget v0, Landroidx/core/R$id;->info:I

    sget v2, Landroidx/core/R$string;->status_bar_notification_info_overflow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_2

    .line 38
    :cond_5
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 39
    sget v1, Landroidx/core/R$id;->info:I

    iget-object v2, p0, Ln3/k/a/u;->a:Ln3/k/a/q;

    iget v2, v2, Ln3/k/a/q;->k:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 40
    :goto_2
    sget v0, Landroidx/core/R$id;->info:I

    invoke-virtual {v8, v0, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_3
    move v0, v11

    move v1, v0

    goto :goto_4

    .line 41
    :cond_6
    sget v1, Landroidx/core/R$id;->info:I

    invoke-virtual {v8, v1, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    move v1, v10

    .line 42
    :goto_4
    iget-object v2, p0, Ln3/k/a/u;->a:Ln3/k/a/q;

    iget-object v2, v2, Ln3/k/a/q;->q:Ljava/lang/CharSequence;

    if-eqz v2, :cond_8

    .line 43
    sget v3, Landroidx/core/R$id;->text:I

    invoke-virtual {v8, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 44
    iget-object v2, p0, Ln3/k/a/u;->a:Ln3/k/a/q;

    iget-object v2, v2, Ln3/k/a/q;->f:Ljava/lang/CharSequence;

    if-eqz v2, :cond_7

    .line 45
    sget v3, Landroidx/core/R$id;->text2:I

    invoke-virtual {v8, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 46
    invoke-virtual {v8, v3, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    move v2, v11

    goto :goto_5

    .line 47
    :cond_7
    sget v2, Landroidx/core/R$id;->text2:I

    invoke-virtual {v8, v2, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_8
    move v2, v10

    :goto_5
    if-eqz v2, :cond_9

    .line 48
    sget v3, Landroidx/core/R$id;->line1:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 49
    :cond_9
    iget-object v2, p0, Ln3/k/a/u;->a:Ln3/k/a/q;

    invoke-virtual {v2}, Ln3/k/a/q;->f()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    .line 50
    iget-object v1, p0, Ln3/k/a/u;->a:Ln3/k/a/q;

    iget-boolean v1, v1, Ln3/k/a/q;->n:Z

    if-eqz v1, :cond_a

    .line 51
    sget v1, Landroidx/core/R$id;->chronometer:I

    invoke-virtual {v8, v1, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 52
    iget-object v2, p0, Ln3/k/a/u;->a:Ln3/k/a/q;

    .line 53
    invoke-virtual {v2}, Ln3/k/a/q;->f()J

    move-result-wide v2

    .line 54
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    add-long/2addr v4, v2

    const-string v2, "setBase"

    .line 55
    invoke-virtual {v8, v1, v2, v4, v5}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    const-string v2, "setStarted"

    .line 56
    invoke-virtual {v8, v1, v2, v11}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 57
    iget-object v2, p0, Ln3/k/a/u;->a:Ln3/k/a/q;

    iget-boolean v2, v2, Ln3/k/a/q;->o:Z

    if-eqz v2, :cond_b

    const/16 v3, 0x18

    if-lt v9, v3, :cond_b

    .line 58
    invoke-virtual {v8, v1, v2}, Landroid/widget/RemoteViews;->setChronometerCountDown(IZ)V

    goto :goto_6

    .line 59
    :cond_a
    sget v1, Landroidx/core/R$id;->time:I

    invoke-virtual {v8, v1, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 60
    iget-object v2, p0, Ln3/k/a/u;->a:Ln3/k/a/q;

    invoke-virtual {v2}, Ln3/k/a/q;->f()J

    move-result-wide v2

    const-string v4, "setTime"

    invoke-virtual {v8, v1, v4, v2, v3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    :cond_b
    :goto_6
    move v1, v11

    .line 61
    :cond_c
    sget v2, Landroidx/core/R$id;->right_side:I

    if-eqz v1, :cond_d

    move v1, v10

    goto :goto_7

    :cond_d
    move v1, v12

    :goto_7
    invoke-virtual {v8, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 62
    sget v1, Landroidx/core/R$id;->line3:I

    if-eqz v0, :cond_e

    move v0, v10

    goto :goto_8

    :cond_e
    move v0, v12

    :goto_8
    invoke-virtual {v8, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 63
    sget v0, Landroidx/core/R$id;->actions:I

    invoke-virtual {v8, v0}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 64
    iget-object v0, p0, Ln3/k/a/u;->a:Ln3/k/a/q;

    iget-object v0, v0, Ln3/k/a/q;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_a

    .line 65
    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/k/a/m;

    .line 67
    iget-boolean v3, v2, Ln3/k/a/m;->h:Z

    if-nez v3, :cond_10

    .line 68
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_11
    move-object v0, v1

    :goto_a
    if-eqz p2, :cond_16

    if-eqz v0, :cond_16

    .line 69
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x3

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-lez p2, :cond_16

    move v1, v10

    :goto_b
    if-ge v1, p2, :cond_17

    .line 70
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/k/a/m;

    .line 71
    iget-object v3, v2, Ln3/k/a/m;->k:Landroid/app/PendingIntent;

    if-nez v3, :cond_12

    move v3, v11

    goto :goto_c

    :cond_12
    move v3, v10

    .line 72
    :goto_c
    new-instance v4, Landroid/widget/RemoteViews;

    iget-object v5, p0, Ln3/k/a/u;->a:Ln3/k/a/q;

    iget-object v5, v5, Ln3/k/a/q;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_13

    .line 73
    sget v6, Landroidx/core/R$layout;->notification_action_tombstone:I

    goto :goto_d

    .line 74
    :cond_13
    sget v6, Landroidx/core/R$layout;->notification_action:I

    :goto_d
    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 75
    invoke-virtual {v2}, Ln3/k/a/m;->a()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 76
    sget v6, Landroidx/core/R$id;->action_image:I

    iget-object v7, p0, Ln3/k/a/u;->a:Ln3/k/a/q;

    iget-object v7, v7, Ln3/k/a/q;->a:Landroid/content/Context;

    .line 77
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Landroidx/core/R$color;->notification_action_color_filter:I

    .line 78
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 79
    invoke-virtual {p0, v5, v7, v10}, Ln3/k/a/u;->d(Landroidx/core/graphics/drawable/IconCompat;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 80
    invoke-virtual {v4, v6, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 81
    :cond_14
    sget v5, Landroidx/core/R$id;->action_text:I

    iget-object v6, v2, Ln3/k/a/m;->j:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    if-nez v3, :cond_15

    .line 82
    sget v3, Landroidx/core/R$id;->action_container:I

    iget-object v5, v2, Ln3/k/a/m;->k:Landroid/app/PendingIntent;

    invoke-virtual {v4, v3, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 83
    :cond_15
    sget v3, Landroidx/core/R$id;->action_container:I

    iget-object v2, v2, Ln3/k/a/m;->j:Ljava/lang/CharSequence;

    invoke-virtual {v4, v3, v2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 84
    sget v2, Landroidx/core/R$id;->actions:I

    invoke-virtual {v8, v2, v4}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_16
    move v11, v10

    :cond_17
    if-eqz v11, :cond_18

    move p2, v10

    goto :goto_e

    :cond_18
    move p2, v12

    .line 85
    :goto_e
    sget v0, Landroidx/core/R$id;->actions:I

    invoke-virtual {v8, v0, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 86
    sget v0, Landroidx/core/R$id;->action_divider:I

    invoke-virtual {v8, v0, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 87
    sget p2, Landroidx/core/R$id;->title:I

    invoke-virtual {v8, p2, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 88
    sget p2, Landroidx/core/R$id;->text2:I

    invoke-virtual {v8, p2, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 89
    sget p2, Landroidx/core/R$id;->text:I

    invoke-virtual {v8, p2, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 90
    sget p2, Landroidx/core/R$id;->notification_main_column:I

    invoke-virtual {v8, p2}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 91
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object p1

    invoke-virtual {v8, p2, p1}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 92
    invoke-virtual {v8, p2, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 93
    sget v3, Landroidx/core/R$id;->notification_main_column_container:I

    const/4 v4, 0x0

    .line 94
    iget-object p1, p0, Ln3/k/a/u;->a:Ln3/k/a/q;

    iget-object p1, p1, Ln3/k/a/q;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 95
    sget p2, Landroidx/core/R$dimen;->notification_top_pad:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 96
    sget v0, Landroidx/core/R$dimen;->notification_top_pad_large_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 97
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v1

    const v5, 0x3fa66666    # 1.3f

    if-gez v2, :cond_19

    move p1, v1

    goto :goto_f

    :cond_19
    cmpl-float v2, p1, v5

    if-lez v2, :cond_1a

    move p1, v5

    :cond_1a
    :goto_f
    sub-float/2addr p1, v1

    const v2, 0x3e999998    # 0.29999995f

    div-float/2addr p1, v2

    sub-float/2addr v1, p1

    int-to-float p2, p2

    mul-float/2addr v1, p2

    int-to-float p2, v0

    mul-float/2addr p1, p2

    add-float/2addr p1, v1

    .line 98
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    .line 99
    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    return-object v8
.end method
