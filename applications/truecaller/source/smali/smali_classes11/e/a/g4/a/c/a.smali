.class public final Le/a/g4/a/c/a;
.super Le/a/g4/a/a;
.source "SourceFile"


# instance fields
.field public final j:Landroid/widget/RemoteViews;

.field public final k:Landroid/widget/RemoteViews;

.field public final l:Landroid/content/Context;

.field public final m:Landroid/app/PendingIntent;

.field public final n:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ls1/w/f;Ls1/w/f;Le/a/u3/g;Le/a/p5/g;ILjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 12

    move-object v8, p0

    move-object v9, p1

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    move-object v1, p2

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cpuContext"

    move-object v2, p3

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    move-object/from16 v4, p4

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelId"

    move-object/from16 v7, p7

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "answerIntent"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "declineIntent"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v3, p1

    move/from16 v6, p6

    .line 1
    invoke-direct/range {v0 .. v7}, Le/a/g4/a/a;-><init>(Ls1/w/f;Ls1/w/f;Landroid/content/Context;Le/a/u3/g;Le/a/p5/g;ILjava/lang/String;)V

    iput-object v9, v8, Le/a/g4/a/c/a;->l:Landroid/content/Context;

    iput-object v10, v8, Le/a/g4/a/c/a;->m:Landroid/app/PendingIntent;

    iput-object v11, v8, Le/a/g4/a/c/a;->n:Landroid/app/PendingIntent;

    .line 2
    invoke-virtual {p0}, Le/a/g4/a/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/truecaller/notification/call/R$layout;->notification_call_incoming_dark:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/truecaller/notification/call/R$layout;->notification_call_incoming_default:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 5
    :goto_0
    iput-object v0, v8, Le/a/g4/a/c/a;->j:Landroid/widget/RemoteViews;

    .line 6
    invoke-virtual {p0}, Le/a/g4/a/a;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/truecaller/notification/call/R$layout;->notification_call_incoming_big_dark:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    .line 8
    :cond_1
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/truecaller/notification/call/R$layout;->notification_call_incoming_big_default:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 9
    :goto_1
    iput-object v1, v8, Le/a/g4/a/c/a;->k:Landroid/widget/RemoteViews;

    .line 10
    sget v2, Lcom/truecaller/notification/call/R$id;->button_decline:I

    invoke-virtual {v0, v2, v11}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 11
    sget v3, Lcom/truecaller/notification/call/R$id;->button_answer:I

    invoke-virtual {v0, v3, v10}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 12
    invoke-virtual {v1, v2, v11}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 13
    invoke-virtual {v1, v3, v10}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 14
    invoke-virtual {p0}, Le/a/g4/a/a;->c()Ln3/k/a/q;

    move-result-object v2

    .line 15
    new-instance v3, Ln3/k/a/r;

    invoke-direct {v3}, Ln3/k/a/r;-><init>()V

    invoke-virtual {v2, v3}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    .line 16
    iput-object v0, v2, Ln3/k/a/q;->G:Landroid/widget/RemoteViews;

    .line 17
    iput-object v1, v2, Ln3/k/a/q;->H:Landroid/widget/RemoteViews;

    .line 18
    iput-object v1, v2, Ln3/k/a/q;->I:Landroid/widget/RemoteViews;

    .line 19
    invoke-static {}, Le/a/n/g0;->D0()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 20
    sget v2, Lcom/truecaller/notification/call/R$id;->image_avatar:I

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 21
    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_2
    return-void
.end method


# virtual methods
.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/g4/a/c/a;->k:Landroid/widget/RemoteViews;

    sget v1, Lcom/truecaller/notification/call/R$id;->text_caller_label:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void
.end method

.method public h(Ljava/lang/String;II)V
    .locals 3

    const-string v0, "label"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/g4/a/c/a;->k:Landroid/widget/RemoteViews;

    .line 2
    sget v1, Lcom/truecaller/notification/call/R$id;->text_caller_label:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Le/a/g4/a/c/a;->l:Landroid/content/Context;

    .line 4
    sget-object v2, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 5
    invoke-static {p1, p3}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result p1

    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const-string p1, "setBackgroundResource"

    .line 7
    invoke-virtual {v0, v1, p1, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const/4 p1, 0x0

    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 2

    const-string v0, "title"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/g4/a/c/a;->j:Landroid/widget/RemoteViews;

    sget v1, Lcom/truecaller/notification/call/R$id;->title:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Le/a/g4/a/c/a;->k:Landroid/widget/RemoteViews;

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
    iget-object v0, p0, Le/a/g4/a/c/a;->j:Landroid/widget/RemoteViews;

    sget v1, Lcom/truecaller/notification/call/R$id;->image_avatar:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 5
    iget-object v0, p0, Le/a/g4/a/c/a;->k:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 2

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/g4/a/c/a;->j:Landroid/widget/RemoteViews;

    sget v1, Lcom/truecaller/notification/call/R$id;->description:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Le/a/g4/a/c/a;->k:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-void
.end method
