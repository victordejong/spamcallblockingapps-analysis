.class public final Lcom/hiya/stingray/notification/c0/j;
.super Lcom/hiya/stingray/notification/c0/d;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/notification/c0/f;


# instance fields
.field private b:Li/c/b0/c/c;

.field private c:Li/c/b0/c/c;

.field private final d:Lcom/hiya/stingray/manager/u3;

.field private final e:Lcom/hiya/stingray/ui/q;

.field private final f:Lcom/hiya/stingray/manager/e1;

.field private final g:Lcom/hiya/stingray/r/a;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/i1;Lcom/hiya/stingray/manager/u3;Lcom/hiya/stingray/ui/q;Lcom/hiya/stingray/manager/e1;Lcom/hiya/stingray/r/a;)V
    .locals 1

    const-string v0, "appSettingsManager"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumManager"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "presenterHelper"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsManager"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userReportsExperiment"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/notification/c0/d;-><init>(Lcom/hiya/stingray/manager/i1;)V

    iput-object p2, p0, Lcom/hiya/stingray/notification/c0/j;->d:Lcom/hiya/stingray/manager/u3;

    iput-object p3, p0, Lcom/hiya/stingray/notification/c0/j;->e:Lcom/hiya/stingray/ui/q;

    iput-object p4, p0, Lcom/hiya/stingray/notification/c0/j;->f:Lcom/hiya/stingray/manager/e1;

    iput-object p5, p0, Lcom/hiya/stingray/notification/c0/j;->g:Lcom/hiya/stingray/r/a;

    return-void
.end method

.method public static final synthetic k(Lcom/hiya/stingray/notification/c0/j;)Lcom/hiya/stingray/manager/e1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/notification/c0/j;->f:Lcom/hiya/stingray/manager/e1;

    return-object p0
.end method

