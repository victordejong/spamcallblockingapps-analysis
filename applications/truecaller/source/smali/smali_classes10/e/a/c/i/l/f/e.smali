.class public final Le/a/c/i/l/f/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/i/l/f/a;


# instance fields
.field public a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/Context;

.field public final c:Ls1/w/f;

.field public final d:Le/a/b0/m/c/a;

.field public final e:Le/a/c/b/j;

.field public final f:Le/a/c/i/l/g/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ls1/w/f;Le/a/b0/m/c/a;Le/a/c/b/j;Le/a/c/i/l/g/d;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "Parser_Async"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "appContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addressProfileLoader"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsStatusProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateNotificationBuilder"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/i/l/f/e;->b:Landroid/content/Context;

    iput-object p2, p0, Le/a/c/i/l/f/e;->c:Ls1/w/f;

    iput-object p3, p0, Le/a/c/i/l/f/e;->d:Le/a/b0/m/c/a;

    iput-object p4, p0, Le/a/c/i/l/f/e;->e:Le/a/c/b/j;

    iput-object p5, p0, Le/a/c/i/l/f/e;->f:Le/a/c/i/l/g/d;

    .line 2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    const-string p2, "Collections.synchronizedSet(HashSet<Int>())"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/c/i/l/f/e;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a(Le/a/c/r/k/a;Le/a/c/i/l/f/f;Le/a/c/i/l/e/a;IZZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v10, p4

    const-string v3, "customSmartNotifwithActions"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "smartNotificationsHelper"

    move-object/from16 v4, p2

    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "notificationBannerHelper"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v3, v1, Le/a/c/r/k/a;->a:Le/a/c/r/k/b;

    .line 2
    iget-object v1, v1, Le/a/c/r/k/a;->b:Le/a/c/r/k/c;

    .line 3
    invoke-virtual/range {p0 .. p0}, Le/a/c/i/l/f/e;->f()Le/a/h4/n;

    move-result-object v4

    const-string v5, "non_spam_sms_v2"

    invoke-interface {v4, v5}, Le/a/h4/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4
    new-instance v5, Ln3/k/a/q;

    iget-object v6, v0, Le/a/c/i/l/f/e;->b:Landroid/content/Context;

    invoke-direct {v5, v6, v4}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    sget v4, Lcom/truecaller/insights/R$layout;->insights_custom_notif_big:I

    const/4 v6, 0x0

    .line 6
    invoke-virtual {v0, v4, v3, v1, v6}, Le/a/c/i/l/f/e;->g(ILe/a/c/r/k/b;Le/a/c/r/k/c;Z)Landroid/widget/RemoteViews;

    move-result-object v7

    const/4 v8, 0x1

    .line 7
    invoke-virtual {v0, v4, v3, v1, v8}, Le/a/c/i/l/f/e;->g(ILe/a/c/r/k/b;Le/a/c/r/k/c;Z)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 8
    sget v9, Lcom/truecaller/insights/R$layout;->insights_custom_notif_small:I

    .line 9
    invoke-virtual {v0, v9, v3, v1, v6}, Le/a/c/i/l/f/e;->g(ILe/a/c/r/k/b;Le/a/c/r/k/c;Z)Landroid/widget/RemoteViews;

    move-result-object v9

    .line 10
    iget-object v11, v0, Le/a/c/i/l/f/e;->b:Landroid/content/Context;

    .line 11
    iget-object v12, v3, Le/a/c/r/k/b;->c:Ljava/lang/CharSequence;

    .line 12
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 13
    iget-object v13, v3, Le/a/c/r/k/b;->k:Ljava/util/List;

    const-string v14, "context"

    .line 14
    invoke-static {v11, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "contentText"

    invoke-static {v12, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "contentTextColor"

    invoke-static {v13, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v14, Landroid/text/SpannableString;

    invoke-direct {v14, v12}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 16
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Le/a/c/r/j/b0;

    .line 17
    iget-object v15, v13, Le/a/c/r/j/b0;->c:Ljava/lang/Integer;

    if-eqz v15, :cond_0

    .line 18
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    .line 19
    invoke-static {v11, v15}, Le/a/l4/k;->M(Landroid/content/Context;I)I

    move-result v15

    .line 20
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v8, v15}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 21
    iget v15, v13, Le/a/c/r/j/b0;->a:I

    .line 22
    iget v13, v13, Le/a/c/r/j/b0;->b:I

    const/16 v6, 0x21

    .line 23
    invoke-virtual {v14, v8, v15, v13, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const/4 v6, 0x0

    const/4 v8, 0x1

    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {v0, v5}, Le/a/c/i/l/f/e;->l(Ln3/k/a/q;)V

    .line 25
    new-instance v6, Ln3/k/a/r;

    invoke-direct {v6}, Ln3/k/a/r;-><init>()V

    invoke-virtual {v5, v6}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    .line 26
    iget-object v6, v3, Le/a/c/r/k/b;->i:Ljava/lang/String;

    .line 27
    invoke-virtual {v5, v6}, Ln3/k/a/q;->y(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 28
    invoke-virtual {v5, v14}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 29
    iget-object v6, v3, Le/a/c/r/k/b;->d:Ljava/lang/CharSequence;

    .line 30
    invoke-virtual {v5, v6}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 31
    iput-object v7, v5, Ln3/k/a/q;->H:Landroid/widget/RemoteViews;

    .line 32
    iput-object v9, v5, Ln3/k/a/q;->G:Landroid/widget/RemoteViews;

    .line 33
    iput-object v4, v5, Ln3/k/a/q;->I:Landroid/widget/RemoteViews;

    const/4 v6, 0x0

    .line 34
    iput v6, v5, Ln3/k/a/q;->E:I

    const/4 v8, 0x2

    .line 35
    iput v8, v5, Ln3/k/a/q;->l:I

    const/16 v8, 0x10

    const/4 v11, 0x1

    .line 36
    invoke-virtual {v5, v8, v11}, Ln3/k/a/q;->p(IZ)V

    .line 37
    iget-object v1, v1, Le/a/c/r/k/c;->d:Le/a/c/r/k/e;

    const/4 v12, 0x0

    if-eqz v1, :cond_2

    .line 38
    iget-object v1, v1, Le/a/c/r/k/e;->b:Landroid/app/PendingIntent;

    goto :goto_1

    :cond_2
    move-object v1, v12

    .line 39
    :goto_1
    iget-object v8, v5, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object v1, v8, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 40
    invoke-virtual {v5}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v1

    const-string v5, "notificationBuilder.build()"

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v5, v3, Le/a/c/r/k/b;->j:Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    .line 42
    invoke-virtual {v5}, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->getSenderId()Ljava/lang/String;

    move-result-object v5

    .line 43
    invoke-virtual {v0, v1, v5, v7, v10}, Le/a/c/i/l/f/e;->i(Landroid/app/Notification;Ljava/lang/String;Landroid/widget/RemoteViews;I)V

    .line 44
    iget-object v5, v3, Le/a/c/r/k/b;->j:Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    .line 45
    invoke-virtual {v5}, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->getSenderId()Ljava/lang/String;

    move-result-object v5

    .line 46
    invoke-virtual {v0, v1, v5, v4, v10}, Le/a/c/i/l/f/e;->i(Landroid/app/Notification;Ljava/lang/String;Landroid/widget/RemoteViews;I)V

    .line 47
    iget-object v4, v3, Le/a/c/r/k/b;->j:Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    .line 48
    invoke-virtual {v4}, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->getSenderId()Ljava/lang/String;

    move-result-object v4

    .line 49
    invoke-virtual {v0, v1, v4, v9, v10}, Le/a/c/i/l/f/e;->i(Landroid/app/Notification;Ljava/lang/String;Landroid/widget/RemoteViews;I)V

    .line 50
    iget-object v13, v3, Le/a/c/r/k/b;->l:Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;

    if-eqz v13, :cond_7

    .line 51
    iget-object v3, v0, Le/a/c/i/l/f/e;->e:Le/a/c/b/j;

    invoke-interface {v3}, Le/a/c/b/j;->v()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 52
    invoke-virtual {v13}, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->getImage()Ljava/lang/String;

    move-result-object v3

    .line 53
    sget-object v4, Le/a/z3/i/e$a;->c:Le/a/z3/i/e$a;

    const-string v5, "size"

    .line 54
    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_5

    .line 55
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    move v6, v11

    :cond_3
    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    move-object v3, v12

    :goto_2
    if-eqz v3, :cond_5

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 56
    :cond_5
    new-instance v3, Le/a/z3/i/a;

    invoke-direct {v3, v12, v4}, Le/a/z3/i/a;-><init>(Landroid/net/Uri;Le/a/z3/i/g;)V

    .line 57
    iget-object v4, v0, Le/a/c/i/l/f/e;->b:Landroid/content/Context;

    invoke-static {v3, v4}, Le/a/m0/a1$k;->N0(Le/a/z3/i/a;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 58
    sget v4, Lcom/truecaller/insights/R$id;->bannerImage:I

    invoke-virtual {v7, v4, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 59
    invoke-virtual {v13}, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Le/a/c/i/l/e/a;->b(Ljava/lang/String;)V

    goto :goto_3

    .line 60
    :cond_6
    new-instance v11, Le/a/c/i/l/a;

    .line 61
    iget-object v4, v0, Le/a/c/i/l/f/e;->b:Landroid/content/Context;

    .line 62
    sget v5, Lcom/truecaller/insights/R$id;->bannerImage:I

    .line 63
    iget-object v9, v0, Le/a/c/i/l/f/e;->e:Le/a/c/b/j;

    move-object v3, v11

    move-object v6, v7

    move-object v7, v1

    move/from16 v8, p4

    .line 64
    invoke-direct/range {v3 .. v9}, Le/a/c/i/l/a;-><init>(Landroid/content/Context;ILandroid/widget/RemoteViews;Landroid/app/Notification;ILe/a/c/b/j;)V

    .line 65
    iget-object v3, v0, Le/a/c/i/l/f/e;->b:Landroid/content/Context;

    invoke-static {v3}, Le/a/m0/a1$k;->K1(Landroid/content/Context;)Le/a/z3/e;

    move-result-object v3

    .line 66
    invoke-virtual {v3}, Le/a/z3/e;->x()Le/a/z3/d;

    move-result-object v3

    .line 67
    invoke-virtual {v13}, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->getImage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Le/a/z3/d;->l0(Ljava/lang/String;)Le/a/z3/d;

    .line 68
    new-instance v4, Le/a/c/i/l/f/b;

    invoke-direct {v4, v2, v13}, Le/a/c/i/l/f/b;-><init>(Le/a/c/i/l/e/a;Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;)V

    .line 69
    iput-object v12, v3, Le/f/a/h;->K:Ljava/util/List;

    .line 70
    invoke-virtual {v3, v4}, Le/a/z3/d;->H(Le/f/a/r/g;)Le/f/a/h;

    .line 71
    invoke-virtual {v3, v11}, Le/f/a/h;->M(Le/f/a/r/k/k;)Le/f/a/r/k/k;

    .line 72
    :cond_7
    :goto_3
    invoke-virtual/range {p0 .. p0}, Le/a/c/i/l/f/e;->f()Le/a/h4/n;

    move-result-object v2

    invoke-interface {v2, v10, v1}, Le/a/h4/n;->g(ILandroid/app/Notification;)V

    .line 73
    iget-object v1, v0, Le/a/c/i/l/f/e;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 74
    invoke-virtual/range {p0 .. p0}, Le/a/c/i/l/f/e;->j()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Le/a/c/i/l/f/e;->a:Ljava/util/Set;

    .line 75
    :cond_8
    iget-object v1, v0, Le/a/c/i/l/f/e;->a:Ljava/util/Set;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v1, v0, Le/a/c/i/l/f/e;->a:Ljava/util/Set;

    invoke-virtual {v0, v1}, Le/a/c/i/l/f/e;->n(Ljava/util/Collection;)V

    .line 77
    invoke-virtual/range {p0 .. p0}, Le/a/c/i/l/f/e;->o()V

    return-void
.end method

.method public b(I)V
    .locals 6

    .line 1
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v1, p0, Le/a/c/i/l/f/e;->c:Ls1/w/f;

    new-instance v3, Le/a/c/i/l/f/e$a;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, v2}, Le/a/c/i/l/f/e$a;-><init>(Le/a/c/i/l/f/e;ILs1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public c(Le/a/c/r/k/f;I)V
    .locals 12

    const-string v0, "updateNotification"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v7, p0, Le/a/c/i/l/f/e;->f:Le/a/c/i/l/g/d;

    invoke-virtual {p0}, Le/a/c/i/l/f/e;->f()Le/a/h4/n;

    move-result-object v8

    .line 2
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationManager"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "non_spam_sms_v2"

    .line 3
    invoke-interface {v8, v0}, Le/a/h4/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ln3/k/a/q;

    iget-object v2, v7, Le/a/c/i/l/g/d;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    sget v0, Lcom/truecaller/insights/R$layout;->insights_update_notif_small:I

    .line 6
    iget-object v2, p1, Le/a/c/r/k/f;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {v7, v0, p1, v2}, Le/a/c/i/l/g/d;->a(ILe/a/c/r/k/f;Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 8
    sget v0, Lcom/truecaller/insights/R$layout;->insights_update_notif_big:I

    .line 9
    iget-object v2, p1, Le/a/c/r/k/f;->a:Ljava/lang/String;

    .line 10
    invoke-virtual {v7, v0, p1, v2}, Le/a/c/i/l/g/d;->a(ILe/a/c/r/k/f;Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 11
    iget-object v2, v7, Le/a/c/i/l/g/d;->a:Landroid/content/Context;

    .line 12
    iget-object v3, p1, Le/a/c/r/k/f;->d:Ljava/lang/String;

    .line 13
    iget-object v5, p1, Le/a/c/r/k/f;->k:Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    .line 14
    invoke-virtual {v5}, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->isIM()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_0

    .line 15
    sget v5, Lcom/truecaller/insights/R$string;->NotificationSenderTextMessage:I

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v3, v10, v9

    invoke-virtual {v2, v5, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "context.getString(R.stri\u2026rTextMessage, senderName)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_0
    sget v5, Lcom/truecaller/insights/R$string;->NotificationSenderTextSMS:I

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v3, v10, v9

    invoke-virtual {v2, v5, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "context.getString(R.stri\u2026enderTextSMS, senderName)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    :goto_0
    iget-object v3, v7, Le/a/c/i/l/g/d;->a:Landroid/content/Context;

    sget v5, Lcom/truecaller/insights/R$string;->UpdateNotificationContentText:I

    new-array v10, v6, [Ljava/lang/Object;

    .line 18
    iget-object v11, p1, Le/a/c/r/k/f;->a:Ljava/lang/String;

    aput-object v11, v10, v9

    .line 19
    invoke-virtual {v3, v5, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "appContext.getString(R.s\u2026Notification.messageText)"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget v5, Lcom/truecaller/insights/R$drawable;->ic_notification_message:I

    .line 21
    iget-object v10, v1, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v5, v10, Landroid/app/Notification;->icon:I

    const-string v5, "setSmallIcon(R.drawable.ic_notification_message)"

    .line 22
    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v7, Le/a/c/i/l/g/d;->a:Landroid/content/Context;

    sget v10, Lcom/truecaller/insights/R$color;->accent_default:I

    .line 23
    sget-object v11, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 24
    invoke-static {v5, v10}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v5

    .line 25
    iput v5, v1, Ln3/k/a/q;->D:I

    .line 26
    new-instance v5, Ln3/k/a/r;

    invoke-direct {v5}, Ln3/k/a/r;-><init>()V

    invoke-virtual {v1, v5}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    .line 27
    invoke-virtual {v1, v2}, Ln3/k/a/q;->y(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 28
    iget-object v2, p1, Le/a/c/r/k/f;->d:Ljava/lang/String;

    .line 29
    invoke-virtual {v1, v2}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 30
    invoke-virtual {v1, v3}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 31
    iput-object v4, v1, Ln3/k/a/q;->G:Landroid/widget/RemoteViews;

    .line 32
    iput-object v0, v1, Ln3/k/a/q;->H:Landroid/widget/RemoteViews;

    .line 33
    iput-object v4, v1, Ln3/k/a/q;->I:Landroid/widget/RemoteViews;

    .line 34
    iput v9, v1, Ln3/k/a/q;->E:I

    const/4 v2, 0x2

    .line 35
    iput v2, v1, Ln3/k/a/q;->l:I

    const/16 v2, 0x10

    .line 36
    invoke-virtual {v1, v2, v6}, Ln3/k/a/q;->p(IZ)V

    .line 37
    iget-object v2, p1, Le/a/c/r/k/f;->h:Landroid/app/PendingIntent;

    .line 38
    iget-object v3, v1, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object v2, v3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 39
    invoke-virtual {v1}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v9

    const-string v1, "notificationBuilder.build()"

    invoke-static {v9, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v10, p1, Le/a/c/r/k/f;->e:Landroid/net/Uri;

    if-eqz v10, :cond_1

    .line 41
    iget v6, p1, Le/a/c/r/k/f;->f:I

    move-object v1, v7

    move-object v2, v9

    move-object v3, v10

    move v5, p2

    .line 42
    invoke-virtual/range {v1 .. v6}, Le/a/c/i/l/g/d;->b(Landroid/app/Notification;Landroid/net/Uri;Landroid/widget/RemoteViews;II)V

    .line 43
    iget v6, p1, Le/a/c/r/k/f;->f:I

    move-object v4, v0

    .line 44
    invoke-virtual/range {v1 .. v6}, Le/a/c/i/l/g/d;->b(Landroid/app/Notification;Landroid/net/Uri;Landroid/widget/RemoteViews;II)V

    .line 45
    :cond_1
    invoke-interface {v8, p2, v9}, Le/a/h4/n;->g(ILandroid/app/Notification;)V

    .line 46
    iget-object p1, p0, Le/a/c/i/l/f/e;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 47
    invoke-virtual {p0}, Le/a/c/i/l/f/e;->j()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Le/a/c/i/l/f/e;->a:Ljava/util/Set;

    .line 48
    :cond_2
    iget-object p1, p0, Le/a/c/i/l/f/e;->a:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object p1, p0, Le/a/c/i/l/f/e;->a:Ljava/util/Set;

    invoke-virtual {p0, p1}, Le/a/c/i/l/f/e;->n(Ljava/util/Collection;)V

    .line 50
    invoke-virtual {p0}, Le/a/c/i/l/f/e;->o()V

    return-void
.end method

.method public d(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/i/l/f/e;->a:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Le/a/c/i/l/f/e;->j()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Le/a/c/i/l/f/e;->a:Ljava/util/Set;

    .line 3
    :cond_2
    iget-object v0, p0, Le/a/c/i/l/f/e;->a:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public e(Le/a/c/v/h/g;)V
    .locals 5

    const-string v0, "notificationAttributes"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/c/i/l/f/e;->f()Le/a/h4/n;

    move-result-object v0

    const-string v1, "non_spam_sms_v2"

    invoke-interface {v0, v1}, Le/a/h4/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ln3/k/a/q;

    iget-object v2, p0, Le/a/c/i/l/f/e;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    sget v0, Lcom/truecaller/insights/R$layout;->insights_custom_notif_big:I

    invoke-virtual {p0, v0, p1}, Le/a/c/i/l/f/e;->h(ILe/a/c/v/h/g;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 4
    sget v2, Lcom/truecaller/insights/R$layout;->insights_custom_notif_small:I

    invoke-virtual {p0, v2, p1}, Le/a/c/i/l/f/e;->h(ILe/a/c/v/h/g;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 5
    invoke-virtual {p0, v1}, Le/a/c/i/l/f/e;->l(Ln3/k/a/q;)V

    .line 6
    new-instance v3, Ln3/k/a/r;

    invoke-direct {v3}, Ln3/k/a/r;-><init>()V

    invoke-virtual {v1, v3}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    .line 7
    iget-object v3, p1, Le/a/c/v/h/g;->e:Ljava/lang/String;

    .line 8
    invoke-virtual {v1, v3}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u2022 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v4, p1, Le/a/c/v/h/g;->g:Ljava/lang/String;

    .line 11
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-virtual {v1, v3}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 13
    iput-object v0, v1, Ln3/k/a/q;->H:Landroid/widget/RemoteViews;

    .line 14
    iput-object v2, v1, Ln3/k/a/q;->G:Landroid/widget/RemoteViews;

    .line 15
    iput-object v0, v1, Ln3/k/a/q;->I:Landroid/widget/RemoteViews;

    const/4 v3, 0x0

    .line 16
    iput v3, v1, Ln3/k/a/q;->E:I

    const/4 v3, 0x2

    .line 17
    iput v3, v1, Ln3/k/a/q;->l:I

    .line 18
    iget-object v3, p1, Le/a/c/v/h/g;->o:Le/a/c/r/k/e;

    if-eqz v3, :cond_0

    .line 19
    iget-object v3, v3, Le/a/c/r/k/e;->b:Landroid/app/PendingIntent;

    if-eqz v3, :cond_0

    .line 20
    iput-object v3, v1, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    :cond_0
    const/4 v3, 0x1

    const/16 v4, 0x10

    .line 21
    invoke-virtual {v1, v4, v3}, Ln3/k/a/q;->p(IZ)V

    .line 22
    iget-object v3, p1, Le/a/c/v/h/g;->p:Landroid/app/PendingIntent;

    if-eqz v3, :cond_1

    .line 23
    iget-object v4, v1, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object v3, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 24
    :cond_1
    invoke-virtual {v1}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v1

    const-string v3, "with(notificationBuilder\u2026        build()\n        }"

    .line 25
    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v3, p1, Le/a/c/v/h/g;->c:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 27
    iget v4, p1, Le/a/c/v/h/g;->q:I

    .line 28
    invoke-virtual {p0, v1, v3, v0, v4}, Le/a/c/i/l/f/e;->i(Landroid/app/Notification;Ljava/lang/String;Landroid/widget/RemoteViews;I)V

    .line 29
    iget v0, p1, Le/a/c/v/h/g;->q:I

    .line 30
    invoke-virtual {p0, v1, v3, v2, v0}, Le/a/c/i/l/f/e;->i(Landroid/app/Notification;Ljava/lang/String;Landroid/widget/RemoteViews;I)V

    .line 31
    :cond_2
    invoke-virtual {p0}, Le/a/c/i/l/f/e;->f()Le/a/h4/n;

    move-result-object v0

    .line 32
    iget v2, p1, Le/a/c/v/h/g;->q:I

    .line 33
    invoke-interface {v0, v2, v1}, Le/a/h4/n;->g(ILandroid/app/Notification;)V

    .line 34
    iget-object v0, p0, Le/a/c/i/l/f/e;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35
    invoke-virtual {p0}, Le/a/c/i/l/f/e;->j()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Le/a/c/i/l/f/e;->a:Ljava/util/Set;

    .line 36
    :cond_3
    iget-object v0, p0, Le/a/c/i/l/f/e;->a:Ljava/util/Set;

    .line 37
    iget p1, p1, Le/a/c/v/h/g;->q:I

    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object p1, p0, Le/a/c/i/l/f/e;->a:Ljava/util/Set;

    invoke-virtual {p0, p1}, Le/a/c/i/l/f/e;->n(Ljava/util/Collection;)V

    .line 40
    invoke-virtual {p0}, Le/a/c/i/l/f/e;->o()V

    return-void
.end method

.method public final f()Le/a/h4/n;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/i/l/f/e;->b:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Le/a/h4/q/g;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Le/a/h4/q/g;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Le/a/h4/q/g;->n()Le/a/h4/n;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Application class does not implement "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Le/a/h4/q/g;

    invoke-static {v2, v1}, Le/d/c/a/a;->a2(Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g(ILe/a/c/r/k/b;Le/a/c/r/k/c;Z)Landroid/widget/RemoteViews;
    .locals 10

    .line 1
    new-instance v6, Landroid/widget/RemoteViews;

    iget-object v0, p0, Le/a/c/i/l/f/e;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, p1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2
    iget-object v0, p0, Le/a/c/i/l/f/e;->b:Landroid/content/Context;

    .line 3
    iget-object v1, p2, Le/a/c/r/k/b;->a:Ljava/lang/String;

    .line 4
    iget-object v2, p2, Le/a/c/r/k/b;->k:Ljava/util/List;

    const-string v3, "context"

    .line 5
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "contentText"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "contentTextColor"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/c/r/j/b0;

    .line 8
    iget-object v4, v2, Le/a/c/r/j/b0;->c:Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 9
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 10
    invoke-static {v0, v4}, Le/a/l4/k;->M(Landroid/content/Context;I)I

    move-result v4

    .line 11
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 12
    iget v4, v2, Le/a/c/r/j/b0;->a:I

    .line 13
    iget v2, v2, Le/a/c/r/j/b0;->b:I

    const/16 v7, 0x21

    .line 14
    invoke-virtual {v3, v5, v4, v2, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 15
    :cond_1
    sget v0, Lcom/truecaller/insights/R$id;->contentTitle:I

    invoke-virtual {v6, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 16
    iget-object v0, p2, Le/a/c/r/k/b;->b:Ljava/lang/String;

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v7, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v7

    :goto_1
    const/16 v8, 0x8

    if-eqz v0, :cond_3

    .line 18
    sget v0, Lcom/truecaller/insights/R$id;->contentTextContainer:I

    invoke-virtual {v6, v0, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2

    .line 19
    :cond_3
    sget v0, Lcom/truecaller/insights/R$id;->contentText:I

    .line 20
    iget-object v1, p2, Le/a/c/r/k/b;->b:Ljava/lang/String;

    .line 21
    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 22
    sget v0, Lcom/truecaller/insights/R$id;->contentTextContainer:I

    invoke-virtual {v6, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 23
    :goto_2
    iget-object v0, p2, Le/a/c/r/k/b;->f:Ljava/lang/String;

    .line 24
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    move-object v0, v2

    :goto_3
    if-eqz v0, :cond_5

    .line 25
    sget v1, Lcom/truecaller/insights/R$id;->infoRightTitle:I

    invoke-virtual {v6, v1, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 26
    iget-object v3, p2, Le/a/c/r/k/b;->f:Ljava/lang/String;

    .line 27
    invoke-virtual {v6, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 28
    iget-object v3, p2, Le/a/c/r/k/b;->g:Ljava/lang/Integer;

    if-eqz v3, :cond_6

    .line 29
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 30
    iget-object v4, p0, Le/a/c/i/l/f/e;->b:Landroid/content/Context;

    invoke-static {v4, v3}, Le/a/l4/k;->M(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v6, v1, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto :goto_4

    :cond_5
    move-object v0, v2

    :cond_6
    :goto_4
    if-eqz v0, :cond_7

    goto :goto_5

    .line 31
    :cond_7
    sget v0, Lcom/truecaller/insights/R$id;->infoRightTitle:I

    invoke-virtual {v6, v0, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 32
    :goto_5
    iget-object v0, p2, Le/a/c/r/k/b;->m:Ljava/lang/String;

    .line 33
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_6

    :cond_8
    move-object v0, v2

    :goto_6
    if-eqz v0, :cond_9

    .line 34
    sget v1, Lcom/truecaller/insights/R$id;->statusTitle:I

    invoke-virtual {v6, v1, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 35
    invoke-virtual {v6, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_7

    :cond_9
    move-object v0, v2

    :goto_7
    if-eqz v0, :cond_a

    goto :goto_8

    .line 36
    :cond_a
    sget v0, Lcom/truecaller/insights/R$id;->statusTitle:I

    invoke-virtual {v6, v0, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 37
    :goto_8
    iget-object v0, p2, Le/a/c/r/k/b;->h:Le/a/c/r/j/c0;

    if-eqz v0, :cond_f

    .line 38
    iget-object v1, v0, Le/a/c/r/j/c0;->a:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 39
    invoke-static {v1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    move-object v9, v1

    goto :goto_9

    :cond_b
    move-object v9, v2

    :goto_9
    if-eqz v9, :cond_e

    .line 40
    sget v1, Lcom/truecaller/insights/R$id;->infoRightText:I

    invoke-virtual {v6, v1, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 41
    invoke-virtual {v6, v1, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 42
    iget-object v2, v0, Le/a/c/r/j/c0;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_c

    .line 43
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object v3, p0, Le/a/c/i/l/f/e;->b:Landroid/content/Context;

    .line 44
    sget-object v4, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 45
    invoke-static {v3, v2}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v2

    .line 46
    invoke-virtual {v6, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 47
    :cond_c
    iget-object v0, v0, Le/a/c/r/j/c0;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    .line 48
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 49
    iget-object v2, p0, Le/a/c/i/l/f/e;->b:Landroid/content/Context;

    sget v3, Lcom/truecaller/insights/R$drawable;->rectangle_bg_rounded_corner_2dp:I

    invoke-static {v2, v3, v0}, Le/a/l4/k;->N(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 50
    sget v2, Lcom/truecaller/insights/R$id;->infoRightTextBg:I

    invoke-static {v0}, Le/a/b0/q/o;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 51
    iget-object v0, p0, Le/a/c/i/l/f/e;->b:Landroid/content/Context;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v0, v2}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move v2, v4

    .line 52
    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    :cond_d
    move-object v2, v9

    :cond_e
    if-eqz v2, :cond_f

    goto :goto_a

    .line 53
    :cond_f
    sget v0, Lcom/truecaller/insights/R$id;->infoRightText:I

    invoke-virtual {v6, v0, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 54
    :goto_a
    sget v0, Lcom/truecaller/insights/R$layout;->insights_custom_notif_big:I

    if-ne p1, v0, :cond_10

    if-nez p4, :cond_10

    .line 55
    iget-object p1, p2, Le/a/c/r/k/b;->l:Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;

    if-eqz p1, :cond_10

    .line 56
    invoke-virtual {p1}, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->getImage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 57
    sget p1, Lcom/truecaller/insights/R$id;->bannerImage:I

    invoke-virtual {v6, p1, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 58
    :cond_10
    iget-object p1, p2, Le/a/c/r/k/b;->e:Le/a/c/r/j/m;

    .line 59
    iget p4, p1, Le/a/c/r/j/m;->a:I

    .line 60
    iget p1, p1, Le/a/c/r/j/m;->b:I

    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 62
    iget-object p2, p2, Le/a/c/r/k/b;->e:Le/a/c/r/j/m;

    .line 63
    iget p2, p2, Le/a/c/r/j/m;->c:I

    .line 64
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 65
    invoke-virtual {p0, p4, p1, p2, v6}, Le/a/c/i/l/f/e;->k(ILjava/lang/Integer;Ljava/lang/Integer;Landroid/widget/RemoteViews;)V

    .line 66
    iget-object p1, p3, Le/a/c/r/k/c;->a:Le/a/c/r/k/e;

    if-eqz p1, :cond_11

    .line 67
    sget p2, Lcom/truecaller/insights/R$id;->primaryAction:I

    invoke-virtual {p0, v6, p2, p1}, Le/a/c/i/l/f/e;->m(Landroid/widget/RemoteViews;ILe/a/c/r/k/e;)V

    .line 68
    :cond_11
    iget-object p1, p3, Le/a/c/r/k/c;->b:Le/a/c/r/k/e;

    if-eqz p1, :cond_12

    .line 69
    sget p2, Lcom/truecaller/insights/R$id;->secondaryAction:I

    invoke-virtual {p0, v6, p2, p1}, Le/a/c/i/l/f/e;->m(Landroid/widget/RemoteViews;ILe/a/c/r/k/e;)V

    .line 70
    :cond_12
    iget-object p1, p3, Le/a/c/r/k/c;->c:Le/a/c/r/k/e;

    if-eqz p1, :cond_13

    .line 71
    iget-object p1, p1, Le/a/c/r/k/e;->b:Landroid/app/PendingIntent;

    if-eqz p1, :cond_13

    .line 72
    sget p2, Lcom/truecaller/insights/R$id;->contentContainer:I

    invoke-virtual {v6, p2, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 73
    :cond_13
    iget-object p1, p3, Le/a/c/r/k/c;->e:Landroid/app/PendingIntent;

    if-eqz p1, :cond_14

    .line 74
    sget p2, Lcom/truecaller/insights/R$id;->bannerImage:I

    .line 75
    invoke-virtual {v6, p2, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 76
    invoke-virtual {v6, p2, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_14
    return-object v6
.end method

.method public final h(ILe/a/c/v/h/g;)Landroid/widget/RemoteViews;
    .locals 7

    .line 1
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Le/a/c/i/l/f/e;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2
    sget p1, Lcom/truecaller/insights/R$id;->time:I

    iget-object v1, p0, Le/a/c/i/l/f/e;->b:Landroid/content/Context;

    sget v2, Lcom/truecaller/insights/R$string;->NotificationTime:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 3
    iget-object v5, p2, Le/a/c/v/h/g;->d:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 4
    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5
    sget p1, Lcom/truecaller/insights/R$id;->contentTitle:I

    .line 6
    iget-object v1, p2, Le/a/c/v/h/g;->e:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, p1, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 8
    iget-object p1, p2, Le/a/c/v/h/g;->f:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 10
    sget p1, Lcom/truecaller/insights/R$id;->contentTextContainer:I

    invoke-virtual {v0, p1, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 11
    :cond_0
    sget p1, Lcom/truecaller/insights/R$id;->contentText:I

    .line 12
    iget-object v2, p2, Le/a/c/v/h/g;->f:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, p1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 14
    sget p1, Lcom/truecaller/insights/R$id;->contentTextContainer:I

    invoke-virtual {v0, p1, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 15
    :goto_0
    iget-object p1, p2, Le/a/c/v/h/g;->g:Ljava/lang/String;

    .line 16
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 17
    sget p1, Lcom/truecaller/insights/R$id;->infoRightTitle:I

    invoke-virtual {v0, p1, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    .line 18
    :cond_1
    sget p1, Lcom/truecaller/insights/R$id;->infoRightTitle:I

    .line 19
    iget-object v2, p2, Le/a/c/v/h/g;->g:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, p1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 21
    invoke-virtual {v0, p1, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 22
    :goto_1
    iget-object p1, p2, Le/a/c/v/h/g;->h:Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 23
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 24
    sget v2, Lcom/truecaller/insights/R$id;->infoRightTitle:I

    iget-object v4, p0, Le/a/c/i/l/f/e;->b:Landroid/content/Context;

    invoke-static {v4, p1}, Le/a/l4/k;->M(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 25
    :cond_2
    iget-object p1, p2, Le/a/c/v/h/g;->i:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    goto :goto_2

    :cond_3
    move v3, v6

    :goto_2
    if-eqz v3, :cond_4

    .line 27
    sget v1, Lcom/truecaller/insights/R$id;->infoRightText:I

    invoke-virtual {v0, v1, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 28
    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 29
    iget-object p1, p2, Le/a/c/v/h/g;->j:Ljava/lang/Integer;

    if-eqz p1, :cond_5

    .line 30
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 31
    iget-object v2, p0, Le/a/c/i/l/f/e;->b:Landroid/content/Context;

    invoke-static {v2, p1}, Le/a/l4/k;->M(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto :goto_3

    .line 32
    :cond_4
    sget p1, Lcom/truecaller/insights/R$id;->infoRightText:I

    invoke-virtual {v0, p1, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 33
    :cond_5
    :goto_3
    iget-object p1, p2, Le/a/c/v/h/g;->l:Le/a/c/r/j/m;

    .line 34
    iget v1, p1, Le/a/c/r/j/m;->a:I

    .line 35
    iget p1, p1, Le/a/c/r/j/m;->b:I

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 37
    iget-object v2, p2, Le/a/c/v/h/g;->l:Le/a/c/r/j/m;

    .line 38
    iget v2, v2, Le/a/c/r/j/m;->c:I

    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 40
    invoke-virtual {p0, v1, p1, v2, v0}, Le/a/c/i/l/f/e;->k(ILjava/lang/Integer;Ljava/lang/Integer;Landroid/widget/RemoteViews;)V

    .line 41
    iget-object p1, p2, Le/a/c/v/h/g;->m:Le/a/c/r/k/e;

    if-eqz p1, :cond_6

    .line 42
    sget v1, Lcom/truecaller/insights/R$id;->primaryAction:I

    invoke-virtual {p0, v0, v1, p1}, Le/a/c/i/l/f/e;->m(Landroid/widget/RemoteViews;ILe/a/c/r/k/e;)V

    .line 43
    :cond_6
    iget-object p1, p2, Le/a/c/v/h/g;->n:Le/a/c/r/k/e;

    if-eqz p1, :cond_7

    .line 44
    sget v1, Lcom/truecaller/insights/R$id;->secondaryAction:I

    invoke-virtual {p0, v0, v1, p1}, Le/a/c/i/l/f/e;->m(Landroid/widget/RemoteViews;ILe/a/c/r/k/e;)V

    .line 45
    :cond_7
    iget-object p1, p2, Le/a/c/v/h/g;->o:Le/a/c/r/k/e;

    if-eqz p1, :cond_8

    .line 46
    iget-object p1, p1, Le/a/c/r/k/e;->b:Landroid/app/PendingIntent;

    if-eqz p1, :cond_8

    .line 47
    sget p2, Lcom/truecaller/insights/R$id;->contentContainer:I

    invoke-virtual {v0, p2, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_8
    return-object v0
.end method

.method public final i(Landroid/app/Notification;Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/c/i/l/f/e;->e:Le/a/c/b/j;

    invoke-interface {v0}, Le/a/c/b/j;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Le/a/c/i/l/f/e;->d:Le/a/b0/m/c/a;

    invoke-interface {p1, p2}, Le/a/b0/m/c/a;->Kw(Ljava/lang/String;)Le/a/b0/m/a/a;

    move-result-object p1

    .line 3
    iget-object p1, p1, Le/a/b0/m/a/a;->c:Landroid/net/Uri;

    .line 4
    new-instance p2, Le/a/z3/i/a;

    .line 5
    sget-object p4, Le/a/z3/i/e$b;->c:Le/a/z3/i/e$b;

    .line 6
    invoke-direct {p2, p1, p4}, Le/a/z3/i/a;-><init>(Landroid/net/Uri;Le/a/z3/i/g;)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p2, Le/a/z3/i/a;->a:Z

    .line 8
    iget-object p1, p0, Le/a/c/i/l/f/e;->b:Landroid/content/Context;

    invoke-static {p2, p1}, Le/a/m0/a1$k;->N0(Le/a/z3/i/a;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    sget p2, Lcom/truecaller/insights/R$id;->primaryIcon:I

    invoke-virtual {p3, p2, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 10
    sget p1, Lcom/truecaller/insights/R$id;->primarySubIcon:I

    const/16 p2, 0x8

    invoke-virtual {p3, p1, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 11
    :cond_0
    new-instance v7, Le/a/c/i/l/a;

    .line 12
    iget-object v1, p0, Le/a/c/i/l/f/e;->b:Landroid/content/Context;

    .line 13
    sget v2, Lcom/truecaller/insights/R$id;->primaryIcon:I

    .line 14
    iget-object v6, p0, Le/a/c/i/l/f/e;->e:Le/a/c/b/j;

    move-object v0, v7

    move-object v3, p3

    move-object v4, p1

    move v5, p4

    .line 15
    invoke-direct/range {v0 .. v6}, Le/a/c/i/l/a;-><init>(Landroid/content/Context;ILandroid/widget/RemoteViews;Landroid/app/Notification;ILe/a/c/b/j;)V

    .line 16
    iget-object p1, p0, Le/a/c/i/l/f/e;->d:Le/a/b0/m/c/a;

    new-instance p4, Le/a/c/i/l/f/d;

    invoke-direct {p4, p0, p3, v7}, Le/a/c/i/l/f/d;-><init>(Le/a/c/i/l/f/e;Landroid/widget/RemoteViews;Le/a/c/i/l/a;)V

    invoke-interface {p1, p2, p4}, Le/a/b0/m/c/a;->Iz(Ljava/lang/String;Ls1/z/b/l;)Lq3/a/p1;

    :cond_1
    :goto_0
    return-void
.end method

.method public final j()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "Collections.synchronizedSet(HashSet<Int>())"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v1, p0, Le/a/c/i/l/f/e;->b:Landroid/content/Context;

    const-string v2, "smartNotifications.state"

    invoke-virtual {v1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3
    :try_start_1
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 5
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    .line 7
    :try_start_2
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 8
    :catch_0
    :cond_0
    :try_start_3
    throw v2

    :catch_1
    if-eqz v1, :cond_1

    .line 9
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_1
    return-object v0
.end method

.method public final k(ILjava/lang/Integer;Ljava/lang/Integer;Landroid/widget/RemoteViews;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/i/l/f/e;->b:Landroid/content/Context;

    sget v1, Lcom/truecaller/insights/R$color;->notification_subtitle_grey:I

    .line 2
    invoke-static {v0, p1}, Ln3/b/b/a/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 4
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 5
    :goto_0
    sget v0, Lcom/truecaller/insights/R$id;->icon:I

    invoke-static {v2}, Le/a/b0/q/o;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 6
    sget v0, Lcom/truecaller/insights/R$id;->primarySubIcon:I

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 7
    iget-object v1, p0, Le/a/c/i/l/f/e;->b:Landroid/content/Context;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_1

    :cond_1
    sget p2, Lcom/truecaller/insights/R$attr;->tcx_avatarTextBlue:I

    :goto_1
    invoke-static {v1, p1, p2}, Le/a/l4/k;->N(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 8
    invoke-static {p1}, Le/a/b0/q/o;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p4, v0, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 9
    iget-object p1, p0, Le/a/c/i/l/f/e;->b:Landroid/content/Context;

    sget p2, Lcom/truecaller/insights/R$drawable;->circle_bg_smart_sms:I

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_2

    :cond_2
    sget p3, Lcom/truecaller/insights/R$attr;->tcx_brandBackgroundBlue:I

    :goto_2
    invoke-static {p1, p2, p3}, Le/a/l4/k;->N(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 10
    sget p2, Lcom/truecaller/insights/R$id;->primaryIcon:I

    invoke-static {p1}, Le/a/b0/q/o;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p4, p2, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public final l(Ln3/k/a/q;)V
    .locals 3

    .line 1
    sget v0, Lcom/truecaller/insights/R$drawable;->ic_notification_message:I

    .line 2
    iget-object v1, p1, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v0, v1, Landroid/app/Notification;->icon:I

    const-string v0, "builder.setSmallIcon(R.d\u2026.ic_notification_message)"

    .line 3
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/c/i/l/f/e;->b:Landroid/content/Context;

    sget v1, Lcom/truecaller/insights/R$color;->accent_default:I

    .line 4
    sget-object v2, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 5
    invoke-static {v0, v1}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v0

    .line 6
    iput v0, p1, Ln3/k/a/q;->D:I

    return-void
.end method

.method public final m(Landroid/widget/RemoteViews;ILe/a/c/r/k/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/i/l/f/e;->b:Landroid/content/Context;

    sget v1, Lcom/truecaller/insights/R$attr;->tcx_brandBackgroundBlue:I

    invoke-static {v0, v1}, Le/a/l4/k;->M(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 2
    iget-object v0, p3, Le/a/c/r/k/e;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4
    iget-object p3, p3, Le/a/c/r/k/e;->b:Landroid/app/PendingIntent;

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p1, p2, p3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_0
    const/4 p3, 0x0

    .line 6
    invoke-virtual {p1, p2, p3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void
.end method

.method public final n(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/c/i/l/f/e;->b:Landroid/content/Context;

    const-string v1, "smartNotifications.state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    :try_start_1
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3
    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    :try_start_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 5
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 6
    :cond_0
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_2

    .line 7
    :try_start_4
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 8
    :try_start_5
    monitor-exit p1

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v0, :cond_1

    .line 9
    :try_start_6
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 10
    :catch_0
    :cond_1
    :try_start_7
    throw p1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception p1

    .line 11
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :catch_2
    :cond_2
    :goto_1
    return-void
.end method

.method public final o()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/i/l/f/e;->e:Le/a/c/b/j;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/c/b/j;->P(Z)V

    return-void
.end method
