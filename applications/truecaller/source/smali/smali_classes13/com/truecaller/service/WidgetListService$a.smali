.class public Lcom/truecaller/service/WidgetListService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/service/WidgetListService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:I

.field public c:Le/a/l0/u/d/b;

.field public final d:Landroid/appwidget/AppWidgetManager;

.field public final e:Ln3/k/g/a;

.field public final f:Le/a/d/f;

.field public final g:Le/a/h/t0/b;

.field public final h:I

.field public final i:I

.field public final j:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/l0/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/truecaller/service/WidgetListService$a;->a:Landroid/content/Context;

    const-string v0, "appWidgetId"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/truecaller/service/WidgetListService$a;->b:I

    .line 4
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/service/WidgetListService$a;->d:Landroid/appwidget/AppWidgetManager;

    .line 5
    invoke-static {}, Ln3/k/g/a;->c()Ln3/k/g/a;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/service/WidgetListService$a;->e:Ln3/k/g/a;

    const-string v0, "extra_widget_layout"

    const v1, 0x7f0d052d

    .line 6
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/truecaller/service/WidgetListService$a;->h:I

    const-string v0, "extra_list_item_layout"

    const v1, 0x7f0d052e

    .line 7
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/truecaller/service/WidgetListService$a;->i:I

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Le/a/w1;

    .line 9
    invoke-interface {p1}, Le/a/w1;->s()Le/a/j2;

    move-result-object p2

    invoke-interface {p2}, Le/a/j2;->Z0()Le/a/r2/f;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/service/WidgetListService$a;->j:Le/a/r2/f;

    .line 10
    invoke-interface {p1}, Le/a/w1;->s()Le/a/j2;

    move-result-object p2

    invoke-interface {p2}, Le/a/j2;->z()Le/a/d/f;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/service/WidgetListService$a;->f:Le/a/d/f;

    .line 11
    invoke-interface {p1}, Le/a/w1;->s()Le/a/j2;

    move-result-object p1

    invoke-interface {p1}, Le/a/j2;->C5()Le/a/h/t0/b;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/service/WidgetListService$a;->g:Le/a/h/t0/b;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/service/WidgetListService$a;->c:Le/a/l0/u/d/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    monitor-exit p0

    return v0

    .line 4
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0x14

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/service/WidgetListService$a;->c:Le/a/l0/u/d/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/truecaller/service/WidgetListService$a;->c:Le/a/l0/u/d/b;

    invoke-interface {p1}, Le/a/l0/u/d/b;->getId()J

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    .line 4
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/truecaller/service/WidgetListService$a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d052f

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2
    iget-object v1, p0, Lcom/truecaller/service/WidgetListService$a;->a:Landroid/content/Context;

    const v2, 0x7f120983

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0a0b4d

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 13

    .line 1
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/truecaller/service/WidgetListService$a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/truecaller/service/WidgetListService$a;->i:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/truecaller/service/WidgetListService$a;->c:Le/a/l0/u/d/b;

    const/16 v2, 0x8

    const v3, 0x7f0a1435

    if-eqz v1, :cond_1e

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_d

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/truecaller/service/WidgetListService$a;->c:Le/a/l0/u/d/b;

    invoke-interface {p1}, Le/a/l0/u/d/b;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object p1

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1d

    .line 6
    iget-object v1, p1, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 7
    invoke-static {v1}, Le/a/b0/q/c0;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_c

    :cond_1
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 9
    iget-object v4, p1, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    .line 10
    iget-object v5, p0, Lcom/truecaller/service/WidgetListService$a;->d:Landroid/appwidget/AppWidgetManager;

    iget v6, p0, Lcom/truecaller/service/WidgetListService$a;->b:I

    invoke-virtual {v5, v6}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "widgetSizeKey"

    .line 11
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move v5, v1

    :goto_0
    const/4 v7, 0x3

    const/4 v8, 0x0

    const v9, 0x7f0a0e82

    if-eqz v5, :cond_a

    .line 12
    invoke-virtual {v0, v9, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-nez v4, :cond_3

    :catch_0
    :goto_1
    move-object v2, v8

    goto :goto_2

    .line 13
    :cond_3
    invoke-static {v4, v6}, Le/a/e/a2;->B(Lcom/truecaller/data/entity/Contact;Z)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 14
    :cond_4
    iget-object v5, p0, Lcom/truecaller/service/WidgetListService$a;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-nez v5, :cond_5

    goto :goto_1

    .line 15
    :cond_5
    :try_start_1
    iget-object v10, p0, Lcom/truecaller/service/WidgetListService$a;->a:Landroid/content/Context;

    invoke-static {v10}, Le/a/m0/a1$k;->K1(Landroid/content/Context;)Le/a/z3/e;

    move-result-object v10

    .line 16
    invoke-virtual {v10}, Le/a/z3/e;->x()Le/a/z3/d;

    move-result-object v10

    .line 17
    iput-object v2, v10, Le/f/a/h;->J:Ljava/lang/Object;

    .line 18
    iput-boolean v6, v10, Le/f/a/h;->N:Z

    const v11, 0x7f0705df

    .line 19
    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v10, v5}, Le/a/z3/d;->m0(I)Le/a/z3/d;

    move-result-object v5

    .line 20
    invoke-virtual {v5}, Le/a/z3/d;->d0()Le/a/z3/d;

    move-result-object v5

    sget-object v10, Le/f/a/n/b;->b:Le/f/a/n/b;

    .line 21
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v11, Le/f/a/n/q/d/n;->f:Le/f/a/n/h;

    invoke-virtual {v5, v11, v10}, Le/a/z3/d;->y(Le/f/a/n/h;Ljava/lang/Object;)Le/f/a/r/a;

    move-result-object v5

    sget-object v11, Le/f/a/n/q/h/i;->a:Le/f/a/n/h;

    invoke-virtual {v5, v11, v10}, Le/f/a/r/a;->y(Le/f/a/n/h;Ljava/lang/Object;)Le/f/a/r/a;

    move-result-object v5

    .line 23
    check-cast v5, Le/a/z3/d;

    .line 24
    invoke-static {v5, v2}, Le/a/m0/a1$k;->l(Le/f/a/r/a;Landroid/net/Uri;)Le/f/a/r/a;

    move-result-object v2

    check-cast v2, Le/f/a/h;

    .line 25
    invoke-virtual {v2}, Le/f/a/h;->X()Le/f/a/r/c;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    check-cast v2, Le/f/a/r/f;

    :try_start_2
    invoke-virtual {v2}, Le/f/a/r/f;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 26
    :goto_2
    iget v5, p1, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    if-eq v5, v6, :cond_9

    if-ne v5, v7, :cond_6

    goto :goto_3

    .line 27
    :cond_6
    invoke-static {p1}, Lcom/truecaller/service/WidgetListService;->a(Lcom/truecaller/data/entity/HistoryEvent;)Z

    move-result v5

    if-eqz v5, :cond_7

    const v2, 0x7f0803a4

    .line 28
    invoke-virtual {v0, v9, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_4

    :cond_7
    if-eqz v2, :cond_8

    .line 29
    invoke-virtual {v0, v9, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_4

    :cond_8
    const v2, 0x7f080384

    .line 30
    invoke-virtual {v0, v9, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_4

    :cond_9
    :goto_3
    const v2, 0x7f0817c4

    .line 31
    invoke-virtual {v0, v9, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_4

    .line 32
    :cond_a
    invoke-virtual {v0, v9, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 33
    invoke-virtual {v0, v9, v8}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_4
    const v2, 0x7f0a0e84

    .line 34
    iget v5, p1, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    if-ne v5, v6, :cond_b

    const v5, 0x7f08180e    # 1.808999E38f

    goto :goto_5

    :cond_b
    if-ne v5, v7, :cond_c

    const v5, 0x7f081812    # 1.8089999E38f

    goto :goto_5

    .line 35
    :cond_c
    iget v5, p1, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    if-eq v5, v6, :cond_f

    const/4 v9, 0x2

    if-eq v5, v9, :cond_e

    if-eq v5, v7, :cond_d

    const v5, 0x7f081810    # 1.8089995E38f

    goto :goto_5

    :cond_d
    const v5, 0x7f081811    # 1.8089997E38f

    goto :goto_5

    :cond_e
    const v5, 0x7f081813    # 1.809E38f

    goto :goto_5

    :cond_f
    const v5, 0x7f08180f    # 1.8089993E38f

    .line 36
    :goto_5
    invoke-virtual {v0, v2, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v2, 0x7f0a0e83

    .line 37
    iget-object v5, p0, Lcom/truecaller/service/WidgetListService$a;->a:Landroid/content/Context;

    .line 38
    iget v9, p1, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    if-eqz v4, :cond_10

    .line 39
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Contact;->C0()Z

    move-result v10

    if-nez v10, :cond_10

    .line 40
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_10
    if-ne v9, v6, :cond_11

    const v4, 0x7f1207e0

    .line 41
    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_11
    if-ne v9, v7, :cond_12

    const v4, 0x7f120426

    .line 42
    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    .line 43
    :cond_12
    invoke-static {p1}, Lcom/truecaller/service/WidgetListService;->a(Lcom/truecaller/data/entity/HistoryEvent;)Z

    move-result v7

    if-eqz v7, :cond_13

    const v4, 0x7f1207e1

    .line 44
    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_13
    if-eqz v4, :cond_15

    .line 45
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Contact;->s0()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-virtual {v4}, Lcom/truecaller/data/entity/Contact;->x0()Z

    move-result v4

    if-nez v4, :cond_14

    goto :goto_6

    .line 46
    :cond_14
    iget-object v4, p1, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    .line 47
    iget-object v7, p1, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 48
    invoke-static {v4, v7}, Lw3/c/a/a/a/h;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 49
    invoke-static {v5}, Le/a/b0/q/n;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 50
    invoke-static {v4, v5}, Le/a/b0/q/b0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_15
    :goto_6
    const v4, 0x7f1202d2

    .line 51
    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 52
    :goto_7
    invoke-virtual {v0, v2, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v2, 0x7f0a0e80

    .line 53
    iget-object v4, p0, Lcom/truecaller/service/WidgetListService$a;->a:Landroid/content/Context;

    .line 54
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    iget-object v7, p0, Lcom/truecaller/service/WidgetListService$a;->e:Ln3/k/g/a;

    .line 56
    iget-object v9, p1, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    .line 57
    iget-object v10, p1, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 58
    invoke-static {v9, v10}, Lw3/c/a/a/a/h;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 59
    invoke-static {v4}, Le/a/b0/q/n;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 60
    invoke-static {v9, v10}, Le/a/b0/q/b0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ln3/k/g/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v7, p0, Lcom/truecaller/service/WidgetListService$a;->f:Le/a/d/f;

    invoke-interface {v7}, Le/a/d/f;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_17

    .line 62
    iget-object v7, p1, Lcom/truecaller/data/entity/HistoryEvent;->s:Ljava/lang/String;

    if-nez v7, :cond_16

    goto :goto_8

    :cond_16
    const-string v9, "com.truecaller.voip.manager.VOIP"

    .line 63
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_9

    :cond_17
    :goto_8
    move v7, v1

    :goto_9
    if-eqz v7, :cond_18

    .line 64
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    const v9, 0x7f1210ca

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v1, v7, v9}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :cond_18
    iget-object v7, p0, Lcom/truecaller/service/WidgetListService$a;->g:Le/a/h/t0/b;

    invoke-interface {v7}, Le/a/h/t0/b;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 66
    iget-object v7, p1, Lcom/truecaller/data/entity/HistoryEvent;->s:Ljava/lang/String;

    if-nez v7, :cond_19

    goto :goto_a

    :cond_19
    const-string v9, "com.whatsapp"

    .line 67
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_b

    :cond_1a
    :goto_a
    move v7, v1

    :goto_b
    if-eqz v7, :cond_1b

    .line 68
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    const v9, 0x7f1201f1

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v1, v7, v9}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    const-string v1, ", "

    .line 69
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-wide v9, p1, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 71
    invoke-static {v4, v9, v10, v6}, Le/a/b0/q/m;->i(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 72
    iget-wide v9, p1, Lcom/truecaller/data/entity/HistoryEvent;->i:J

    const-wide/16 v11, 0x0

    cmp-long v1, v9, v11

    if-lez v1, :cond_1c

    const-string v1, " ("

    .line 73
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-static {v4, v9, v10}, Le/a/b0/q/m;->e(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 75
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_1c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 78
    sget-object v1, Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity;->g:Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity$b;

    iget-object v2, p0, Lcom/truecaller/service/WidgetListService$a;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, p1, v8, v6}, Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity$b;->a(Landroid/content/Context;Lcom/truecaller/data/entity/HistoryEvent;Lcom/truecaller/blocking/FilterMatch;Z)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "widgetClick"

    .line 79
    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    invoke-virtual {v0, v3, p1}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    return-object v0

    .line 81
    :cond_1d
    :goto_c
    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object v0

    .line 82
    :cond_1e
    :goto_d
    :try_start_3
    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 83
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 84
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 0

    return-void
.end method

.method public onDataSetChanged()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/service/WidgetListService$a;->c:Le/a/l0/u/d/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/truecaller/service/WidgetListService$a;->c:Le/a/l0/u/d/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/truecaller/service/WidgetListService$a;->j:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l0/c;

    invoke-interface {v0}, Le/a/l0/c;->p()Le/a/r2/x;

    move-result-object v0

    invoke-virtual {v0}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l0/u/d/b;

    iput-object v0, p0, Lcom/truecaller/service/WidgetListService$a;->c:Le/a/l0/u/d/b;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    :try_start_2
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 7
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/truecaller/service/WidgetListService$a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/truecaller/service/WidgetListService$a;->h:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 9
    iget-object v1, p0, Lcom/truecaller/service/WidgetListService$a;->d:Landroid/appwidget/AppWidgetManager;

    iget v2, p0, Lcom/truecaller/service/WidgetListService$a;->b:I

    invoke-virtual {v1, v2, v0}, Landroid/appwidget/AppWidgetManager;->partiallyUpdateAppWidget(ILandroid/widget/RemoteViews;)V

    return-void

    :catchall_0
    move-exception v0

    .line 10
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/truecaller/service/WidgetListService$a;->c:Le/a/l0/u/d/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/truecaller/service/WidgetListService$a;->c:Le/a/l0/u/d/b;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/truecaller/service/WidgetListService$a;->c:Le/a/l0/u/d/b;

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
