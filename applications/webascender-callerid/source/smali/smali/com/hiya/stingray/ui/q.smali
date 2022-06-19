.class public final Lcom/hiya/stingray/ui/q;
.super Lcom/hiya/stingray/ui/r;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/r;-><init>()V

    return-void
.end method

.method private final h(Landroid/content/res/Resources;I)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I)",
            "Li/c/b0/b/v<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/q$a;

    invoke-direct {v0, p1, p2}, Lcom/hiya/stingray/ui/q$a;-><init>(Landroid/content/res/Resources;I)V

    invoke-static {v0}, Li/c/b0/b/v;->fromCallable(Ljava/util/concurrent/Callable;)Li/c/b0/b/v;

    move-result-object p1

    const-string p2, "Observable.fromCallable \u2026(resources, drawableId) }"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final i(Landroid/content/Context;Lcom/hiya/stingray/t/s0;IZLcom/hiya/stingray/ui/o;ZLg/g/b/c/r;)Ljava/lang/String;
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localNotificationItem"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayType"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-le p3, v0, :cond_0

    if-eqz p4, :cond_0

    const p2, 0x7f110410

    .line 1
    invoke-static {p1, p2}, Lcom/hiya/stingray/util/o;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move-object v5, p7

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/hiya/stingray/ui/q;->j(Landroid/content/Context;Lcom/hiya/stingray/t/s0;Lcom/hiya/stingray/ui/o;ZLg/g/b/c/r;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final j(Landroid/content/Context;Lcom/hiya/stingray/t/s0;Lcom/hiya/stingray/ui/o;ZLg/g/b/c/r;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localNotificationItem"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayType"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/hiya/stingray/util/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "PhoneNumberUtil.formatPh\u2026alNotificationItem.phone)"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lg/g/b/c/r;->LOCAL_OVERRIDE:Lg/g/b/c/r;

    if-ne p5, v0, :cond_0

    return-object p2

    .line 3
    :cond_0
    sget-object p5, Lcom/hiya/stingray/ui/p;->b:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p5, p5, v0

    packed-switch p5, :pswitch_data_0

    .line 4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    const p2, 0x7f11022d

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p1, "context.getString(R.stri\u2026ification_upgrade_to_see)"

    invoke-static {p2, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    const-string p2, ""

    goto :goto_2

    :pswitch_2
    const p2, 0x7f110141

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p1, "context.getString(R.string.identified_by_hiya)"

    invoke-static {p2, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_3
    if-eqz p4, :cond_1

    const p2, 0x7f110111

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(R.string.flagged_by_hiya)"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    move-object p2, p1

    goto :goto_2

    .line 8
    :cond_1
    sget-object p2, Lcom/hiya/stingray/ui/o;->SPAM:Lcom/hiya/stingray/ui/o;

    if-ne p3, p2, :cond_2

    const p2, 0x7f11022c

    goto :goto_1

    :cond_2
    const p2, 0x7f11022b

    :goto_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "if (displayType == Notif\u2026                        )"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :pswitch_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/r;->c(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p2

    const-string p1, "getPrivateCallerText(context.resources)"

    invoke-static {p2, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    :pswitch_5
    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public final k(Landroid/content/Context;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/hiya/stingray/notification/p;",
            "Lcom/hiya/stingray/ui/o;",
            ")",
            "Li/c/b0/b/v<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationType"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationDisplayContentType"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/hiya/stingray/notification/p;->BLOCKED_CALL:Lcom/hiya/stingray/notification/p;

    const-string v1, "context.resources"

    if-ne p2, v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const p2, 0x7f08006a

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/q;->h(Landroid/content/res/Resources;I)Li/c/b0/b/v;

    move-result-object p1

    goto :goto_1

    .line 4
    :cond_0
    sget-object p2, Lcom/hiya/stingray/ui/p;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x1

    if-eq p2, p3, :cond_2

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    .line 5
    invoke-static {}, Li/c/b0/b/v;->empty()Li/c/b0/b/v;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const p2, 0x7f080070

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/q;->h(Landroid/content/res/Resources;I)Li/c/b0/b/v;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const p2, 0x7f080084

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/q;->h(Landroid/content/res/Resources;I)Li/c/b0/b/v;

    move-result-object p1

    :goto_0
    const-string p2, "when (notificationDispla\u2026ervable.empty()\n        }"

    .line 10
    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p1
.end method

.method public final l(Landroid/content/Context;Lcom/hiya/stingray/ui/o;Lcom/hiya/stingray/t/s0;Lg/g/b/c/r;)Ljava/lang/String;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationDisplayContentType"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/hiya/stingray/ui/o;->SPAM:Lcom/hiya/stingray/ui/o;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_5

    .line 2
    sget-object p2, Lg/g/b/c/r;->LOCAL_OVERRIDE:Lg/g/b/c/r;

    if-ne p4, p2, :cond_0

    const p2, 0x7f110228

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(R.stri\u2026ication_reported_as_spam)"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    if-eqz p3, :cond_4

    .line 4
    invoke-virtual {p3}, Lcom/hiya/stingray/t/s0;->g()Lcom/hiya/stingray/t/y0;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p3}, Lcom/hiya/stingray/t/s0;->g()Lcom/hiya/stingray/t/y0;

    move-result-object p2

    if-eqz p2, :cond_3

    const-string p4, "localNotificationItem.reputationDataItem!!"

    invoke-static {p2, p4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/hiya/stingray/t/y0;->c()Ljava/lang/String;

    move-result-object p2

    const-string v0, "localNotificationItem.re\u2026tationDataItem!!.category"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_4

    .line 5
    invoke-virtual {p3}, Lcom/hiya/stingray/t/s0;->g()Lcom/hiya/stingray/t/y0;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1, p4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hiya/stingray/t/y0;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    .line 6
    :cond_3
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    :cond_4
    const p2, 0x7f1103f0

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string p2, "if (localNotificationIte\u2026d_spam)\n                }"

    .line 8
    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p1

    .line 9
    :cond_5
    sget-object v0, Lcom/hiya/stingray/ui/o;->FRAUD:Lcom/hiya/stingray/ui/o;

    if-ne p2, v0, :cond_7

    .line 10
    sget-object p2, Lg/g/b/c/r;->LOCAL_OVERRIDE:Lg/g/b/c/r;

    if-ne p4, p2, :cond_6

    const p2, 0x7f110227

    .line 11
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(R.stri\u2026cation_reported_as_fraud)"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const p2, 0x7f110225

    .line 12
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(R.stri\u2026fication_potential_fraud)"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    return-object p1

    .line 13
    :cond_7
    sget-object p4, Lcom/hiya/stingray/ui/o;->NAME_AVAILABLE:Lcom/hiya/stingray/ui/o;

    if-ne p2, p4, :cond_9

    if-eqz p3, :cond_8

    .line 14
    invoke-virtual {p3}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object p1

    const-string p2, "localNotificationItem!!.phone"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_8
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    .line 15
    :cond_9
    sget-object p4, Lcom/hiya/stingray/ui/o;->NOT_IDENTIFIED:Lcom/hiya/stingray/ui/o;

    if-ne p2, p4, :cond_a

    const p2, 0x7f110229

    .line 16
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(R.stri\u2026ification_unknown_caller)"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_a
    if-eqz p3, :cond_c

    .line 17
    invoke-virtual {p3}, Lcom/hiya/stingray/t/s0;->e()Lcom/hiya/stingray/t/n0;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 18
    invoke-virtual {p3}, Lcom/hiya/stingray/t/s0;->e()Lcom/hiya/stingray/t/n0;

    move-result-object p1

    if-eqz p1, :cond_b

    const-string p2, "localNotificationItem.identityData!!"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object p1

    const-string p2, "localNotificationItem.identityData!!.name"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_b
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    :cond_c
    if-eqz p3, :cond_d

    .line 19
    invoke-virtual {p3}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d

    goto :goto_4

    :cond_d
    const-string p1, ""

    :goto_4
    return-object p1
.end method

.method public final m(Landroid/content/Context;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;ILcom/hiya/stingray/t/s0;Lg/g/b/c/r;)Ljava/lang/String;
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationType"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationDisplayContentType"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/hiya/stingray/notification/p;->BLOCKED_CALL:Lcom/hiya/stingray/notification/p;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/high16 v0, 0x7f0f0000

    new-array v3, v2, [Ljava/lang/Object;

    .line 3
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    .line 4
    invoke-virtual {p2, v0, p4, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "context.resources.getQua\u2026activeCount\n            )"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 5
    :cond_0
    sget-object v0, Lcom/hiya/stingray/notification/p;->FIRST_TIME_IDENTIFIED_CALL:Lcom/hiya/stingray/notification/p;

    const-string v3, "context.resources.getQua\u2026veCount\n                )"

    if-ne p2, v0, :cond_3

    .line 6
    sget-object p2, Lcom/hiya/stingray/ui/o;->FRAUD:Lcom/hiya/stingray/ui/o;

    if-eq p3, p2, :cond_2

    sget-object p2, Lcom/hiya/stingray/ui/o;->SPAM:Lcom/hiya/stingray/ui/o;

    if-ne p3, p2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0f0003

    new-array p3, v2, [Ljava/lang/Object;

    .line 8
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, p3, v1

    .line 9
    invoke-virtual {p1, p2, p4, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0f0001

    new-array p3, v2, [Ljava/lang/Object;

    .line 11
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, p3, v1

    .line 12
    invoke-virtual {p1, p2, p4, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p1

    .line 13
    :cond_3
    sget-object v0, Lcom/hiya/stingray/notification/p;->POST_CALL:Lcom/hiya/stingray/notification/p;

    if-eq p2, v0, :cond_5

    sget-object v0, Lcom/hiya/stingray/notification/p;->POST_CALL_MISSED:Lcom/hiya/stingray/notification/p;

    if-ne p2, v0, :cond_4

    goto :goto_2

    :cond_4
    const-string p2, ""

    goto :goto_3

    .line 14
    :cond_5
    :goto_2
    sget-object v0, Lcom/hiya/stingray/notification/p;->POST_CALL_MISSED:Lcom/hiya/stingray/notification/p;

    if-ne p2, v0, :cond_6

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0f0008

    new-array v4, v2, [Ljava/lang/Object;

    .line 16
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    .line 17
    invoke-virtual {p2, v0, p4, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const p2, 0x7f110220

    .line 18
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "context.getString(R.stri\u2026.notification_call_ended)"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    if-ne p4, v2, :cond_8

    .line 19
    invoke-virtual {p0, p1, p3, p5, p6}, Lcom/hiya/stingray/ui/q;->l(Landroid/content/Context;Lcom/hiya/stingray/ui/o;Lcom/hiya/stingray/t/s0;Lg/g/b/c/r;)Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_7

    const/4 v1, 0x1

    :cond_7
    if-eqz v1, :cond_8

    .line 21
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " - "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object p2, p1

    :cond_8
    return-object p2
.end method
