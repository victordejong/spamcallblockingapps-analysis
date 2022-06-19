.class public Lcom/hiya/stingray/notification/c0/g;
.super Lcom/hiya/stingray/notification/c0/d;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/notification/c0/f;


# instance fields
.field private final b:Lcom/hiya/stingray/ui/q;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/i1;Lcom/hiya/stingray/ui/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/notification/c0/d;-><init>(Lcom/hiya/stingray/manager/i1;)V

    .line 2
    iput-object p2, p0, Lcom/hiya/stingray/notification/c0/g;->b:Lcom/hiya/stingray/ui/q;

    return-void
.end method

.method static synthetic k(Lcom/hiya/stingray/notification/c0/g;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/hiya/stingray/t/s0;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/hiya/stingray/notification/c0/g;->o(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/hiya/stingray/t/s0;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;)V

    return-void
.end method

.method private l(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    const-class v8, Lcom/hiya/stingray/notification/FirstTimeIdentifiedCallNotificationHandler;

    const/16 v6, 0x1b5a

    const-string v7, "NOTIFICATION_ITEM_PHONE"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v8}, Lcom/hiya/stingray/notification/c0/d;->c(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method private m(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 7

    .line 1
    const-class v6, Lcom/hiya/stingray/notification/FirstTimeIdentifiedCallNotificationHandler;

    const-string v3, "handle_first_time_call_notification"

    const-string v4, "NOTIFICATION_ITEM_PHONE"

    const/16 v5, 0x1774

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-super/range {v0 .. v6}, Lcom/hiya/stingray/notification/c0/d;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private n(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .line 1
    const-class v0, Lcom/hiya/stingray/notification/FirstTimeIdentifiedCallNotificationHandler;

    const-string v1, "delete_first_time_call_notification"

    const/16 v2, 0x1774

    invoke-super {p0, p1, v1, v2, v0}, Lcom/hiya/stingray/notification/c0/d;->f(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Class;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private o(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/hiya/stingray/t/s0;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;)V
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    .line 1
    invoke-virtual/range {p3 .. p3}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v9, v0}, Lcom/hiya/stingray/notification/c0/g;->m(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v11

    .line 2
    invoke-direct/range {p0 .. p1}, Lcom/hiya/stingray/notification/c0/g;->n(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v12

    .line 3
    invoke-virtual {v8, v10}, Lcom/hiya/stingray/notification/c0/d;->h(Lcom/hiya/stingray/notification/p;)V

    .line 4
    invoke-virtual {v8, v10}, Lcom/hiya/stingray/notification/c0/d;->g(Lcom/hiya/stingray/notification/p;)I

    move-result v7

    .line 5
    iget-object v0, v8, Lcom/hiya/stingray/notification/c0/g;->b:Lcom/hiya/stingray/ui/q;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move v4, v7

    invoke-virtual/range {v0 .. v6}, Lcom/hiya/stingray/ui/q;->m(Landroid/content/Context;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;ILcom/hiya/stingray/t/s0;Lg/g/b/c/r;)Ljava/lang/String;

    move-result-object v13

    .line 6
    iget-object v0, v8, Lcom/hiya/stingray/notification/c0/g;->b:Lcom/hiya/stingray/ui/q;

    move-object/from16 v14, p3

    invoke-virtual {v8, v14, v10}, Lcom/hiya/stingray/notification/c0/d;->i(Lcom/hiya/stingray/t/s0;Lcom/hiya/stingray/notification/p;)Z

    move-result v4

    const/4 v6, 0x0

    const/4 v15, 0x0

    move-object/from16 v2, p3

    move v3, v7

    move-object/from16 v5, p5

    move-object v7, v15

    invoke-virtual/range {v0 .. v7}, Lcom/hiya/stingray/ui/q;->i(Landroid/content/Context;Lcom/hiya/stingray/t/s0;IZLcom/hiya/stingray/ui/o;ZLg/g/b/c/r;)Ljava/lang/String;

    move-result-object v4

    .line 7
    new-instance v15, Landroidx/core/app/j$e;

    const-string v0, "first_time_id"

    invoke-direct {v15, v9, v0}, Landroidx/core/app/j$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object v2, v15

    move-object v3, v13

    move-object/from16 v5, p2

    move-object v6, v11

    move-object v7, v12

    invoke-virtual/range {v0 .. v7}, Lcom/hiya/stingray/notification/c0/d;->d(Landroid/content/Context;Landroidx/core/app/j$e;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroidx/core/app/j$e;

    .line 8
    invoke-virtual {v8, v10}, Lcom/hiya/stingray/notification/c0/d;->g(Lcom/hiya/stingray/notification/p;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 9
    invoke-virtual/range {p3 .. p3}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f110314

    .line 10
    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v4, "save_first_time_identified_action"

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v3, p1

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/g;->l(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual/range {p3 .. p3}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f11004e

    .line 13
    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v4, "block_first_time_identified_action"

    move-object/from16 v0, p0

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/g;->l(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "notification"

    .line 15
    invoke-virtual {v9, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x1b5a

    .line 16
    invoke-virtual {v15}, Landroidx/core/app/j$e;->b()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/hiya/stingray/t/s0;Landroid/content/Context;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;ZLg/g/b/c/r;)Z
    .locals 7

    .line 1
    iget-object p5, p0, Lcom/hiya/stingray/notification/c0/g;->b:Lcom/hiya/stingray/ui/q;

    invoke-virtual {p5, p2, p3, p4}, Lcom/hiya/stingray/ui/q;->k(Landroid/content/Context;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;)Li/c/b0/b/v;

    move-result-object p5

    .line 2
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object p6

    invoke-virtual {p5, p6}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p5

    .line 3
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object p6

    invoke-virtual {p5, p6}, Li/c/b0/b/v;->observeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p5

    new-instance p6, Lcom/hiya/stingray/notification/c0/g$a;

    move-object v0, p6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/g$a;-><init>(Lcom/hiya/stingray/notification/c0/g;Landroid/content/Context;Lcom/hiya/stingray/t/s0;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;)V

    new-instance v6, Lcom/hiya/stingray/notification/c0/g$b;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/g$b;-><init>(Lcom/hiya/stingray/notification/c0/g;Landroid/content/Context;Lcom/hiya/stingray/t/s0;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;)V

    .line 4
    invoke-virtual {p5, p6, v6}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    const/4 p1, 0x1

    return p1
.end method
