.class public final Le/a/d/y/c/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/y/c/k;


# instance fields
.field public final a:Landroid/widget/RemoteViews;

.field public final b:Landroid/widget/RemoteViews;

.field public final c:Ls1/g;

.field public final d:Ls1/g;

.field public final e:Landroid/content/Context;

.field public final f:Le/a/d/c0/j1;

.field public final g:Le/a/d/c0/m0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/d/c0/j1;Le/a/d/c0/m0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipSupport"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipBitmapUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/y/c/n;->e:Landroid/content/Context;

    iput-object p2, p0, Le/a/d/y/c/n;->f:Le/a/d/c0/j1;

    iput-object p3, p0, Le/a/d/y/c/n;->g:Le/a/d/c0/m0;

    .line 2
    new-instance p2, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    sget v0, Lcom/truecaller/voip/R$layout;->notification_missed_voip:I

    invoke-direct {p2, p3, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Le/a/d/y/c/n;->a:Landroid/widget/RemoteViews;

    .line 3
    new-instance p2, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    sget p3, Lcom/truecaller/voip/R$layout;->notification_missed_voip_big:I

    invoke-direct {p2, p1, p3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Le/a/d/y/c/n;->b:Landroid/widget/RemoteViews;

    .line 4
    new-instance p1, Le/a/d/y/c/m;

    invoke-direct {p1, p0}, Le/a/d/y/c/m;-><init>(Le/a/d/y/c/n;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/d/y/c/n;->c:Ls1/g;

    .line 5
    new-instance p1, Le/a/d/y/c/l;

    invoke-direct {p1, p0}, Le/a/d/y/c/l;-><init>(Le/a/d/y/c/n;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/d/y/c/n;->d:Ls1/g;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, 0xc000000

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Le/a/d/y/c/n;->e:Landroid/content/Context;

    .line 3
    sget v2, Lcom/truecaller/voip/R$id;->voip_missed_call_notification_action_call_back:I

    .line 4
    iget-object v3, p0, Le/a/d/y/c/n;->f:Le/a/d/c0/j1;

    invoke-interface {v3, v0, p1}, Le/a/d/c0/j1;->h(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 5
    invoke-static {v0, v2, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string v0, "PendingIntent.getActivit\u2026G_IMMUTABLE\n            )"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Le/a/d/y/c/n;->e:Landroid/content/Context;

    .line 7
    sget v2, Lcom/truecaller/voip/R$id;->voip_missed_call_notification_action_call_back:I

    const-string v3, "context"

    .line 8
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "number"

    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/truecaller/voip/notification/missed/MissedVoipCallMessageBroadcast;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.truecaller.voip.ACTION_ACTION_CALL"

    .line 10
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.truecaller.voip.extra.EXTRA_NUMBER"

    .line 11
    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v3, "Intent(context, MissedVo\u2026tra(EXTRA_NUMBER, number)"

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {v0, v2, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string v0, "PendingIntent.getBroadca\u2026G_IMMUTABLE\n            )"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public final b(Ljava/util/List;)Landroid/app/PendingIntent;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, 0xc000000

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Le/a/d/y/c/n;->e:Landroid/content/Context;

    .line 3
    sget v2, Lcom/truecaller/voip/R$id;->voip_missed_call_notification_action_call_back_group:I

    .line 4
    iget-object v3, p0, Le/a/d/y/c/n;->f:Le/a/d/c0/j1;

    invoke-interface {v3, v0, p1}, Le/a/d/c0/j1;->i(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;

    move-result-object p1

    .line 5
    invoke-static {v0, v2, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string v0, "PendingIntent.getActivit\u2026G_IMMUTABLE\n            )"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Le/a/d/y/c/n;->e:Landroid/content/Context;

    .line 7
    sget v2, Lcom/truecaller/voip/R$id;->voip_missed_call_notification_action_call_back_group:I

    const-string v3, "context"

    .line 8
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "numbers"

    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/truecaller/voip/notification/missed/MissedVoipCallMessageBroadcast;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.truecaller.voip.ACTION_GROUP_CALL"

    .line 10
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p1, "com.truecaller.voip.extra.EXTRA_GROUP_NUMBERS"

    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object p1

    const-string v3, "Intent(context, MissedVo\u2026BERS, ArrayList(numbers))"

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {v0, v2, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string v0, "PendingIntent.getBroadca\u2026G_IMMUTABLE\n            )"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public final c()Ln3/k/a/q;
    .locals 1

    iget-object v0, p0, Le/a/d/y/c/n;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/k/a/q;

    return-object v0
.end method

.method public final d()Le/a/h4/n;
    .locals 1

    iget-object v0, p0, Le/a/d/y/c/n;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/h4/n;

    return-object v0
.end method

.method public e(Le/a/d/c0/b;JLs1/w/d;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d/c0/b;",
            "J",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Le/a/d/y/c/n$a;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Le/a/d/y/c/n$a;

    iget v1, v0, Le/a/d/y/c/n$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/y/c/n$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/y/c/n$a;

    invoke-direct {v0, p0, p4}, Le/a/d/y/c/n$a;-><init>(Le/a/d/y/c/n;Ls1/w/d;)V

    :goto_0
    iget-object p4, v0, Le/a/d/y/c/n$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/y/c/n$a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide p2, v0, Le/a/d/y/c/n$a;->m:J

    iget-object p1, v0, Le/a/d/y/c/n$a;->l:Ljava/lang/Object;

    check-cast p1, Ls1/z/c/c0;

    iget-object v1, v0, Le/a/d/y/c/n$a;->k:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Le/a/d/y/c/n$a;->j:Ljava/lang/Object;

    check-cast v2, Ln3/k/a/q;

    iget-object v3, v0, Le/a/d/y/c/n$a;->i:Ljava/lang/Object;

    check-cast v3, Ls1/z/c/c0;

    iget-object v4, v0, Le/a/d/y/c/n$a;->h:Ljava/lang/Object;

    check-cast v4, Le/a/d/c0/b;

    iget-object v0, v0, Le/a/d/y/c/n$a;->g:Ljava/lang/Object;

    check-cast v0, Le/a/d/y/c/n;

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-wide p2, v0, Le/a/d/y/c/n$a;->m:J

    iget-object p1, v0, Le/a/d/y/c/n$a;->l:Ljava/lang/Object;

    check-cast p1, Ls1/z/c/c0;

    iget-object v1, v0, Le/a/d/y/c/n$a;->k:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Le/a/d/y/c/n$a;->j:Ljava/lang/Object;

    check-cast v2, Ln3/k/a/q;

    iget-object v3, v0, Le/a/d/y/c/n$a;->i:Ljava/lang/Object;

    check-cast v3, Ls1/z/c/c0;

    iget-object v4, v0, Le/a/d/y/c/n$a;->h:Ljava/lang/Object;

    check-cast v4, Le/a/d/c0/b;

    iget-object v0, v0, Le/a/d/y/c/n$a;->g:Ljava/lang/Object;

    check-cast v0, Le/a/d/y/c/n;

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p4}, Le/d/c/a/a;->d0(Ljava/lang/Object;)Ls1/z/c/c0;

    move-result-object p4

    const/4 v2, 0x0

    .line 4
    iput-object v2, p4, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Le/a/d/y/c/n;->d()Le/a/h4/n;

    move-result-object v5

    sget v6, Lcom/truecaller/voip/R$id;->voip_incoming_service_missed_call_notification:I

    invoke-interface {v5, v6}, Le/a/h4/n;->f(I)V

    .line 6
    invoke-virtual {p0}, Le/a/d/y/c/n;->c()Ln3/k/a/q;

    move-result-object v5

    .line 7
    iget-object v6, p0, Le/a/d/y/c/n;->e:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 8
    sget v7, Lcom/truecaller/voip/R$plurals;->voip_notification_missed_grouped_title:I

    new-array v8, v4, [Ljava/lang/Object;

    .line 9
    iget-object v9, p0, Le/a/d/y/c/n;->e:Landroid/content/Context;

    sget v10, Lcom/truecaller/voip/R$string;->voip_text:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 10
    invoke-virtual {v6, v7, v4, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "context.resources.getQua\u2026p_text)\n                )"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    instance-of v7, p1, Le/a/d/c0/b$b;

    if-eqz v7, :cond_5

    .line 12
    iget-object v2, p0, Le/a/d/y/c/n;->g:Le/a/d/c0/m0;

    move-object v3, p1

    check-cast v3, Le/a/d/c0/b$b;

    .line 13
    iget-object v3, v3, Le/a/d/c0/b$b;->b:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    .line 14
    iput-object p0, v0, Le/a/d/y/c/n$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/d/y/c/n$a;->h:Ljava/lang/Object;

    iput-object p4, v0, Le/a/d/y/c/n$a;->i:Ljava/lang/Object;

    iput-object v5, v0, Le/a/d/y/c/n$a;->j:Ljava/lang/Object;

    iput-object v6, v0, Le/a/d/y/c/n$a;->k:Ljava/lang/Object;

    iput-object p4, v0, Le/a/d/y/c/n$a;->l:Ljava/lang/Object;

    iput-wide p2, v0, Le/a/d/y/c/n$a;->m:J

    iput v4, v0, Le/a/d/y/c/n$a;->e:I

    invoke-virtual {v2, v3, v0}, Le/a/d/c0/m0;->a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4

    return-object v1

    :cond_4
    move-object v4, p1

    move-object p1, p4

    move-object v3, p1

    move-object p4, v0

    move-object v2, v5

    move-object v1, v6

    move-object v0, p0

    .line 15
    :goto_1
    check-cast p4, Landroid/graphics/Bitmap;

    iput-object p4, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 16
    iget-object p1, v0, Le/a/d/y/c/n;->a:Landroid/widget/RemoteViews;

    .line 17
    sget p4, Lcom/truecaller/voip/R$id;->title:I

    invoke-virtual {p1, p4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 18
    sget v5, Lcom/truecaller/voip/R$id;->description:I

    check-cast v4, Le/a/d/c0/b$b;

    .line 19
    iget-object v6, v4, Le/a/d/c0/b$b;->a:Ljava/lang/String;

    .line 20
    invoke-virtual {p1, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 21
    sget v6, Lcom/truecaller/voip/R$id;->button_call_back:I

    .line 22
    iget-object v7, v4, Le/a/d/c0/b$b;->c:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v7}, Le/a/d/y/c/n;->a(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 24
    iget-object p1, v0, Le/a/d/y/c/n;->b:Landroid/widget/RemoteViews;

    .line 25
    invoke-virtual {p1, p4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 26
    iget-object p4, v4, Le/a/d/c0/b$b;->a:Ljava/lang/String;

    .line 27
    invoke-virtual {p1, v5, p4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 28
    iget-object p4, v4, Le/a/d/c0/b$b;->c:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, p4}, Le/a/d/y/c/n;->a(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p4

    invoke-virtual {p1, v6, p4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :goto_2
    move-object v5, v2

    move-object p4, v3

    goto/16 :goto_4

    .line 30
    :cond_5
    instance-of v4, p1, Le/a/d/c0/b$a;

    if-eqz v4, :cond_7

    .line 31
    iget-object v4, p0, Le/a/d/y/c/n;->g:Le/a/d/c0/m0;

    move-object v7, p1

    check-cast v7, Le/a/d/c0/b$a;

    .line 32
    iget-object v7, v7, Le/a/d/c0/b$a;->c:Ljava/util/List;

    .line 33
    iput-object p0, v0, Le/a/d/y/c/n$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/d/y/c/n$a;->h:Ljava/lang/Object;

    iput-object p4, v0, Le/a/d/y/c/n$a;->i:Ljava/lang/Object;

    iput-object v5, v0, Le/a/d/y/c/n$a;->j:Ljava/lang/Object;

    iput-object v6, v0, Le/a/d/y/c/n$a;->k:Ljava/lang/Object;

    iput-object p4, v0, Le/a/d/y/c/n$a;->l:Ljava/lang/Object;

    iput-wide p2, v0, Le/a/d/y/c/n$a;->m:J

    iput v3, v0, Le/a/d/y/c/n$a;->e:I

    .line 34
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v3, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;

    iget-object v4, v4, Le/a/d/c0/m0;->a:Landroid/content/Context;

    const/4 v8, 0x6

    invoke-direct {v3, v4, v2, v10, v8}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 36
    sget v2, Lcom/truecaller/voip/R$dimen;->notification_call_avatar_size:I

    invoke-virtual {v3, v7, v2, v0}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->d(Ljava/util/List;ILs1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_6

    return-object v1

    :cond_6
    move-object v4, p1

    move-object p1, p4

    move-object v3, p1

    move-object p4, v0

    move-object v2, v5

    move-object v1, v6

    move-object v0, p0

    .line 37
    :goto_3
    check-cast p4, Landroid/graphics/Bitmap;

    iput-object p4, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 38
    iget-object p1, v0, Le/a/d/y/c/n;->a:Landroid/widget/RemoteViews;

    .line 39
    sget p4, Lcom/truecaller/voip/R$id;->title:I

    invoke-virtual {p1, p4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 40
    sget v5, Lcom/truecaller/voip/R$id;->description:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v4, Le/a/d/c0/b$a;

    .line 41
    iget-object v7, v4, Le/a/d/c0/b$a;->a:Ljava/lang/String;

    .line 42
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    iget-object v8, v4, Le/a/d/c0/b$a;->b:Ljava/lang/String;

    .line 44
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 45
    sget v6, Lcom/truecaller/voip/R$id;->button_call_back:I

    .line 46
    iget-object v8, v4, Le/a/d/c0/b$a;->d:Ljava/util/List;

    .line 47
    invoke-virtual {v0, v8}, Le/a/d/y/c/n;->b(Ljava/util/List;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {p1, v6, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 48
    iget-object p1, v0, Le/a/d/y/c/n;->b:Landroid/widget/RemoteViews;

    .line 49
    invoke-virtual {p1, p4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 50
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    iget-object v1, v4, Le/a/d/c0/b$a;->a:Ljava/lang/String;

    .line 52
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    iget-object v1, v4, Le/a/d/c0/b$a;->b:Ljava/lang/String;

    .line 54
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, v5, p4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 55
    iget-object p4, v4, Le/a/d/c0/b$a;->d:Ljava/util/List;

    .line 56
    invoke-virtual {v0, p4}, Le/a/d/y/c/n;->b(Ljava/util/List;)Landroid/app/PendingIntent;

    move-result-object p4

    invoke-virtual {p1, v6, p4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_2

    :cond_7
    move-object v0, p0

    .line 57
    :goto_4
    invoke-static {}, Le/a/n/g0;->D0()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 58
    invoke-virtual {v0}, Le/a/d/y/c/n;->c()Ln3/k/a/q;

    move-result-object p1

    iget-object p4, p4, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p4, Landroid/graphics/Bitmap;

    invoke-virtual {p1, p4}, Ln3/k/a/q;->q(Landroid/graphics/Bitmap;)Ln3/k/a/q;

    const-string p4, "notificationBuilder.setLargeIcon(notificationIcon)"

    invoke-static {p1, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 59
    :cond_8
    iget-object p1, v0, Le/a/d/y/c/n;->a:Landroid/widget/RemoteViews;

    sget v1, Lcom/truecaller/notification/call/R$id;->image_avatar:I

    iget-object v2, p4, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 60
    iget-object p1, v0, Le/a/d/y/c/n;->b:Landroid/widget/RemoteViews;

    iget-object p4, p4, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p4, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, p4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 61
    :goto_5
    iget-object p1, v0, Le/a/d/y/c/n;->f:Le/a/d/c0/j1;

    invoke-interface {p1}, Le/a/d/c0/j1;->m()Landroid/app/PendingIntent;

    move-result-object p1

    .line 62
    iput-object p1, v5, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    .line 63
    iget-object p1, v0, Le/a/d/y/c/n;->f:Le/a/d/c0/j1;

    invoke-interface {p1, p2, p3}, Le/a/d/c0/j1;->o(J)Landroid/app/PendingIntent;

    move-result-object p1

    .line 64
    iget-object p2, v5, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object p1, p2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 65
    invoke-virtual {v0}, Le/a/d/y/c/n;->d()Le/a/h4/n;

    move-result-object p1

    sget p2, Lcom/truecaller/voip/R$id;->voip_incoming_service_missed_call_notification:I

    invoke-virtual {v0}, Le/a/d/y/c/n;->c()Ln3/k/a/q;

    move-result-object p3

    invoke-virtual {p3}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object p3

    const-string p4, "notificationBuilder.build()"

    invoke-static {p3, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2, p3}, Le/a/h4/n;->g(ILandroid/app/Notification;)V

    .line 66
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
