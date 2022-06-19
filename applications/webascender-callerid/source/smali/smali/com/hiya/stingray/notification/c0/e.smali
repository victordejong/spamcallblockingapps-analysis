.class public Lcom/hiya/stingray/notification/c0/e;
.super Lcom/hiya/stingray/notification/c0/d;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/notification/c0/f;


# instance fields
.field private final b:Lcom/hiya/stingray/ui/q;

.field private final c:Lcom/hiya/stingray/manager/u3;

.field private d:Li/c/b0/c/c;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/i1;Lcom/hiya/stingray/ui/q;Lcom/hiya/stingray/manager/u3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/notification/c0/d;-><init>(Lcom/hiya/stingray/manager/i1;)V

    .line 2
    invoke-static {}, Li/c/b0/c/b;->b()Li/c/b0/c/c;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/notification/c0/e;->d:Li/c/b0/c/c;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/notification/c0/e;->b:Lcom/hiya/stingray/ui/q;

    .line 4
    iput-object p3, p0, Lcom/hiya/stingray/notification/c0/e;->c:Lcom/hiya/stingray/manager/u3;

    return-void
.end method

.method private k(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 7

    .line 1
    const-class v6, Lcom/hiya/stingray/notification/BlockedCallNotificationHandler;

    const-string v3, "handle_blocked_call_notification"

    const-string v4, "NOTIFICATION_ITEM_PHONE"

    const/16 v5, 0x1772

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/hiya/stingray/notification/c0/d;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private l(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .line 1
    const-class v0, Lcom/hiya/stingray/notification/BlockedCallNotificationHandler;

    const-string v1, "delete_blocked_call_notification"

    const/16 v2, 0x1772

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/hiya/stingray/notification/c0/d;->f(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Class;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private synthetic m(Landroid/content/Context;Lcom/hiya/stingray/t/s0;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;Lg/g/b/c/r;Landroid/graphics/Bitmap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p6

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/hiya/stingray/notification/c0/e;->q(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/hiya/stingray/t/s0;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;Lg/g/b/c/r;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/notification/c0/e;->d:Li/c/b0/c/c;

    invoke-interface {p1}, Li/c/b0/c/c;->dispose()V

    return-void
.end method

.method private synthetic o(Landroid/content/Context;Lcom/hiya/stingray/t/s0;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;Lg/g/b/c/r;Ljava/lang/Throwable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failed to get notification icon."

    .line 1
    invoke-static {p6, v1, v0}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    .line 2
    invoke-direct/range {v2 .. v8}, Lcom/hiya/stingray/notification/c0/e;->q(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/hiya/stingray/t/s0;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;Lg/g/b/c/r;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/notification/c0/e;->d:Li/c/b0/c/c;

    invoke-interface {p1}, Li/c/b0/c/c;->dispose()V

    return-void
.end method

.method private q(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/hiya/stingray/t/s0;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;Lg/g/b/c/r;)V
    .locals 15

    move-object v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    .line 1
    invoke-virtual/range {p3 .. p3}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v9, v0}, Lcom/hiya/stingray/notification/c0/e;->k(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v12

    .line 2
    invoke-direct/range {p0 .. p1}, Lcom/hiya/stingray/notification/c0/e;->l(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v13

    .line 3
    invoke-virtual {p0, v11}, Lcom/hiya/stingray/notification/c0/d;->h(Lcom/hiya/stingray/notification/p;)V

    .line 4
    invoke-virtual {p0, v11}, Lcom/hiya/stingray/notification/c0/d;->g(Lcom/hiya/stingray/notification/p;)I

    move-result v7

    .line 5
    iget-object v0, v8, Lcom/hiya/stingray/notification/c0/e;->b:Lcom/hiya/stingray/ui/q;

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move v4, v7

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/hiya/stingray/ui/q;->m(Landroid/content/Context;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;ILcom/hiya/stingray/t/s0;Lg/g/b/c/r;)Ljava/lang/String;

    move-result-object v14

    .line 6
    iget-object v0, v8, Lcom/hiya/stingray/notification/c0/e;->b:Lcom/hiya/stingray/ui/q;

    invoke-virtual {p0, v10, v11}, Lcom/hiya/stingray/notification/c0/d;->i(Lcom/hiya/stingray/t/s0;Lcom/hiya/stingray/notification/p;)Z

    move-result v4

    iget-object v1, v8, Lcom/hiya/stingray/notification/c0/e;->c:Lcom/hiya/stingray/manager/u3;

    .line 7
    invoke-virtual {v1}, Lcom/hiya/stingray/manager/u3;->P()Z

    move-result v6

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move v3, v7

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    .line 8
    invoke-virtual/range {v0 .. v7}, Lcom/hiya/stingray/ui/q;->i(Landroid/content/Context;Lcom/hiya/stingray/t/s0;IZLcom/hiya/stingray/ui/o;ZLg/g/b/c/r;)Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-virtual {p0, v10, v11}, Lcom/hiya/stingray/notification/c0/d;->j(Lcom/hiya/stingray/t/s0;Lcom/hiya/stingray/notification/p;)V

    .line 10
    new-instance v10, Landroidx/core/app/j$e;

    const-string v0, "blocked"

    invoke-direct {v10, v9, v0}, Landroidx/core/app/j$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, v10

    move-object v3, v14

    move-object/from16 v5, p2

    move-object v6, v12

    move-object v7, v13

    invoke-virtual/range {v0 .. v7}, Lcom/hiya/stingray/notification/c0/d;->d(Landroid/content/Context;Landroidx/core/app/j$e;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroidx/core/app/j$e;

    const-string v0, "notification"

    .line 11
    invoke-virtual {v9, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 12
    invoke-virtual {v10}, Landroidx/core/app/j$e;->b()Landroid/app/Notification;

    move-result-object v1

    const/16 v2, 0x1b59

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/hiya/stingray/t/s0;Landroid/content/Context;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;ZLg/g/b/c/r;)Z
    .locals 9

    .line 1
    iget-object p5, p0, Lcom/hiya/stingray/notification/c0/e;->b:Lcom/hiya/stingray/ui/q;

    invoke-virtual {p5, p2, p3, p4}, Lcom/hiya/stingray/ui/q;->k(Landroid/content/Context;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;)Li/c/b0/b/v;

    move-result-object p5

    .line 2
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p5, v0}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p5

    .line 3
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p5, v0}, Li/c/b0/b/v;->observeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p5

    new-instance v7, Lcom/hiya/stingray/notification/c0/a;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/hiya/stingray/notification/c0/a;-><init>(Lcom/hiya/stingray/notification/c0/e;Landroid/content/Context;Lcom/hiya/stingray/t/s0;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;Lg/g/b/c/r;)V

    new-instance v8, Lcom/hiya/stingray/notification/c0/b;

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/hiya/stingray/notification/c0/b;-><init>(Lcom/hiya/stingray/notification/c0/e;Landroid/content/Context;Lcom/hiya/stingray/t/s0;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;Lg/g/b/c/r;)V

    .line 4
    invoke-virtual {p5, v7, v8}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/notification/c0/e;->d:Li/c/b0/c/c;

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic n(Landroid/content/Context;Lcom/hiya/stingray/t/s0;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;Lg/g/b/c/r;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/hiya/stingray/notification/c0/e;->m(Landroid/content/Context;Lcom/hiya/stingray/t/s0;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;Lg/g/b/c/r;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public synthetic p(Landroid/content/Context;Lcom/hiya/stingray/t/s0;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;Lg/g/b/c/r;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/hiya/stingray/notification/c0/e;->o(Landroid/content/Context;Lcom/hiya/stingray/t/s0;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;Lg/g/b/c/r;Ljava/lang/Throwable;)V

    return-void
.end method
