.class public Lcom/truecaller/service/WidgetListProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.truecaller.widget.UPDATE_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/truecaller/service/WidgetListProvider;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 3

    const-string v0, "widgetClick"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "AppUserInteraction.Context"

    const-string v1, "widget"

    .line 2
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "AppUserInteraction.Action"

    const-string v2, "openApp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    .line 3
    invoke-static {p1, p3, p2, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-virtual {p2, p3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "appWidgetMinWidth"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1e

    .line 3
    div-int/lit8 v1, v1, 0x46

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v2, "widgetSizeKey"

    .line 4
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v1, :cond_2

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {p2, p3, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidgetOptions(ILandroid/os/Bundle;)V

    .line 7
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0d052d

    invoke-direct {v0, v2, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    xor-int/2addr v1, v4

    const v2, 0x7f0a1432

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    .line 8
    :goto_1
    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 9
    invoke-virtual {p2, p3, v0}, Landroid/appwidget/AppWidgetManager;->partiallyUpdateAppWidget(ILandroid/widget/RemoteViews;)V

    const v0, 0x7f0a1430

    .line 10
    invoke-virtual {p2, p3, v0}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 11
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.truecaller.widget.UPDATE_DATA"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p2

    .line 4
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p1

    const v0, 0x7f0a1430

    .line 5
    invoke-virtual {p2, p1, v0}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    goto :goto_0

    :cond_0
    const-string v1, "com.truecaller.widget.UPDATE_HEADER"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p2

    .line 8
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 9
    invoke-virtual {p0, p1, p2, v0}, Lcom/truecaller/service/WidgetListProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto :goto_0

    :cond_1
    const-string v1, "com.sec.android.widgetapp.APPWIDGET_RESIZE"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "widgetId"

    .line 12
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "widgetspanx"

    .line 13
    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "widgetspany"

    .line 14
    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-lez v2, :cond_3

    if-lez v3, :cond_3

    if-lez p2, :cond_3

    .line 15
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    mul-int/lit8 p2, p2, 0x4a

    const-string v4, "appWidgetMinHeight"

    .line 16
    invoke-virtual {v1, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    mul-int/lit8 v3, v3, 0x4a

    const-string p2, "appWidgetMinWidth"

    .line 17
    invoke-virtual {v1, p2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 18
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/truecaller/service/WidgetListProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 19
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p3

    .line 1
    invoke-super/range {p0 .. p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Le/a/w1;

    invoke-interface {v2}, Le/a/w1;->s()Le/a/j2;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Le/a/j2;->M3()Le/a/q2/s;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Le/a/q2/s;->c()V

    .line 5
    array-length v9, v8

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v9, :cond_9

    aget v12, v8, v11

    .line 6
    new-instance v13, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d052d

    invoke-direct {v13, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v14, 0x7f0a1430

    const v2, 0x7f0a142e

    .line 7
    invoke-virtual {v13, v14, v2}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    .line 8
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/truecaller/service/WidgetListService;

    invoke-direct {v2, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "appWidgetId"

    .line 9
    invoke-virtual {v2, v4, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v15, 0x1

    .line 10
    invoke-virtual {v2, v15}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v4, "extra_widget_layout"

    .line 11
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v3, 0x7f0d052e

    const-string v4, "extra_list_item_layout"

    .line 12
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    invoke-virtual {v13, v14, v2}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 14
    invoke-static/range {p1 .. p1}, Le/a/o5/c2/r0;->a(Landroid/content/Context;)Le/a/o5/c2/k;

    move-result-object v2

    .line 15
    invoke-virtual {v2, v0}, Le/a/o5/c2/k;->b(Landroid/content/Context;)Le/a/o5/c2/k$c;

    move-result-object v3

    .line 16
    iget v4, v3, Le/a/o5/c2/k$c;->a:I

    const v5, 0x7f0a1431

    invoke-virtual {v13, v5, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 17
    invoke-virtual {v3}, Le/a/o5/c2/k$c;->a()Z

    move-result v4

    const/16 v16, 0x8

    if-eqz v4, :cond_0

    move v4, v10

    goto :goto_1

    :cond_0
    move/from16 v4, v16

    :goto_1
    const v5, 0x7f0a1434

    invoke-virtual {v13, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 18
    iget v4, v3, Le/a/o5/c2/k$c;->c:I

    invoke-virtual {v13, v5, v4}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const v4, 0x7f0a142f

    .line 19
    iget v3, v3, Le/a/o5/c2/k$c;->b:I

    const-string v5, "setBackgroundColor"

    invoke-virtual {v13, v4, v5, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 20
    invoke-virtual {v2}, Le/a/o5/c2/k;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f080860

    goto :goto_2

    :cond_1
    const v3, 0x7f08085f

    :goto_2
    const v7, 0x7f0a1436

    const-string v4, "setImageResource"

    .line 21
    invoke-virtual {v13, v7, v4, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 22
    invoke-virtual {v2}, Le/a/o5/c2/k;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f08085e

    goto :goto_3

    :cond_2
    const v2, 0x7f08085d

    :goto_3
    const v6, 0x7f0a1433

    .line 23
    invoke-virtual {v13, v6, v4, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const-string v2, "widget"

    const-string v3, "calls"

    .line 24
    invoke-static {v0, v3, v2}, Lcom/truecaller/ui/TruecallerInit;->xa(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const v4, 0x7f0a0e51

    invoke-virtual {v1, v0, v3, v4}, Lcom/truecaller/service/WidgetListProvider;->a(Landroid/content/Context;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const v5, 0x7f0a1432

    .line 25
    invoke-virtual {v13, v5, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 26
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-static {v0, v2}, Lcom/truecaller/ui/TruecallerInit;->wa(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 28
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 29
    sget-object v19, Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;->ORDER_CGMT:Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;

    const/16 v20, 0x1

    move-object/from16 v2, p1

    move-object v15, v4

    move-object/from16 v4, v17

    move v14, v5

    move/from16 v5, v18

    move v14, v6

    move-object/from16 v6, v19

    move v14, v7

    move/from16 v7, v20

    .line 30
    invoke-static/range {v2 .. v7}, Le/a/w4/s/b0;->OA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;Z)Landroid/content/Intent;

    move-result-object v2

    .line 31
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0a0e4f

    const/high16 v3, 0xc000000

    .line 32
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const-string v5, "No intents added to TaskStackBuilder; cannot getPendingIntent"

    if-nez v4, :cond_8

    .line 33
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/content/Intent;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/Intent;

    .line 34
    new-instance v6, Landroid/content/Intent;

    aget-object v7, v4, v10

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v7, 0x1000c000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v6

    aput-object v6, v4, v10

    const/4 v6, 0x0

    .line 35
    invoke-static {v0, v2, v4, v3, v6}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 36
    invoke-virtual {v13, v14, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 37
    invoke-static/range {p1 .. p1}, Le/a/i4/y/d;->cB(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    const v3, 0x7f0a0e4e

    invoke-virtual {v1, v0, v2, v3}, Lcom/truecaller/service/WidgetListProvider;->a(Landroid/content/Context;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const v3, 0x7f0a1433

    .line 38
    invoke-virtual {v13, v3, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 39
    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 40
    invoke-virtual {v2, v12}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "widgetSizeKey"

    .line 41
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    const/4 v15, 0x1

    goto :goto_4

    :cond_3
    move v15, v10

    :goto_4
    const/high16 v3, 0x8000000

    .line 42
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1f

    if-lt v4, v14, :cond_4

    const/high16 v3, 0xa000000

    :cond_4
    if-eqz v15, :cond_5

    move v4, v10

    goto :goto_5

    :cond_5
    move/from16 v4, v16

    :goto_5
    const v14, 0x7f0a1432

    .line 43
    invoke-virtual {v13, v14, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 44
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 45
    const-class v14, Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity;

    .line 46
    new-instance v15, Landroid/content/ComponentName;

    invoke-direct {v15, v0, v14}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 48
    :try_start_0
    invoke-static {v0, v15}, Landroid/support/v4/media/session/MediaSessionCompat;->r0(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v15

    :goto_6
    if-eqz v15, :cond_6

    .line 49
    invoke-virtual {v4, v14, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 50
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-static {v0, v15}, Landroid/support/v4/media/session/MediaSessionCompat;->r0(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v15
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 51
    :cond_6
    new-instance v14, Landroid/content/Intent;

    const-class v15, Lcom/truecaller/acs/ui/popup/AfterCallPopupActivity;

    invoke-direct {v14, v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v14, 0x7f0a0e50

    .line 53
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_7

    .line 54
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/Intent;

    .line 55
    new-instance v5, Landroid/content/Intent;

    aget-object v15, v4, v10

    invoke-direct {v5, v15}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    aput-object v5, v4, v10

    .line 56
    invoke-static {v0, v14, v4, v3, v6}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v3

    const v4, 0x7f0a1430

    .line 57
    invoke-virtual {v13, v4, v3}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 58
    invoke-virtual {v2, v12, v13}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 59
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    .line 60
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 61
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    return-void
.end method