.method public static final synthetic l(Lcom/hiya/stingray/notification/c0/j;)Li/c/b0/c/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/notification/c0/j;->b:Li/c/b0/c/c;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "disposable"

    invoke-static {p0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic m(Lcom/hiya/stingray/notification/c0/j;)Li/c/b0/c/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/notification/c0/j;->c:Li/c/b0/c/c;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "experimentDisposable"

    invoke-static {p0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic n(Lcom/hiya/stingray/notification/c0/j;Lcom/hiya/stingray/t/s0;Landroid/content/Context;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;ZLg/g/b/c/r;Z)Z
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/hiya/stingray/notification/c0/j;->s(Lcom/hiya/stingray/t/s0;Landroid/content/Context;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;ZLg/g/b/c/r;Z)Z

    move-result p0

    return p0
.end method

.method public static final synthetic o(Lcom/hiya/stingray/notification/c0/j;Landroid/content/Context;Landroidx/core/app/j$e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/notification/c0/j;->u(Landroid/content/Context;Landroidx/core/app/j$e;)V

    return-void
.end method

.method private final p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    const-class v8, Lcom/hiya/stingray/notification/PostCallNotificationHandler;

    const/16 v6, 0x1b5d

    const-string v7, "NOTIFICATION_ITEM_PHONE"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 2
    invoke-super/range {v0 .. v8}, Lcom/hiya/stingray/notification/c0/d;->c(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method private final q(Landroid/content/Context;Ljava/lang/String;Z)Landroid/app/PendingIntent;
    .locals 7

    if-eqz p3, :cond_0

    const-string p3, "handle_missed_call_notification"

    goto :goto_0

    :cond_0
    const-string p3, "handle_post_call_notification"

    :goto_0
    move-object v3, p3

    const/16 v5, 0x1775

    .line 1
    const-class v6, Lcom/hiya/stingray/notification/PostCallNotificationHandler;

    const-string v4, "NOTIFICATION_ITEM_PHONE"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/hiya/stingray/notification/c0/d;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private final r(Landroid/content/Context;Z)Landroid/app/PendingIntent;
    .locals 2

    .line 1
    const-class p2, Lcom/hiya/stingray/notification/PostCallNotificationHandler;

    const-string v0, "delete_call_notification"

    const/16 v1, 0x1775

    .line 2
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/hiya/stingray/notification/c0/d;->f(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Class;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private final s(Lcom/hiya/stingray/t/s0;Landroid/content/Context;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;ZLg/g/b/c/r;Z)Z
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p7

    if-eqz v13, :cond_0

    .line 1
    sget-object v0, Lcom/hiya/stingray/notification/p;->POST_CALL_MISSED:Lcom/hiya/stingray/notification/p;

    invoke-virtual {v8, v0}, Lcom/hiya/stingray/notification/c0/d;->h(Lcom/hiya/stingray/notification/p;)V

    .line 2
    invoke-virtual {v8, v0}, Lcom/hiya/stingray/notification/c0/d;->g(Lcom/hiya/stingray/notification/p;)I

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/hiya/stingray/notification/p;->POST_CALL:Lcom/hiya/stingray/notification/p;

    invoke-virtual {v8, v0}, Lcom/hiya/stingray/notification/c0/d;->g(Lcom/hiya/stingray/notification/p;)I

    move-result v0

    :goto_0
    move v15, v0

    .line 4
    new-instance v7, Lcom/hiya/stingray/notification/c0/j$h;

    invoke-direct {v7, v8, v14, v11}, Lcom/hiya/stingray/notification/c0/j$h;-><init>(Lcom/hiya/stingray/notification/c0/j;ZLcom/hiya/stingray/notification/p;)V

    if-eqz v14, :cond_1

    const v0, 0x7f110221

    .line 5
    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, v8, Lcom/hiya/stingray/notification/c0/j;->e:Lcom/hiya/stingray/ui/q;

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move v4, v15

    move-object/from16 v5, p1

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/hiya/stingray/ui/q;->m(Landroid/content/Context;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;ILcom/hiya/stingray/t/s0;Lg/g/b/c/r;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v6, v0

    const-string v0, "if (inExperiment) {\n    \u2026e\n            )\n        }"

    .line 7
    invoke-static {v6, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v14, :cond_2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v8, Lcom/hiya/stingray/notification/c0/j;->e:Lcom/hiya/stingray/ui/q;

    move-object/from16 v5, p6

    invoke-virtual {v1, v10, v12, v9, v5}, Lcom/hiya/stingray/ui/q;->l(Landroid/content/Context;Lcom/hiya/stingray/ui/o;Lcom/hiya/stingray/t/s0;Lg/g/b/c/r;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hiya/stingray/util/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    move-object/from16 v17, v6

    move-object v9, v7

    goto :goto_2

    :cond_2
    move-object/from16 v5, p6

    .line 9
    iget-object v0, v8, Lcom/hiya/stingray/notification/c0/j;->e:Lcom/hiya/stingray/ui/q;

    .line 10
    invoke-virtual {v8, v9, v11}, Lcom/hiya/stingray/notification/c0/d;->i(Lcom/hiya/stingray/t/s0;Lcom/hiya/stingray/notification/p;)Z

    move-result v4

    .line 11
    iget-object v1, v8, Lcom/hiya/stingray/notification/c0/j;->d:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/u3;->P()Z

    move-result v16

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move v3, v15

    move-object/from16 v5, p4

    move-object/from16 v17, v6

    move/from16 v6, v16

    move-object v9, v7

    move-object/from16 v7, p6

    .line 12
    invoke-virtual/range {v0 .. v7}, Lcom/hiya/stingray/ui/q;->i(Landroid/content/Context;Lcom/hiya/stingray/t/s0;IZLcom/hiya/stingray/ui/o;ZLg/g/b/c/r;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 13
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v0

    const-string v7, "item.phone"

    invoke-static {v0, v7}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v10, v0, v13}, Lcom/hiya/stingray/notification/c0/j;->q(Landroid/content/Context;Ljava/lang/String;Z)Landroid/app/PendingIntent;

    move-result-object v6

    .line 14
    invoke-direct {v8, v10, v13}, Lcom/hiya/stingray/notification/c0/j;->r(Landroid/content/Context;Z)Landroid/app/PendingIntent;

    move-result-object v16

    .line 15
    new-instance v5, Landroidx/core/app/j$e;

    const-string v0, "post"

    invoke-direct {v5, v10, v0}, Landroidx/core/app/j$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v5

    move-object/from16 v3, v17

    move-object/from16 p6, v5

    move-object/from16 v5, v18

    move-object v13, v7

    move-object/from16 v7, v16

    .line 16
    invoke-virtual/range {v0 .. v7}, Lcom/hiya/stingray/notification/c0/d;->d(Landroid/content/Context;Landroidx/core/app/j$e;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroidx/core/app/j$e;

    const/4 v7, 0x1

    if-ne v15, v7, :cond_5

    if-eqz v14, :cond_3

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f1100dc

    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "context.getString(R.string.dialog_yes)"

    invoke-static {v5, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "yes_spam_action"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f1100da

    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "context.getString(R.string.dialog_no)"

    invoke-static {v5, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "no_spam_action"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x1

    goto :goto_4

    .line 19
    :cond_3
    iget-object v0, v8, Lcom/hiya/stingray/notification/c0/j;->d:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3;->P()Z

    move-result v2

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/hiya/stingray/t/s0;->e()Lcom/hiya/stingray/t/n0;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/hiya/stingray/t/n0;->f()Lcom/hiya/stingray/t/m0;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    sget-object v0, Lcom/hiya/stingray/t/m0;->UNCATEGORIZED:Lcom/hiya/stingray/t/m0;

    :goto_3
    move-object v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move/from16 v3, p5

    move-object/from16 v5, p4

    move-object/from16 v6, p1

    const/4 v13, 0x1

    move-object/from16 v7, p2

    .line 21
    invoke-direct/range {v0 .. v7}, Lcom/hiya/stingray/notification/c0/j;->t(Landroidx/core/app/j$e;ZZLcom/hiya/stingray/t/m0;Lcom/hiya/stingray/ui/o;Lcom/hiya/stingray/t/s0;Landroid/content/Context;)V

    .line 22
    :goto_4
    iget-object v0, v8, Lcom/hiya/stingray/notification/c0/j;->e:Lcom/hiya/stingray/ui/q;

    invoke-virtual {v0, v10, v11, v12}, Lcom/hiya/stingray/ui/q;->k(Landroid/content/Context;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;)Li/c/b0/b/v;

    move-result-object v0

    .line 23
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    .line 24
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->observeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    .line 25
    new-instance v1, Lcom/hiya/stingray/notification/c0/j$e;

    move-object/from16 v2, p6

    invoke-direct {v1, v8, v10, v2, v9}, Lcom/hiya/stingray/notification/c0/j$e;-><init>(Lcom/hiya/stingray/notification/c0/j;Landroid/content/Context;Landroidx/core/app/j$e;Lkotlin/w/b/a;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->doAfterTerminate(Li/c/b0/d/a;)Li/c/b0/b/v;

    move-result-object v0

    .line 26
    new-instance v1, Lcom/hiya/stingray/notification/c0/j$f;

    invoke-direct {v1, v2}, Lcom/hiya/stingray/notification/c0/j$f;-><init>(Landroidx/core/app/j$e;)V

    .line 27
    sget-object v2, Lcom/hiya/stingray/notification/c0/j$g;->f:Lcom/hiya/stingray/notification/c0/j$g;

    .line 28
    invoke-virtual {v0, v1, v2}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    const-string v1, "presenterHelper.getNotif\u2026                       })"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v8, Lcom/hiya/stingray/notification/c0/j;->b:Li/c/b0/c/c;

    goto :goto_5

    :cond_5
    move-object/from16 v2, p6

    const/4 v13, 0x1

    .line 29
    invoke-direct {v8, v10, v2}, Lcom/hiya/stingray/notification/c0/j;->u(Landroid/content/Context;Landroidx/core/app/j$e;)V

    .line 30
    invoke-interface {v9}, Lkotlin/w/b/a;->invoke()Ljava/lang/Object;

    :goto_5
    return v13
.end method

.method private final t(Landroidx/core/app/j$e;ZZLcom/hiya/stingray/t/m0;Lcom/hiya/stingray/ui/o;Lcom/hiya/stingray/t/s0;Landroid/content/Context;)V
    .locals 16

    move-object/from16 v6, p7

    .line 1
    sget-object v0, Lcom/hiya/stingray/notification/c0/i;->b:[I

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v7, "context.getString(R.string.notification_report)"

    const v8, 0x7f110226

    const-string v1, "context.getString(R.string.notification_upgrade)"

    const v2, 0x7f11022a

    const-string v9, "context.getString(R.stri\u2026notification_add_contact)"

    const v10, 0x7f11021d

    const-string v11, "context.getString(R.string.notification_call)"

    const v12, 0x7f11021f

    const-string v13, "context.getString(R.string.notification_message)"

    const v14, 0x7f110222

    const-string v15, "item.phone"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    if-eqz p3, :cond_0

    .line 2
    invoke-virtual/range {p6 .. p6}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v15}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "upgrade_action"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v3

    move-object/from16 v3, p7

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual/range {p6 .. p6}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v11}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "call_action"

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual/range {p6 .. p6}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v13}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "text_action"

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5
    :cond_0
    invoke-virtual/range {p6 .. p6}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v15}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "upgrade_action"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v3

    move-object/from16 v3, p7

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual/range {p6 .. p6}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v9}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "add_contact_action"

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual/range {p6 .. p6}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v13}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "text_action"

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    if-eqz p3, :cond_1

    .line 8
    invoke-virtual/range {p6 .. p6}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v11}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "call_action"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p7

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual/range {p6 .. p6}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v13}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "text_action"

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 10
    :cond_1
    invoke-virtual/range {p6 .. p6}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v9}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "add_contact_action"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p7

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual/range {p6 .. p6}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v13}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "text_action"

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 12
    :pswitch_2
    invoke-virtual/range {p6 .. p6}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v11}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "call_action"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p7

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual/range {p6 .. p6}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v13}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "text_action"

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    const-string v9, "context.getString(R.string.notification_block)"

    const v10, 0x7f11021e

    if-eqz p2, :cond_2

    .line 14
    invoke-virtual/range {p6 .. p6}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v9}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "block_action"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p7

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual/range {p6 .. p6}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "report_action"

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 16
    :cond_2
    invoke-virtual/range {p6 .. p6}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v15}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "upgrade_action"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v3

    move-object/from16 v3, p7

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual/range {p6 .. p6}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v9}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "block_action"

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual/range {p6 .. p6}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "report_action"

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    if-eqz p3, :cond_3

    .line 19
    invoke-virtual/range {p6 .. p6}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v11}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "call_action"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p7

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual/range {p6 .. p6}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v13}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "text_action"

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 21
    :cond_3
    invoke-virtual/range {p6 .. p6}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v9}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "add_contact_action"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p7

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual/range {p6 .. p6}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "report_action"

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 23
    :pswitch_5
    sget-object v0, Lcom/hiya/stingray/notification/c0/i;->a:[I

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    goto/16 :goto_0

    :cond_4
    if-eqz p3, :cond_5

    .line 24
    invoke-virtual/range {p6 .. p6}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v11}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "call_action"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p7

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual/range {p6 .. p6}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v13}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "text_action"

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 26
    :cond_5
    invoke-virtual/range {p6 .. p6}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v9}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "add_contact_action"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p7

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual/range {p6 .. p6}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v13}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "text_action"

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    if-eqz p3, :cond_7

    .line 28
    invoke-virtual/range {p6 .. p6}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v11}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "call_action"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p7

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual/range {p6 .. p6}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v13}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "text_action"

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 30
    :cond_7
    invoke-virtual/range {p6 .. p6}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v9}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "add_contact_action"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p7

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual/range {p6 .. p6}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v13}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "text_action"

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    if-eqz p2, :cond_a

    if-eqz p3, :cond_9

    .line 32
    invoke-virtual/range {p6 .. p6}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v11}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "call_action"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p7

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual/range {p6 .. p6}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v13}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "text_action"

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 34
    :cond_9
    invoke-virtual/range {p6 .. p6}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v9}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "add_contact_action"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p7

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual/range {p6 .. p6}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v13}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "text_action"

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    if-eqz p3, :cond_b

    .line 36
    invoke-virtual/range {p6 .. p6}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v15}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "upgrade_action"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v3

    move-object/from16 v3, p7

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual/range {p6 .. p6}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v11}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "call_action"

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual/range {p6 .. p6}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v13}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "text_action"

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_b
    invoke-virtual/range {p6 .. p6}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v15}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "upgrade_action"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v3

    move-object/from16 v3, p7

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual/range {p6 .. p6}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v9}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "add_contact_action"

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual/range {p6 .. p6}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v13}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "text_action"

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/notification/c0/j;->p(Landroidx/core/app/j$e;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final u(Landroid/content/Context;Landroidx/core/app/j$e;)V
    .locals 1

    const-string v0, "notification"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/app/NotificationManager;

    const/16 v0, 0x1b5d

    .line 2
    invoke-virtual {p2}, Landroidx/core/app/j$e;->b()Landroid/app/Notification;

    move-result-object p2

    .line 3
    invoke-virtual {p1, v0, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lcom/hiya/stingray/t/s0;Landroid/content/Context;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;ZLg/g/b/c/r;)Z
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    const-string v0, "item"

    invoke-static {v9, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    move-object/from16 v11, p2

    invoke-static {v11, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationType"

    invoke-static {v10, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayType"

    move-object/from16 v12, p4

    invoke-static {v12, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, v8, Lcom/hiya/stingray/notification/c0/j;->g:Lcom/hiya/stingray/r/a;

    invoke-virtual {v0, v9, v10}, Lcom/hiya/stingray/r/a;->b(Lcom/hiya/stingray/t/s0;Lcom/hiya/stingray/notification/p;)Li/c/b0/b/e0;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/hiya/stingray/s/c;->d()Li/c/b0/b/j0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->e(Li/c/b0/b/j0;)Li/c/b0/b/e0;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/hiya/stingray/notification/c0/j$a;->f:Lcom/hiya/stingray/notification/c0/j$a;

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->y(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/hiya/stingray/notification/c0/j$b;

    invoke-direct {v1, v8}, Lcom/hiya/stingray/notification/c0/j$b;-><init>(Lcom/hiya/stingray/notification/c0/j;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->g(Li/c/b0/d/a;)Li/c/b0/b/e0;

    move-result-object v13

    .line 5
    new-instance v14, Lcom/hiya/stingray/notification/c0/j$c;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/hiya/stingray/notification/c0/j$c;-><init>(Lcom/hiya/stingray/notification/c0/j;Lcom/hiya/stingray/t/s0;Landroid/content/Context;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;ZLg/g/b/c/r;)V

    .line 6
    new-instance v15, Lcom/hiya/stingray/notification/c0/j$d;

    move-object v0, v15

    invoke-direct/range {v0 .. v7}, Lcom/hiya/stingray/notification/c0/j$d;-><init>(Lcom/hiya/stingray/notification/c0/j;Lcom/hiya/stingray/t/s0;Landroid/content/Context;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;ZLg/g/b/c/r;)V

    .line 7
    invoke-virtual {v13, v14, v15}, Li/c/b0/b/e0;->B(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    const-string v1, "userReportsExperiment.is\u2026false)\n                })"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v8, Lcom/hiya/stingray/notification/c0/j;->c:Li/c/b0/c/c;

    const/4 v0, 0x1

    return v0
.end method
