.class public final Le/a/c/p/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z

.field public static b:Le/a/c4/d;


# direct methods
.method public static final A(Ljava/util/List;Le/a/u3/g;Le/a/a/c/m5;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;",
            "Le/a/u3/g;",
            "Le/a/a/c/m5;",
            ")Z"
        }
    .end annotation

    const-string v0, "$this$allowToDeleteForRecipient"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conversationState"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Le/a/u3/g;->J()Le/a/u3/b;

    move-result-object p1

    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-interface {p2}, Le/a/a/c/m5;->p()Lcom/truecaller/messaging/data/types/Conversation;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz p1, :cond_1

    invoke-static {p1}, Le/a/a/i1/h;->f([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result p1

    if-ne p1, p2, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/messaging/data/types/Message;

    .line 5
    iget v1, p1, Lcom/truecaller/messaging/data/types/Message;->k:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    invoke-static {p1}, Le/a/c/p/a;->x1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, p2

    goto :goto_0

    :cond_4
    move p1, v0

    :goto_0
    if-nez p1, :cond_3

    goto :goto_2

    :cond_5
    :goto_1
    move v0, p2

    :goto_2
    return v0
.end method

.method public static synthetic A0(Le/a/c/w/o0/g;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p2, p4, 0x2

    const/4 p2, 0x0

    .line 1
    invoke-interface {p0, p1, p2, p3}, Le/a/c/w/o0/g;->i(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final A1(Lcom/truecaller/messaging/data/types/Message;)Z
    .locals 1

    const-string v0, "$this$isScheduled"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p0, p0, Lcom/truecaller/messaging/data/types/Message;->g:I

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final A2(Landroid/widget/Button;Le/a/c/y/i;Le/a/c/a/o/b;Ljava/lang/String;ZI)V
    .locals 7

    const-string v0, "$this$setActionOrHide"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionListener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsCategory"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 1
    invoke-static {p0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 3
    invoke-virtual {p1}, Le/a/c/y/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 4
    new-instance v0, Le/a/c/a/o/e;

    move-object v1, v0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Le/a/c/a/o/e;-><init>(Le/a/c/a/o/b;Le/a/c/y/i;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public static final B(Lcom/truecaller/messaging/data/types/Message;)I
    .locals 1

    const-string v0, "$this$apiVersion"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    instance-of v0, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    check-cast p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;

    if-eqz p0, :cond_1

    .line 2
    iget p0, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->i:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final B0(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;
    .locals 2

    const-string v0, "$this$getInsightsContextThemeWrapper"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Le/a/i5/a;->g:Le/a/i5/a;

    invoke-static {}, Le/a/i5/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget v1, Lcom/truecaller/insights/ui/R$style;->ThemeX_Insights_Dark:I

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget v1, Lcom/truecaller/insights/ui/R$style;->ThemeX_Insights_Light:I

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    :goto_0
    return-object v0
.end method

.method public static final B1(Lp3/a/g1;)Z
    .locals 2

    const-string v0, "$this$isTransientError"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lp3/a/g1;->a:Lp3/a/g1$b;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1

    const/16 v1, 0xa

    if-eq p0, v1, :cond_1

    const/16 v1, 0xd

    if-eq p0, v1, :cond_1

    const/16 v1, 0xe

    if-eq p0, v1, :cond_1

    :goto_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public static final B2(Landroid/widget/Button;Le/a/c/y/i;Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Button;",
            "Le/a/c/y/i;",
            "Ls1/z/b/l<",
            "-",
            "Le/a/c/y/i;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$setActionOrHide"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 1
    invoke-static {p0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 3
    invoke-virtual {p1}, Le/a/c/y/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 4
    new-instance v0, Le/a/c/a/o/d;

    invoke-direct {v0, p2, p1}, Le/a/c/a/o/d;-><init>(Ls1/z/b/l;Le/a/c/y/i;)V

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public static final C(Landroid/content/Intent;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$appendMessageIds"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messages"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Lcom/truecaller/messaging/data/types/Message;

    .line 4
    iget-wide v1, v1, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Long;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    check-cast p1, [Ljava/lang/Long;

    .line 8
    check-cast p1, Ljava/io/Serializable;

    const-string v0, "com.truecaller.messaging.message_ids"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-void
.end method

.method public static final C0(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/ForwardContentItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/BinaryEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$mediaEntities"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Lcom/truecaller/messaging/ForwardContentItem;

    .line 4
    iget-object v1, v1, Lcom/truecaller/messaging/ForwardContentItem;->c:Lcom/truecaller/messaging/data/types/BinaryEntity;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static final C1(Lcom/truecaller/messaging/data/types/Conversation;)Z
    .locals 1

    const-string v0, "$this$isUnread"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->l:I

    if-gtz v0, :cond_1

    iget-boolean p0, p0, Lcom/truecaller/messaging/data/types/Conversation;->q:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final C2(Landroid/widget/TextView;I)V
    .locals 4

    const-string v0, "$this$setCleanupPeriod"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120c47

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120c3d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120c1f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final D(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    const-string v0, "$this$appendNotificationAction"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.truecaller.messaging.action_from_notification"

    .line 1
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public static final D0(Ljava/lang/String;Le/a/f4/b/g/b;Le/a/f4/b/b;)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$getNativeEdgeHost"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "edgeLocationsManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domainResolver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p2}, Le/a/f4/b/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Le/a/f4/b/g/b;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p2}, Le/a/f4/b/b;->b()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Le/a/f4/b/g/b;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static final D1(Lcom/truecaller/messaging/data/types/Message;)Z
    .locals 1

    const-string v0, "$this$isUrgent"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p0, p0, Lcom/truecaller/messaging/data/types/Message;->Q:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final D2(Landroid/widget/ImageView;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "$this$setImageResourceOrHide"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 1
    invoke-static {p0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public static final E(Landroid/content/Intent;ILjava/lang/String;)V
    .locals 1

    const-string v0, "$this$appendNotificationId"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tc_notification_id"

    .line 1
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string p1, "tc_notification_tag"

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public static final E0(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const-string v0, "vendor"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, " +"

    const-string v2, " "

    .line 3
    invoke-static {v0, p0, v2}, Le/d/c/a/a;->A2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {p0, v0, v1, v1, v2}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 5
    sget-object v9, Le/a/c/c0/r;->b:Le/a/c/c0/r;

    const/16 v10, 0x1e

    const-string v4, " "

    invoke-static/range {v3 .. v10}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method public static final E1(Lcom/truecaller/insights/models/categorizerseed/CategorizerSeedServiceModel;)Z
    .locals 2

    const-string v0, "$this$isValidResponse"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/insights/models/categorizerseed/CategorizerSeedServiceModel;->getMeta()Lcom/truecaller/insights/models/categorizerseed/Meta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/insights/models/categorizerseed/Meta;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TCBI-1000"

    invoke-static {v1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/truecaller/insights/models/categorizerseed/CategorizerSeedServiceModel;->getData()Lcom/truecaller/insights/models/categorizerseed/Data;

    move-result-object p0

    invoke-virtual {p0}, Lcom/truecaller/insights/models/categorizerseed/Data;->getVectors()Lcom/truecaller/insights/models/categorizerseed/Vectors;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final E2(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "$this$setInsightsTheme"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Le/a/i5/a;->g:Le/a/i5/a;

    invoke-static {}, Le/a/i5/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget v0, Lcom/truecaller/insights/ui/R$style;->ThemeX_Insights_Dark:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_0

    .line 3
    :cond_0
    sget v0, Lcom/truecaller/insights/ui/R$style;->ThemeX_Insights_Light:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    :goto_0
    return-void
.end method

.method public static synthetic F(Le/a/c/w/o0/g;Lcom/truecaller/insights/models/pdo/ParsedDataObject;ZLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Le/a/c/w/o0/g;->g(Lcom/truecaller/insights/models/pdo/ParsedDataObject;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final F0(Lcom/truecaller/insights/models/InsightsDomain;)Lw3/b/a/b;
    .locals 2

    const-string v0, "$this$getOrderDateTime"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Lcom/truecaller/insights/models/InsightsDomain$a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/truecaller/insights/models/InsightsDomain;->getMsgDateTime()Lw3/b/a/b;

    move-result-object p0

    goto/16 :goto_1

    .line 2
    :cond_0
    instance-of v0, p0, Lcom/truecaller/insights/models/InsightsDomain$Bill;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/truecaller/insights/models/InsightsDomain$Bill;

    invoke-virtual {p0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getBillDueDateTime()Lw3/b/a/b;

    move-result-object p0

    goto :goto_1

    .line 3
    :cond_1
    instance-of v0, p0, Lcom/truecaller/insights/models/InsightsDomain$b;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/truecaller/insights/models/InsightsDomain$b;

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/insights/models/InsightsDomain$b;->e()Lcom/truecaller/insights/binders/utils/OrderStatus;

    move-result-object v0

    sget-object v1, Lcom/truecaller/insights/binders/utils/OrderStatus;->ActionRequired:Lcom/truecaller/insights/binders/utils/OrderStatus;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/truecaller/insights/models/InsightsDomain$b;->f()Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    move-result-object v0

    sget-object v1, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;->SelfPickup:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    if-ne v0, v1, :cond_3

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/insights/models/InsightsDomain$b;->c()Lw3/b/a/b;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/truecaller/insights/models/InsightsDomain$b;->getMsgDateTime()Lw3/b/a/b;

    move-result-object p0

    goto :goto_1

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/truecaller/insights/models/InsightsDomain$b;->getMsgDateTime()Lw3/b/a/b;

    move-result-object p0

    goto :goto_1

    .line 7
    :cond_4
    instance-of v0, p0, Lcom/truecaller/insights/models/InsightsDomain$c;

    if-eqz v0, :cond_6

    move-object v0, p0

    check-cast v0, Lcom/truecaller/insights/models/InsightsDomain$c;

    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$c;->b()Lw3/b/a/b;

    move-result-object v0

    if-eqz v0, :cond_5

    :goto_0
    move-object p0, v0

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/truecaller/insights/models/InsightsDomain;->getMsgDateTime()Lw3/b/a/b;

    move-result-object p0

    goto :goto_1

    .line 8
    :cond_6
    instance-of v0, p0, Lcom/truecaller/insights/models/InsightsDomain$d;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/truecaller/insights/models/InsightsDomain;->getMsgDateTime()Lw3/b/a/b;

    move-result-object p0

    goto :goto_1

    .line 9
    :cond_7
    instance-of v0, p0, Lcom/truecaller/insights/models/InsightsDomain$e;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/truecaller/insights/models/InsightsDomain;->getMsgDateTime()Lw3/b/a/b;

    move-result-object p0

    goto :goto_1

    .line 10
    :cond_8
    instance-of v0, p0, Lcom/truecaller/insights/models/InsightsDomain$f;

    if-eqz v0, :cond_9

    check-cast p0, Lcom/truecaller/insights/models/InsightsDomain$f;

    .line 11
    iget-object p0, p0, Lcom/truecaller/insights/models/InsightsDomain$f;->a:Lw3/b/a/b;

    goto :goto_1

    .line 12
    :cond_9
    instance-of v0, p0, Lcom/truecaller/insights/models/InsightsDomain$g;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/truecaller/insights/models/InsightsDomain;->getMsgDateTime()Lw3/b/a/b;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_a
    new-instance p0, Ls1/i;

    invoke-direct {p0}, Ls1/i;-><init>()V

    throw p0
.end method

.method public static F1([Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, ", "

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/data/entity/messaging/Participant;

    .line 4
    invoke-static {v1}, Le/a/c/p/a;->v0(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_2

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 8
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static synthetic F2(Le/a/a/b/k;Ljava/lang/CharSequence;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;ZLjava/util/List;ZILjava/lang/Object;)V
    .locals 10

    and-int/lit8 v0, p9, 0x2

    if-eqz v0, :cond_0

    .line 1
    sget-object v0, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->DEFAULT:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    and-int/lit8 v0, p9, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v4, v1

    goto :goto_1

    :cond_1
    move-object v4, p3

    :goto_1
    and-int/lit8 v0, p9, 0x8

    const/4 v5, 0x0

    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_2

    move-object v6, v3

    goto :goto_2

    :cond_2
    move-object v6, p5

    :goto_2
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move v7, v0

    goto :goto_3

    :cond_3
    move/from16 v7, p6

    :goto_3
    and-int/lit8 v0, p9, 0x40

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move/from16 v9, p8

    .line 2
    invoke-interface/range {v1 .. v9}, Le/a/a/b/k;->N3(Ljava/lang/CharSequence;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;ZLjava/util/List;Z)V

    return-void
.end method

.method public static G(Le/a/c/a/g/b2;Le/a/c/y/l;Landroid/content/Context;I)V
    .locals 5

    const/4 p2, 0x2

    and-int/2addr p3, p2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1
    iget-object p3, p0, Le/a/c/a/g/b2;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "root"

    .line 2
    invoke-static {p3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v1, "root.context"

    invoke-static {p3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object p3, v0

    :goto_0
    const-string v1, "$this$bindSmartCard"

    .line 3
    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "smartCardUiModel"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    invoke-static {p3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Le/a/c/a/g/b2;->c:Landroid/widget/ImageView;

    const-string v2, "imageCategoryIcon"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v2, p1, Le/a/c/y/l;->a:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    .line 6
    invoke-static {v2}, Le/a/c/a/r/f;->a(Lcom/truecaller/insights/smartcards/SmartCardCategory;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Le/a/c/p/a;->D2(Landroid/widget/ImageView;Ljava/lang/Integer;)V

    .line 7
    iget-object v1, p0, Le/a/c/a/g/b2;->f:Landroid/widget/TextView;

    const-string v2, "textCategory"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v2, p1, Le/a/c/y/l;->a:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    .line 9
    invoke-static {v2, p3}, Le/a/c/a/r/f;->c(Lcom/truecaller/insights/smartcards/SmartCardCategory;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v1, p0, Le/a/c/a/g/b2;->q:Landroid/widget/TextView;

    const-string v2, "textStatus"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v3, p1, Le/a/c/y/l;->b:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    if-eqz v3, :cond_1

    .line 12
    invoke-virtual {v3}, Lcom/truecaller/insights/smartcards/SmartCardStatus;->getLabel()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_1
    invoke-static {v1, v3, v0, p2}, Le/a/c/p/a;->H2(Landroid/widget/TextView;Ljava/lang/String;Le/a/c/r/j/b0;I)V

    .line 13
    iget-object v1, p1, Le/a/c/y/l;->b:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    if-eqz v1, :cond_2

    .line 14
    iget-object v3, p0, Le/a/c/a/g/b2;->q:Landroid/widget/TextView;

    invoke-static {v3, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/insights/smartcards/SmartCardStatus;->getColor()I

    move-result v1

    invoke-static {p3, v1}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 15
    :cond_2
    iget-object v1, p0, Le/a/c/a/g/b2;->p:Landroid/widget/TextView;

    const-string v2, "textRightTitle"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v2, p1, Le/a/c/y/l;->h:Ljava/lang/String;

    .line 17
    invoke-static {v1, v2, v0, p2}, Le/a/c/p/a;->H2(Landroid/widget/TextView;Ljava/lang/String;Le/a/c/r/j/b0;I)V

    .line 18
    iget-object v1, p1, Le/a/c/y/l;->i:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 19
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 20
    iget-object v2, p0, Le/a/c/a/g/b2;->p:Landroid/widget/TextView;

    .line 21
    sget-object v3, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 22
    invoke-static {p3, v1}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result p3

    .line 23
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 24
    :cond_3
    iget-object p3, p0, Le/a/c/a/g/b2;->r:Landroid/widget/TextView;

    const-string v1, "textSubtitle"

    invoke-static {p3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v1, p1, Le/a/c/y/l;->g:Ljava/lang/String;

    .line 26
    invoke-static {p3, v1, v0, p2}, Le/a/c/p/a;->H2(Landroid/widget/TextView;Ljava/lang/String;Le/a/c/r/j/b0;I)V

    .line 27
    iget-object p3, p0, Le/a/c/a/g/b2;->s:Landroid/widget/TextView;

    const-string v1, "textTitle"

    invoke-static {p3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v1, p1, Le/a/c/y/l;->c:Ljava/lang/String;

    .line 29
    iget-object v2, p1, Le/a/c/y/l;->f:Le/a/c/r/j/b0;

    .line 30
    invoke-static {p3, v1, v2}, Le/a/c/p/a;->G2(Landroid/widget/TextView;Ljava/lang/String;Le/a/c/r/j/b0;)V

    .line 31
    iget-object p3, p1, Le/a/c/y/l;->a:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    .line 32
    sget-object v1, Lcom/truecaller/insights/smartcards/SmartCardCategory;->OTP:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    if-ne p3, v1, :cond_4

    .line 33
    iget-object p3, p0, Le/a/c/a/g/b2;->s:Landroid/widget/TextView;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {p3, p2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    .line 34
    :cond_4
    iget-object p3, p0, Le/a/c/a/g/b2;->s:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p3, p2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 35
    :goto_2
    iget p3, p1, Le/a/c/y/l;->e:I

    const-string v1, "textMessage"

    if-eqz p3, :cond_5

    .line 36
    iget-object p3, p0, Le/a/c/a/g/b2;->o:Landroid/widget/TextView;

    invoke-static {p3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v2, p1, Le/a/c/y/l;->d:Ljava/lang/String;

    .line 38
    invoke-static {p3, v2, v0, p2}, Le/a/c/p/a;->H2(Landroid/widget/TextView;Ljava/lang/String;Le/a/c/r/j/b0;I)V

    .line 39
    iget-object p3, p0, Le/a/c/a/g/b2;->o:Landroid/widget/TextView;

    invoke-static {p3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget v1, p1, Le/a/c/y/l;->e:I

    .line 41
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_3

    .line 42
    :cond_5
    iget-object p3, p0, Le/a/c/a/g/b2;->o:Landroid/widget/TextView;

    invoke-static {p3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 43
    :goto_3
    iget p3, p1, Le/a/c/y/l;->e:I

    const-string v1, "messageSpacing"

    if-eqz p3, :cond_7

    .line 44
    iget-object p3, p1, Le/a/c/y/l;->c:Ljava/lang/String;

    if-nez p3, :cond_6

    .line 45
    iget-object p3, p1, Le/a/c/y/l;->g:Ljava/lang/String;

    if-eqz p3, :cond_7

    .line 46
    :cond_6
    iget-object p3, p0, Le/a/c/a/g/b2;->d:Landroid/view/View;

    invoke-static {p3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    goto :goto_4

    .line 47
    :cond_7
    iget-object p3, p0, Le/a/c/a/g/b2;->d:Landroid/view/View;

    invoke-static {p3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 48
    :goto_4
    iget-object p3, p1, Le/a/c/y/l;->k:Ljava/util/List;

    const/4 v1, 0x0

    .line 49
    invoke-static {p3, v1}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/a/c/y/j;

    .line 50
    iget-object v1, p1, Le/a/c/y/l;->k:Ljava/util/List;

    const/4 v2, 0x1

    .line 51
    invoke-static {v1, v2}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/c/y/j;

    .line 52
    iget-object v2, p1, Le/a/c/y/l;->k:Ljava/util/List;

    .line 53
    invoke-static {v2, p2}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/c/y/j;

    .line 54
    iget-object p1, p1, Le/a/c/y/l;->k:Ljava/util/List;

    const/4 v3, 0x3

    .line 55
    invoke-static {p1, v3}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/c/y/j;

    .line 56
    iget-object v3, p0, Le/a/c/a/g/b2;->g:Landroid/widget/TextView;

    const-string v4, "textInfo1Name"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_8

    .line 57
    iget-object v4, p3, Le/a/c/y/j;->a:Ljava/lang/String;

    goto :goto_5

    :cond_8
    move-object v4, v0

    .line 58
    :goto_5
    invoke-static {v3, v4, v0, p2}, Le/a/c/p/a;->H2(Landroid/widget/TextView;Ljava/lang/String;Le/a/c/r/j/b0;I)V

    .line 59
    iget-object v3, p0, Le/a/c/a/g/b2;->i:Landroid/widget/TextView;

    const-string v4, "textInfo2Name"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_9

    .line 60
    iget-object v4, v1, Le/a/c/y/j;->a:Ljava/lang/String;

    goto :goto_6

    :cond_9
    move-object v4, v0

    .line 61
    :goto_6
    invoke-static {v3, v4, v0, p2}, Le/a/c/p/a;->H2(Landroid/widget/TextView;Ljava/lang/String;Le/a/c/r/j/b0;I)V

    .line 62
    iget-object v3, p0, Le/a/c/a/g/b2;->k:Landroid/widget/TextView;

    const-string v4, "textInfo3Name"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_a

    .line 63
    iget-object v4, v2, Le/a/c/y/j;->a:Ljava/lang/String;

    goto :goto_7

    :cond_a
    move-object v4, v0

    .line 64
    :goto_7
    invoke-static {v3, v4, v0, p2}, Le/a/c/p/a;->H2(Landroid/widget/TextView;Ljava/lang/String;Le/a/c/r/j/b0;I)V

    .line 65
    iget-object v3, p0, Le/a/c/a/g/b2;->m:Landroid/widget/TextView;

    const-string v4, "textInfo4Name"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_b

    .line 66
    iget-object v4, p1, Le/a/c/y/j;->a:Ljava/lang/String;

    goto :goto_8

    :cond_b
    move-object v4, v0

    .line 67
    :goto_8
    invoke-static {v3, v4, v0, p2}, Le/a/c/p/a;->H2(Landroid/widget/TextView;Ljava/lang/String;Le/a/c/r/j/b0;I)V

    .line 68
    iget-object v3, p0, Le/a/c/a/g/b2;->h:Landroid/widget/TextView;

    const-string v4, "textInfo1Value"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_c

    .line 69
    iget-object p3, p3, Le/a/c/y/j;->b:Ljava/lang/String;

    goto :goto_9

    :cond_c
    move-object p3, v0

    .line 70
    :goto_9
    invoke-static {v3, p3, v0, p2}, Le/a/c/p/a;->H2(Landroid/widget/TextView;Ljava/lang/String;Le/a/c/r/j/b0;I)V

    .line 71
    iget-object p3, p0, Le/a/c/a/g/b2;->j:Landroid/widget/TextView;

    const-string v3, "textInfo2Value"

    invoke-static {p3, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_d

    .line 72
    iget-object v1, v1, Le/a/c/y/j;->b:Ljava/lang/String;

    goto :goto_a

    :cond_d
    move-object v1, v0

    .line 73
    :goto_a
    invoke-static {p3, v1, v0, p2}, Le/a/c/p/a;->H2(Landroid/widget/TextView;Ljava/lang/String;Le/a/c/r/j/b0;I)V

    .line 74
    iget-object p3, p0, Le/a/c/a/g/b2;->l:Landroid/widget/TextView;

    const-string v1, "textInfo3Value"

    invoke-static {p3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_e

    .line 75
    iget-object v1, v2, Le/a/c/y/j;->b:Ljava/lang/String;

    goto :goto_b

    :cond_e
    move-object v1, v0

    .line 76
    :goto_b
    invoke-static {p3, v1, v0, p2}, Le/a/c/p/a;->H2(Landroid/widget/TextView;Ljava/lang/String;Le/a/c/r/j/b0;I)V

    .line 77
    iget-object p3, p0, Le/a/c/a/g/b2;->n:Landroid/widget/TextView;

    const-string v1, "textInfo4Value"

    invoke-static {p3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_f

    .line 78
    iget-object p1, p1, Le/a/c/y/j;->b:Ljava/lang/String;

    goto :goto_c

    :cond_f
    move-object p1, v0

    .line 79
    :goto_c
    invoke-static {p3, p1, v0, p2}, Le/a/c/p/a;->H2(Landroid/widget/TextView;Ljava/lang/String;Le/a/c/r/j/b0;I)V

    .line 80
    iget-object p1, p0, Le/a/c/a/g/b2;->b:Lcom/google/android/material/button/MaterialButton;

    const-string p2, "buttonShowTransaction"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 81
    iget-object p0, p0, Le/a/c/a/g/b2;->e:Landroid/widget/TextView;

    const-string p1, "textCardInfo"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    return-void
.end method

.method public static final G0(Ljava/lang/String;Ljava/lang/String;)Ls1/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ls1/k<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Ls1/k;

    invoke-direct {v0, p0, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static G1(J)J
    .locals 2

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    and-long/2addr p0, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static final G2(Landroid/widget/TextView;Ljava/lang/String;Le/a/c/r/j/b0;)V
    .locals 5

    const-string v0, "$this$setTextOrHide"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 1
    invoke-static {p0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {p0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    if-nez p2, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 5
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "contentText"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "contentTextColor"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 7
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/c/r/j/b0;

    .line 8
    iget-object v2, p2, Le/a/c/r/j/b0;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 10
    invoke-static {v0, v2}, Le/a/l4/k;->M(Landroid/content/Context;I)I

    move-result v2

    .line 11
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 12
    iget v2, p2, Le/a/c/r/j/b0;->a:I

    .line 13
    iget p2, p2, Le/a/c/r/j/b0;->b:I

    const/16 v4, 0x21

    .line 14
    invoke-interface {v1, v3, v2, p2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public static final H(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Le/a/c/c0/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            "Z)",
            "Le/a/c/c0/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$booleanLiveData"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/c/c0/v;

    invoke-direct {v0, p0, p1, p2}, Le/a/c/c0/v;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static final H0(Lcom/truecaller/messaging/data/types/Message;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v0, v0, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    .line 2
    iget-object p0, p0, Lcom/truecaller/messaging/data/types/Message;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 4
    invoke-static {p0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_1
    const-string v0, "User"

    :goto_0
    return-object v0
.end method

.method public static H1(Le/a/a/o/k;ZZILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    move-object v0, p0

    check-cast v0, Le/a/a/o/o;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v3, Le/a/a/o/m;

    const/4 p0, 0x0

    invoke-direct {v3, v0, p1, p2, p0}, Le/a/a/o/m;-><init>(Le/a/a/o/o;ZZLs1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public static synthetic H2(Landroid/widget/TextView;Ljava/lang/String;Le/a/c/r/j/b0;I)V
    .locals 0

    and-int/lit8 p2, p3, 0x2

    const/4 p2, 0x0

    .line 1
    invoke-static {p0, p1, p2}, Le/a/c/p/a;->G2(Landroid/widget/TextView;Ljava/lang/String;Le/a/c/r/j/b0;)V

    return-void
.end method

.method public static I(Ls1/z/b/a;I)Le/a/b4/a/c;
    .locals 2

    and-int/lit8 p0, p1, 0x1

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    .line 1
    sget-object p0, Le/a/b4/a/a;->b:Le/a/b4/a/a;

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    const-string v0, "isAppLocaleRtl"

    .line 2
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/a/b4/a/c;

    invoke-direct {v0, p0}, Le/a/b4/a/c;-><init>(Ls1/z/b/a;)V

    const/16 p0, 0x31

    const-string v1, "\'"

    .line 4
    invoke-virtual {v0, p0, v1, p1}, Le/a/b4/a/c;->b(CLjava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x32

    const-string p1, "ABC"

    .line 5
    invoke-virtual {v0, p0, p1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const/16 p0, 0x33

    const-string p1, "DEF"

    .line 6
    invoke-virtual {v0, p0, p1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const/16 p0, 0x34

    const-string p1, "GHI"

    .line 7
    invoke-virtual {v0, p0, p1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const/16 p0, 0x35

    const-string p1, "JKL"

    .line 8
    invoke-virtual {v0, p0, p1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const/16 p0, 0x36

    const-string p1, "MNO"

    .line 9
    invoke-virtual {v0, p0, p1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const/16 p0, 0x37

    const-string p1, "PQRS"

    .line 10
    invoke-virtual {v0, p0, p1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const/16 p0, 0x38

    const-string p1, "TUV"

    .line 11
    invoke-virtual {v0, p0, p1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const/16 p0, 0x39

    const-string p1, "WXYZ"

    .line 12
    invoke-virtual {v0, p0, p1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const/16 p0, 0x30

    const-string p1, "+"

    .line 13
    invoke-virtual {v0, p0, p1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    return-object v0
.end method

.method public static final I0(Lw3/b/a/p;)Ls1/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw3/b/a/p;",
            ")",
            "Ls1/k<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$getPrepaidBillUiDate"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lw3/b/a/p;->h()Lw3/b/a/p;

    move-result-object v0

    .line 2
    invoke-static {v0, p0}, Lw3/b/a/h;->r(Lw3/b/a/b0;Lw3/b/a/b0;)Lw3/b/a/h;

    move-result-object v0

    const-string v1, "Days.daysBetween(currentDate, dueDate)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget v0, v0, Lw3/b/a/e0/i;->a:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 4
    new-instance v0, Ls1/k;

    const-string v1, "Expiring on "

    .line 5
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Le/a/c/p/a;->y0(Lw3/b/a/p;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6
    sget v1, Lcom/truecaller/insights/R$attr;->tcx_alertBackgroundOrange:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 7
    invoke-direct {v0, p0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    sget-object p0, Le/a/c/f/k/b;->b:Le/a/c/f/k/b;

    .line 9
    sget-object p0, Le/a/c/f/k/b;->a:Ls1/d0/i;

    .line 10
    invoke-virtual {p0, v0}, Ls1/d0/i;->d(I)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ls1/k;

    const-string v1, "Expiring in "

    const-string v2, " days"

    .line 11
    invoke-static {v1, v0, v2}, Le/d/c/a/a;->l2(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    sget v1, Lcom/truecaller/insights/R$attr;->tcx_alertBackgroundOrange:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 13
    invoke-direct {p0, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    if-ne v0, p0, :cond_2

    .line 14
    new-instance v0, Ls1/k;

    .line 15
    sget p0, Lcom/truecaller/insights/R$attr;->tcx_alertBackgroundOrange:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "Expiring Tomorrow"

    .line 16
    invoke-direct {v0, v1, p0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 17
    new-instance v0, Ls1/k;

    .line 18
    sget p0, Lcom/truecaller/insights/R$attr;->tcx_alertBackgroundOrange:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "Expiring Today"

    .line 19
    invoke-direct {v0, v1, p0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 20
    :cond_3
    new-instance v0, Ls1/k;

    sget p0, Lcom/truecaller/insights/R$attr;->tcx_alertBackgroundOrange:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "Expired"

    invoke-direct {v0, v1, p0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public static final I1(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "throwable"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static final I2(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/LinearLayoutManager;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Ls1/z/b/l;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Landroidx/recyclerview/widget/LinearLayoutManager;",
            "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "rv"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anchor"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFabShown"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/c/a/a/e;

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/truecaller/insights/ui/R$dimen;->scroll_to_top_threshold:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v6, v1

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Le/a/c/a/a/e;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Ls1/z/b/l;Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 3
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$t;)V

    .line 4
    new-instance p1, Le/a/c/a/a/f;

    invoke-direct {p1, p0}, Le/a/c/a/a/f;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic J(Le/a/l/a2;Landroid/content/Context;Lcom/truecaller/premium/PremiumLaunchContext;Ljava/lang/String;Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;ILjava/lang/Object;)Landroid/content/Intent;
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    .line 1
    :cond_1
    invoke-interface {p0, p1, p2, p3, p4}, Le/a/l/a2;->c(Landroid/content/Context;Lcom/truecaller/premium/PremiumLaunchContext;Ljava/lang/String;Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static J0(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;
    .locals 8

    .line 1
    iget v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 2
    iget-object p0, p0, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    invoke-static {v0}, Lw3/c/a/a/a/h;->l(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    return-object p0

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const-string v0, "imPeerId"

    .line 6
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x1505

    const/4 v4, 0x0

    .line 8
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    shl-long v6, v2, v1

    add-long/2addr v6, v2

    int-to-long v2, v5

    add-long/2addr v2, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-wide/32 v4, 0xf4240

    .line 9
    rem-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10
    :cond_3
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/truecaller/messaging/R$string;->incallui_hidden_number:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :cond_4
    invoke-static {}, Ln3/k/g/a;->c()Ln3/k/g/a;

    move-result-object v0

    iget-object p0, p0, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ln3/k/g/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final J1(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 6

    const-string v0, "exception"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2
    :goto_0
    sget-boolean p1, Le/a/c/p/a;->a:Z

    if-eqz p1, :cond_7

    .line 3
    instance-of p1, p0, Ljava/net/ConnectException;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    instance-of p1, p0, Ljava/net/UnknownHostException;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    instance-of p1, p0, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    instance-of p1, p0, Ljava/net/SocketException;

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    instance-of p1, p0, Ljavax/net/ssl/SSLException;

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    instance-of p1, p0, Lp3/a/i1;

    if-eqz p1, :cond_6

    :goto_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_6
    const/4 p1, 0x1

    :goto_2
    if-eqz p1, :cond_7

    .line 4
    sget-object p1, Le/a/c/p/a;->b:Le/a/c4/d;

    if-eqz p1, :cond_7

    check-cast p1, Le/a/c4/e;

    invoke-virtual {p1, p0}, Le/a/c4/e;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {}, Le/a/c/p/a;->s0()Le/m/d/n/i;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 5
    iget-object p0, p0, Le/m/d/n/i;->a:Le/m/d/n/j/j/d0;

    .line 6
    iget-object v1, p0, Le/m/d/n/j/j/d0;->f:Le/m/d/n/j/j/w;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 9
    iget-object p0, v1, Le/m/d/n/j/j/w;->e:Le/m/d/n/j/j/m;

    new-instance p1, Le/m/d/n/j/j/y;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Le/m/d/n/j/j/y;-><init>(Le/m/d/n/j/j/w;JLjava/lang/Throwable;Ljava/lang/Thread;)V

    .line 10
    new-instance v0, Le/m/d/n/j/j/n;

    invoke-direct {v0, p0, p1}, Le/m/d/n/j/j/n;-><init>(Le/m/d/n/j/j/m;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Le/m/d/n/j/j/m;->b(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    :cond_7
    return-void
.end method

.method public static final J2(Landroid/content/Intent;)Z
    .locals 3

    const-string v0, "$this$shouldAddContentUris"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "contentType"

    .line 2
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text/plain"

    .line 3
    invoke-static {v0, p0, v2}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "text/html"

    invoke-static {v0, p0, v2}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v2

    :goto_1
    if-nez p0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method public static K(Ljava/lang/String;Ls1/z/b/a;I)Le/a/b4/a/c;
    .locals 23

    move-object/from16 v0, p0

    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_0

    .line 1
    sget-object v1, Le/a/b4/a/b;->b:Le/a/b4/a/b;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "language"

    .line 2
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "isAppLocaleRtl"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0xc31

    const-string v4, "+"

    const/16 v5, 0x33

    const/16 v6, 0x32

    const/16 v7, 0x39

    const/16 v11, 0x38

    const/16 v15, 0x37

    const/16 v8, 0x36

    const/16 v9, 0x35

    const/16 v10, 0x34

    const-string v12, "sb.append(\'\u0636\')\n         \u2026  .append(\'\u0633\').toString()"

    const-string v13, "sb.append(\'\u062b\')\n         \u2026  .append(\'\u0628\').toString()"

    const/4 v14, 0x0

    if-eq v2, v3, :cond_a

    const/16 v3, 0xc45

    if-eq v2, v3, :cond_9

    const/16 v3, 0xca7

    if-eq v2, v3, :cond_8

    const/16 v3, 0xcbb

    if-eq v2, v3, :cond_7

    const/16 v3, 0xcfd

    if-eq v2, v3, :cond_6

    const/16 v3, 0xd2e

    if-eq v2, v3, :cond_5

    const/16 v3, 0xd64

    if-eq v2, v3, :cond_4

    const/16 v3, 0xe43

    if-eq v2, v3, :cond_3

    const/16 v3, 0xe92

    if-eq v2, v3, :cond_2

    const/16 v3, 0xe96

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v2, "uk"

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5
    new-instance v0, Le/a/b4/a/c;

    invoke-direct {v0, v1}, Le/a/b4/a/c;-><init>(Ls1/z/b/a;)V

    const-string v1, "\u0410\u0411\u0412\u0413\u0490"

    .line 6
    invoke-virtual {v0, v6, v1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const-string v1, "\u0414\u0415\u0404\u0416\u0417"

    .line 7
    invoke-virtual {v0, v5, v1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const-string v1, "\u0418\u0406\u0407\u0419\u041a\u041b"

    .line 8
    invoke-virtual {v0, v10, v1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const-string v1, "\u041c\u041d\u041e\u041f"

    .line 9
    invoke-virtual {v0, v9, v1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const-string v1, "\u0420\u0421\u0422\u0423"

    .line 10
    invoke-virtual {v0, v8, v1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const-string v1, "\u0424\u0425\u0426\u0427"

    .line 11
    invoke-virtual {v0, v15, v1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const-string v1, "\u0428\u0429"

    .line 12
    invoke-virtual {v0, v11, v1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const-string v1, "\u042c\u042e\u042f"

    .line 13
    invoke-virtual {v0, v7, v1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const/16 v1, 0x30

    .line 14
    invoke-virtual {v0, v1, v4}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    const-string v2, "ug"

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 16
    new-instance v0, Le/a/b4/a/c;

    invoke-direct {v0, v1}, Le/a/b4/a/c;-><init>(Ls1/z/b/a;)V

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x31

    const-string v3, "\u0626"

    .line 18
    invoke-virtual {v0, v2, v3}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const/16 v2, 0x67e

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x628

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x6d5

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x627

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sb.append(\'\u067e\')\n         \u2026  .append(\'\u0627\').toString()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, v6, v2}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    .line 24
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v2, 0x62e

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x686

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x62c

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x62a

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sb.append(\'\u062e\')\n         \u2026  .append(\'\u062a\').toString()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, v5, v2}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    .line 30
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v2, 0x698

    const/16 v3, 0x632

    const/16 v5, 0x631

    const/16 v6, 0x62f

    .line 31
    invoke-static {v1, v2, v3, v5, v6}, Le/d/c/a/a;->H2(Ljava/lang/StringBuilder;CCCC)Ljava/lang/String;

    move-result-object v20

    const-string v17, "sb.append(\'\u0698\')\n         \u2026  .append(\'\u062f\').toString()"

    move-object/from16 v16, v20

    move-object/from16 v18, v0

    move/from16 v19, v10

    move-object/from16 v21, v1

    move/from16 v22, v14

    .line 32
    invoke-static/range {v16 .. v22}, Le/d/c/a/a;->H0(Ljava/lang/String;Ljava/lang/String;Le/a/b4/a/c;CLjava/lang/String;Ljava/lang/StringBuilder;I)V

    const/16 v2, 0x641

    const/16 v3, 0x63a

    const/16 v5, 0x634

    const/16 v6, 0x633

    .line 33
    invoke-static {v1, v2, v3, v5, v6}, Le/d/c/a/a;->H2(Ljava/lang/StringBuilder;CCCC)Ljava/lang/String;

    move-result-object v20

    const-string v17, "sb.append(\'\u0641\')\n         \u2026  .append(\'\u0633\').toString()"

    move-object/from16 v16, v20

    move/from16 v19, v9

    .line 34
    invoke-static/range {v16 .. v22}, Le/d/c/a/a;->H0(Ljava/lang/String;Ljava/lang/String;Le/a/b4/a/c;CLjava/lang/String;Ljava/lang/StringBuilder;I)V

    const/16 v2, 0x6ad

    const/16 v3, 0x6af

    const/16 v5, 0x643

    const/16 v6, 0x642

    .line 35
    invoke-static {v1, v2, v3, v5, v6}, Le/d/c/a/a;->H2(Ljava/lang/StringBuilder;CCCC)Ljava/lang/String;

    move-result-object v20

    const-string v17, "sb.append(\'\u06ad\')\n         \u2026  .append(\'\u0642\').toString()"

    move-object/from16 v16, v20

    move/from16 v19, v8

    .line 36
    invoke-static/range {v16 .. v22}, Le/d/c/a/a;->H0(Ljava/lang/String;Ljava/lang/String;Le/a/b4/a/c;CLjava/lang/String;Ljava/lang/StringBuilder;I)V

    const/16 v2, 0x6be

    const/16 v3, 0x646

    const/16 v5, 0x645

    const/16 v6, 0x644

    .line 37
    invoke-static {v1, v2, v3, v5, v6}, Le/d/c/a/a;->H2(Ljava/lang/StringBuilder;CCCC)Ljava/lang/String;

    move-result-object v16

    const-string v13, "sb.append(\'\u06be\')\n         \u2026  .append(\'\u0644\').toString()"

    move-object/from16 v12, v16

    move v2, v14

    move-object v14, v0

    move-object/from16 v17, v1

    move/from16 v18, v2

    .line 38
    invoke-static/range {v12 .. v18}, Le/d/c/a/a;->H0(Ljava/lang/String;Ljava/lang/String;Le/a/b4/a/c;CLjava/lang/String;Ljava/lang/StringBuilder;I)V

    const/16 v3, 0x6c8

    const/16 v5, 0x6c6

    const/16 v6, 0x6c7

    const/16 v8, 0x648

    .line 39
    invoke-static {v1, v3, v5, v6, v8}, Le/d/c/a/a;->H2(Ljava/lang/StringBuilder;CCCC)Ljava/lang/String;

    move-result-object v12

    const-string v9, "sb.append(\'\u06c8\')\n         \u2026  .append(\'\u0648\').toString()"

    move-object v8, v12

    move-object v10, v0

    move-object v13, v1

    move v14, v2

    .line 40
    invoke-static/range {v8 .. v14}, Le/d/c/a/a;->H0(Ljava/lang/String;Ljava/lang/String;Le/a/b4/a/c;CLjava/lang/String;Ljava/lang/StringBuilder;I)V

    const/16 v2, 0x64a

    const/16 v3, 0x649

    const/16 v5, 0x6d0

    const/16 v6, 0x6cb

    .line 41
    invoke-static {v1, v2, v3, v5, v6}, Le/d/c/a/a;->H2(Ljava/lang/StringBuilder;CCCC)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sb.append(\'\u064a\')\n         \u2026  .append(\'\u06cb\').toString()"

    .line 42
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0, v7, v1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const/16 v1, 0x30

    .line 44
    invoke-virtual {v0, v1, v4}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    goto/16 :goto_3

    :cond_3
    const-string v2, "ru"

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 46
    new-instance v0, Le/a/b4/a/c;

    invoke-direct {v0, v1}, Le/a/b4/a/c;-><init>(Ls1/z/b/a;)V

    const-string v1, "\u0410\u0411\u0412\u0413"

    .line 47
    invoke-virtual {v0, v6, v1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const-string v1, "\u0414\u0415\u0401\u0416\u0417"

    const-string v2, "\u0414\u0415\u0416\u0417"

    .line 48
    invoke-virtual {v0, v5, v1, v2}, Le/a/b4/a/c;->b(CLjava/lang/String;Ljava/lang/String;)V

    const-string v1, "\u0418\u0419\u041a\u041b"

    .line 49
    invoke-virtual {v0, v10, v1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const-string v1, "\u041c\u041d\u041e\u041f"

    .line 50
    invoke-virtual {v0, v9, v1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const-string v1, "\u0420\u0421\u0422\u0423"

    .line 51
    invoke-virtual {v0, v8, v1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const-string v1, "\u0424\u0425\u0426\u0427"

    .line 52
    invoke-virtual {v0, v15, v1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const-string v1, "\u0428\u0429\u042a\u042b"

    .line 53
    invoke-virtual {v0, v11, v1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const-string v1, "\u042c\u042d\u042e\u042f"

    .line 54
    invoke-virtual {v0, v7, v1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const/16 v1, 0x30

    .line 55
    invoke-virtual {v0, v1, v4}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    const-string v2, "ko"

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 57
    new-instance v0, Le/a/b4/a/c;

    invoke-direct {v0, v1}, Le/a/b4/a/c;-><init>(Ls1/z/b/a;)V

    const-string v1, "\u3131\u314b\u3132"

    const-string v2, "\u3131\u314b"

    .line 58
    invoke-virtual {v0, v10, v1, v2}, Le/a/b4/a/c;->b(CLjava/lang/String;Ljava/lang/String;)V

    const-string v1, "\u3134\u3139"

    const-string v2, "\u3134\u3139"

    .line 59
    invoke-virtual {v0, v9, v1, v2}, Le/a/b4/a/c;->b(CLjava/lang/String;Ljava/lang/String;)V

    const-string v1, "\u3137\u314c\u3138"

    const-string v2, "\u3137\u314c"

    .line 60
    invoke-virtual {v0, v8, v1, v2}, Le/a/b4/a/c;->b(CLjava/lang/String;Ljava/lang/String;)V

    const-string v1, "\u3142\u314d\u3143"

    const-string v2, "\u3142\u314d"

    .line 61
    invoke-virtual {v0, v15, v1, v2}, Le/a/b4/a/c;->b(CLjava/lang/String;Ljava/lang/String;)V

    const-string v1, "\u314e\u3145\u3146"

    const-string v2, "\u3145\u314e"

    .line 62
    invoke-virtual {v0, v11, v1, v2}, Le/a/b4/a/c;->b(CLjava/lang/String;Ljava/lang/String;)V

    const-string v1, "\u3148\u314a\u3149"

    const-string v2, "\u3148\u314a"

    .line 63
    invoke-virtual {v0, v7, v1, v2}, Le/a/b4/a/c;->b(CLjava/lang/String;Ljava/lang/String;)V

    const-string v1, "\u3147\u3141+"

    const-string v2, "\u3147\u3141"

    const/16 v3, 0x30

    .line 64
    invoke-virtual {v0, v3, v1, v2}, Le/a/b4/a/c;->b(CLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_5
    move v2, v14

    const-string v3, "iw"

    .line 65
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1

    :cond_6
    move v2, v14

    const-string v3, "he"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 66
    :goto_1
    new-instance v0, Le/a/b4/a/c;

    invoke-direct {v0, v1}, Le/a/b4/a/c;-><init>(Ls1/z/b/a;)V

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v3, 0x5d5

    .line 68
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d4

    .line 69
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d3

    .line 70
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v12, "sb.append(\'\u05d5\')\n         \u2026  .append(\'\u05d3\').toString()"

    invoke-static {v3, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0, v6, v3}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v3, 0x5d2

    .line 73
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d1

    .line 74
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d0

    .line 75
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "sb.append(\'\u05d2\')\n         \u2026  .append(\'\u05d0\').toString()"

    invoke-static {v3, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0, v5, v3}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v3, 0x5df

    .line 78
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x5e0

    .line 79
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x5dd

    .line 80
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x5de

    .line 81
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "sb.append(\'\u05df\')\n         \u2026  .append(\'\u05de\').toString()"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0, v10, v3}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v3, 0x5dc

    const/16 v5, 0x5da

    const/16 v6, 0x5db

    const/16 v10, 0x5d9

    .line 84
    invoke-static {v1, v3, v5, v6, v10}, Le/d/c/a/a;->H2(Ljava/lang/StringBuilder;CCCC)Ljava/lang/String;

    move-result-object v20

    const-string v17, "sb.append(\'\u05dc\')\n         \u2026  .append(\'\u05d9\').toString()"

    move-object/from16 v16, v20

    move-object/from16 v18, v0

    move/from16 v19, v9

    move-object/from16 v21, v1

    move/from16 v22, v2

    .line 85
    invoke-static/range {v16 .. v22}, Le/d/c/a/a;->H0(Ljava/lang/String;Ljava/lang/String;Le/a/b4/a/c;CLjava/lang/String;Ljava/lang/StringBuilder;I)V

    const/16 v3, 0x5d8

    .line 86
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d7

    .line 87
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d6

    .line 88
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "sb.append(\'\u05d8\')\n         \u2026  .append(\'\u05d6\').toString()"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, v8, v3}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v3, 0x5ea

    .line 91
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x5e9

    .line 92
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x5e8

    .line 93
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v13, "sb.append(\'\u05ea\')\n         \u2026  .append(\'\u05e8\').toString()"

    move-object/from16 v12, v16

    move-object v14, v0

    move-object/from16 v17, v1

    move/from16 v18, v2

    invoke-static/range {v12 .. v18}, Le/d/c/a/a;->H0(Ljava/lang/String;Ljava/lang/String;Le/a/b4/a/c;CLjava/lang/String;Ljava/lang/StringBuilder;I)V

    const/16 v3, 0x5e7

    .line 94
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x5e5

    .line 95
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x5e6

    .line 96
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "sb.append(\'\u05e7\')\n         \u2026  .append(\'\u05e6\').toString()"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0, v11, v3}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v2, 0x5e3

    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x5e4

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x5e2

    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x5e1

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sb.append(\'\u05e3\')\n         \u2026  .append(\'\u05e1\').toString()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0, v7, v1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const/16 v1, 0x30

    .line 104
    invoke-virtual {v0, v1, v4}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    goto/16 :goto_3

    :cond_7
    move v2, v14

    const-string v3, "fa"

    .line 105
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 106
    new-instance v0, Le/a/b4/a/c;

    invoke-direct {v0, v1}, Le/a/b4/a/c;-><init>(Ls1/z/b/a;)V

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x62b

    .line 108
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x62a

    .line 109
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x67e

    .line 110
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x628

    .line 111
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0, v6, v3}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v3, 0x622

    .line 114
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x627

    .line 115
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "sb.append(\'\u0622\')\n         \u2026  .append(\'\u0627\').toString()"

    invoke-static {v3, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0, v5, v3}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v3, 0x636

    const/16 v5, 0x635

    const/16 v6, 0x634

    const/16 v13, 0x633

    .line 118
    invoke-static {v1, v3, v5, v6, v13}, Le/d/c/a/a;->H2(Ljava/lang/StringBuilder;CCCC)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v16, v20

    move-object/from16 v17, v12

    move-object/from16 v18, v0

    move/from16 v19, v10

    move-object/from16 v21, v1

    move/from16 v22, v2

    .line 119
    invoke-static/range {v16 .. v22}, Le/d/c/a/a;->H0(Ljava/lang/String;Ljava/lang/String;Le/a/b4/a/c;CLjava/lang/String;Ljava/lang/StringBuilder;I)V

    const/16 v3, 0x698

    .line 120
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x632

    .line 121
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x631

    .line 122
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x630

    .line 123
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x62f

    .line 124
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "sb.append(\'\u0698\')\n         \u2026  .append(\'\u062f\').toString()"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0, v9, v3}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    .line 126
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v3, 0x62e

    const/16 v5, 0x62d

    const/16 v6, 0x686

    const/16 v9, 0x62c

    .line 127
    invoke-static {v1, v3, v5, v6, v9}, Le/d/c/a/a;->H2(Ljava/lang/StringBuilder;CCCC)Ljava/lang/String;

    move-result-object v20

    const-string v17, "sb.append(\'\u062e\')\n         \u2026  .append(\'\u062c\').toString()"

    move-object/from16 v16, v20

    move/from16 v19, v8

    .line 128
    invoke-static/range {v16 .. v22}, Le/d/c/a/a;->H0(Ljava/lang/String;Ljava/lang/String;Le/a/b4/a/c;CLjava/lang/String;Ljava/lang/StringBuilder;I)V

    const/16 v3, 0x6cc

    const/16 v5, 0x647

    const/16 v6, 0x648

    const/16 v8, 0x646

    .line 129
    invoke-static {v1, v3, v5, v6, v8}, Le/d/c/a/a;->H2(Ljava/lang/StringBuilder;CCCC)Ljava/lang/String;

    move-result-object v16

    const-string v13, "sb.append(\'\u06cc\')\n         \u2026  .append(\'\u0646\').toString()"

    move-object/from16 v12, v16

    move-object v14, v0

    move-object/from16 v17, v1

    move/from16 v18, v2

    .line 130
    invoke-static/range {v12 .. v18}, Le/d/c/a/a;->H0(Ljava/lang/String;Ljava/lang/String;Le/a/b4/a/c;CLjava/lang/String;Ljava/lang/StringBuilder;I)V

    const/16 v3, 0x645

    .line 131
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x644

    .line 132
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x6af

    .line 133
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x6a9

    .line 134
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x642

    .line 135
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x641

    .line 136
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "sb.append(\'\u0645\')\n         \u2026  .append(\'\u0641\').toString()"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0, v11, v3}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v2, 0x63a

    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x639

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x638

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x637

    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sb.append(\'\u063a\')\n         \u2026  .append(\'\u0637\').toString()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0, v7, v1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const/16 v1, 0x30

    .line 144
    invoke-virtual {v0, v1, v4}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    goto/16 :goto_3

    :cond_8
    const-string v2, "el"

    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 146
    new-instance v0, Le/a/b4/a/c;

    invoke-direct {v0, v1}, Le/a/b4/a/c;-><init>(Ls1/z/b/a;)V

    const-string v1, "\u0391\u0392\u0393"

    .line 147
    invoke-virtual {v0, v6, v1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const-string v1, "\u0394\u0395\u0396"

    .line 148
    invoke-virtual {v0, v5, v1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const-string v1, "\u0397\u0398\u0399"

    .line 149
    invoke-virtual {v0, v10, v1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const-string v1, "\u039a\u039b\u039c"

    .line 150
    invoke-virtual {v0, v9, v1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const-string v1, "\u039d\u039e\u039f"

    .line 151
    invoke-virtual {v0, v8, v1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const-string v1, "\u03a0\u03a1\u03a3\u03c2"

    .line 152
    invoke-virtual {v0, v15, v1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const-string v1, "\u03a4\u03a5\u03a6"

    .line 153
    invoke-virtual {v0, v11, v1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const-string v1, "\u03a7\u03a8\u03a9"

    .line 154
    invoke-virtual {v0, v7, v1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const/16 v1, 0x30

    .line 155
    invoke-virtual {v0, v1, v4}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    goto/16 :goto_3

    :cond_9
    const-string v2, "bg"

    .line 156
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 157
    new-instance v0, Le/a/b4/a/c;

    invoke-direct {v0, v1}, Le/a/b4/a/c;-><init>(Ls1/z/b/a;)V

    const-string v1, "\u0410\u0411\u0412\u0413"

    .line 158
    invoke-virtual {v0, v6, v1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const-string v1, "\u0414\u0415\u0416\u0417"

    .line 159
    invoke-virtual {v0, v5, v1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const-string v1, "\u0418\u0419\u041a\u041b"

    .line 160
    invoke-virtual {v0, v10, v1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const-string v1, "\u041c\u041d\u041e"

    .line 161
    invoke-virtual {v0, v9, v1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const-string v1, "\u041f\u0420\u0421"

    .line 162
    invoke-virtual {v0, v8, v1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const-string v1, "\u0422\u0423\u0424\u0425"

    .line 163
    invoke-virtual {v0, v15, v1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const-string v1, "\u0426\u0427\u0428\u0429"

    .line 164
    invoke-virtual {v0, v11, v1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const-string v1, "\u042a\u042c\u042e\u042f"

    .line 165
    invoke-virtual {v0, v7, v1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const/16 v1, 0x30

    .line 166
    invoke-virtual {v0, v1, v4}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    move v2, v14

    const-string v3, "ar"

    .line 167
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 168
    new-instance v0, Le/a/b4/a/c;

    invoke-direct {v0, v1}, Le/a/b4/a/c;-><init>(Ls1/z/b/a;)V

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x62b

    .line 170
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x629

    .line 171
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x62a

    .line 172
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x628

    .line 173
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0, v6, v3}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    .line 175
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v3, 0x626

    .line 176
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x624

    .line 177
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x621

    .line 178
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x622

    .line 179
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x625

    .line 180
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x623

    .line 181
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x627

    .line 182
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "sb.append(\'\u0626\')\n         \u2026  .append(\'\u0627\').toString()"

    invoke-static {v3, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0, v5, v3}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v3, 0x636

    .line 185
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x635

    .line 186
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x634

    .line 187
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x633

    .line 188
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0, v10, v3}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v3, 0x632

    const/16 v5, 0x631

    const/16 v6, 0x630

    const/16 v10, 0x62f

    .line 191
    invoke-static {v1, v3, v5, v6, v10}, Le/d/c/a/a;->H2(Ljava/lang/StringBuilder;CCCC)Ljava/lang/String;

    move-result-object v20

    const-string v17, "sb.append(\'\u0632\')\n         \u2026  .append(\'\u062f\').toString()"

    move-object/from16 v16, v20

    move-object/from16 v18, v0

    move/from16 v19, v9

    move-object/from16 v21, v1

    move/from16 v22, v2

    .line 192
    invoke-static/range {v16 .. v22}, Le/d/c/a/a;->H0(Ljava/lang/String;Ljava/lang/String;Le/a/b4/a/c;CLjava/lang/String;Ljava/lang/StringBuilder;I)V

    const/16 v3, 0x62e

    .line 193
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x62d

    .line 194
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x62c

    .line 195
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "sb.append(\'\u062e\')\n         \u2026  .append(\'\u062c\').toString()"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0, v8, v3}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    .line 197
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v3, 0x649

    .line 198
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x64a

    .line 199
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x648

    .line 200
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x647

    .line 201
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x646

    .line 202
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "sb.append(\'\u0649\')\n         \u2026  .append(\'\u0646\').toString()"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0, v15, v3}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v3, 0x645

    .line 205
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x644

    .line 206
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x643

    .line 207
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x642

    .line 208
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x641

    .line 209
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "sb.append(\'\u0645\')\n         \u2026  .append(\'\u0641\').toString()"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0, v11, v3}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    .line 211
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v2, 0x63a

    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x639

    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x638

    .line 214
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x637

    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sb.append(\'\u063a\')\n         \u2026  .append(\'\u0637\').toString()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, v7, v1}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    const/16 v1, 0x30

    .line 217
    invoke-virtual {v0, v1, v4}, Le/a/b4/a/c;->a(CLjava/lang/String;)V

    goto :goto_3

    :cond_b
    :goto_2
    const/4 v0, 0x0

    :goto_3
    return-object v0
.end method

.method public static synthetic K0(Le/a/c/a0/z;Ljava/lang/String;Lcom/truecaller/insights/source/SourceType;Ljava/lang/String;Ls1/w/d;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p3, p5, 0x2

    const/4 p6, 0x0

    if-eqz p3, :cond_0

    move-object p2, p6

    :cond_0
    and-int/lit8 p3, p5, 0x4

    .line 1
    check-cast p0, Le/a/c/a0/a0;

    invoke-virtual {p0, p1, p2, p6, p4}, Le/a/c/a0/a0;->a(Ljava/lang/String;Lcom/truecaller/insights/source/SourceType;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final K1(Le/a/q2/a;Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/q2/a;",
            "Ljava/util/List<",
            "Ls1/k<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "$this$logLanguageIdentificationResults"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "confidenceValues"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceLang"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ls1/k;

    .line 4
    iget-object v2, v1, Ls1/k;->a:Ljava/lang/Object;

    .line 5
    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 7
    invoke-static {v0, v2}, Le/d/c/a/a;->R(Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    :cond_0
    check-cast v3, Ljava/util/List;

    .line 8
    iget-object v1, v1, Ls1/k;->b:Ljava/lang/Object;

    .line 9
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v1, v0, p2}, Le/a/c/p/a;->N1(Le/a/q2/a;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static final K2(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "$this$takeIfBelow12"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static final L(Lcom/truecaller/api/services/messenger/v1/events/Event;)Ljava/lang/Integer;
    .locals 2

    const-string v0, "$this$businessFeatureFlags"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getMessageSent()Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;->getLegacyUserInfo()Lcom/truecaller/api/services/messenger/v1/models/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/UserInfo;->getBusinessExt()Lcom/truecaller/api/services/messenger/v1/models/BusinessExt;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/BusinessExt;->getEnabledFeatures()J

    move-result-wide v0

    long-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final L0(Ljava/util/Collection;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Le/a/c/w/o0/k/e;",
            ">;)",
            "Ljava/util/Set<",
            "Le/a/c/w/o0/k/e$c;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$getSenders"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Le/a/c/w/o0/k/e$c;

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {v0}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic L1(Le/a/a/c/r3;Ljava/util/List;Ljava/lang/String;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p5, 0x2

    const/4 p2, 0x0

    .line 1
    check-cast p0, Le/a/a/c/s3;

    invoke-virtual {p0, p1, p2, p3, p4}, Le/a/a/c/s3;->c(Ljava/util/List;Ljava/lang/String;IZ)V

    return-void
.end method

.method public static final L2(Le/a/c/r/e/a/a;Le/a/b0/m/c/a;Le/a/b0/m/d/a;Le/a/c/w/o0/g;Ls1/w/d;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/r/e/a/a;",
            "Le/a/b0/m/c/a;",
            "Le/a/b0/m/d/a;",
            "Le/a/c/w/o0/g;",
            "Ls1/w/d<",
            "-",
            "Le/a/c/a/l/a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    instance-of v2, v1, Le/a/c/a/d/a/d/a;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/c/a/d/a/d/a;

    iget v3, v2, Le/a/c/a/d/a/d/a;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/c/a/d/a/d/a;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/c/a/d/a/d/a;

    invoke-direct {v2, v1}, Le/a/c/a/d/a/d/a;-><init>(Ls1/w/d;)V

    :goto_0
    move-object v6, v2

    iget-object v1, v6, Le/a/c/a/d/a/d/a;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v6, Le/a/c/a/d/a/d/a;->e:I

    const-string v9, "wallet"

    const/4 v10, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v10, :cond_1

    iget-object v0, v6, Le/a/c/a/d/a/d/a;->i:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v6, Le/a/c/a/d/a/d/a;->h:Ljava/lang/Object;

    check-cast v2, Le/a/b0/m/d/a;

    iget-object v3, v6, Le/a/c/a/d/a/d/a;->g:Ljava/lang/Object;

    check-cast v3, Le/a/b0/m/c/a;

    iget-object v4, v6, Le/a/c/a/d/a/d/a;->f:Ljava/lang/Object;

    check-cast v4, Le/a/c/r/e/a/a;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v12, v2

    move-object v11, v3

    move-object v3, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Le/a/c/r/e/a/a;->a:Ljava/lang/String;

    const-string v3, "sodexo"

    .line 5
    invoke-static {v1, v3, v10}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v9

    goto :goto_1

    .line 6
    :cond_3
    iget-object v1, v0, Le/a/c/r/e/a/a;->b:Ljava/lang/String;

    .line 7
    :goto_1
    iget-object v4, v0, Le/a/c/r/e/a/a;->a:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 8
    iput-object v0, v6, Le/a/c/a/d/a/d/a;->f:Ljava/lang/Object;

    move-object/from16 v11, p1

    iput-object v11, v6, Le/a/c/a/d/a/d/a;->g:Ljava/lang/Object;

    move-object/from16 v12, p2

    iput-object v12, v6, Le/a/c/a/d/a/d/a;->h:Ljava/lang/Object;

    iput-object v1, v6, Le/a/c/a/d/a/d/a;->i:Ljava/lang/Object;

    iput v10, v6, Le/a/c/a/d/a/d/a;->e:I

    move-object/from16 v3, p3

    invoke-static/range {v3 .. v8}, Le/a/c/p/a;->A0(Le/a/c/w/o0/g;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_4

    return-object v2

    .line 9
    :cond_4
    :goto_2
    check-cast v3, Le/a/c/w/o0/e;

    .line 10
    iget-object v2, v3, Le/a/c/w/o0/e;->c:Le/a/c/w/o0/f;

    .line 11
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    instance-of v3, v2, Le/a/c/w/o0/f$a;

    if-eqz v3, :cond_8

    check-cast v2, Le/a/c/w/o0/f$a;

    .line 13
    iget-object v2, v2, Le/a/c/w/o0/f$a;->a:Lcom/truecaller/insights/repository/filters/InfoCardType;

    .line 14
    sget-object v3, Lcom/truecaller/insights/repository/filters/InfoCardType;->SEMICARD:Lcom/truecaller/insights/repository/filters/InfoCardType;

    if-ne v2, v3, :cond_5

    move v2, v10

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    .line 15
    :goto_3
    iget-object v3, v0, Le/a/c/r/e/a/a;->a:Ljava/lang/String;

    .line 16
    invoke-interface {v11, v3}, Le/a/b0/m/c/a;->Kw(Ljava/lang/String;)Le/a/b0/m/a/a;

    move-result-object v3

    .line 17
    iget-object v4, v0, Le/a/c/r/e/a/a;->a:Ljava/lang/String;

    .line 18
    invoke-interface {v12, v4}, Le/a/b0/m/d/a;->b(Ljava/lang/String;)Lcom/truecaller/common/payments/senderinfo/SenderInfo;

    move-result-object v4

    .line 19
    new-instance v5, Le/a/c/a/l/a;

    .line 20
    iget-object v12, v3, Le/a/b0/m/a/a;->c:Landroid/net/Uri;

    .line 21
    iget-object v13, v3, Le/a/b0/m/a/a;->b:Ljava/lang/String;

    .line 22
    iget-object v0, v0, Le/a/c/r/e/a/a;->a:Ljava/lang/String;

    .line 23
    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string v0, "card"

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/truecaller/insights/ui/models/AccountType;->DEBIT:Lcom/truecaller/insights/ui/models/AccountType;

    goto :goto_5

    :sswitch_1
    const-string v0, "acc"

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/truecaller/insights/ui/models/AccountType;->ACCOUNT:Lcom/truecaller/insights/ui/models/AccountType;

    goto :goto_5

    :sswitch_2
    const-string v0, "debitcard"

    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/truecaller/insights/ui/models/AccountType;->DEBIT:Lcom/truecaller/insights/ui/models/AccountType;

    goto :goto_5

    :sswitch_3
    const-string v0, "creditcard"

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/truecaller/insights/ui/models/AccountType;->CREDIT:Lcom/truecaller/insights/ui/models/AccountType;

    goto :goto_5

    .line 29
    :sswitch_4
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/truecaller/insights/ui/models/AccountType;->WALLET:Lcom/truecaller/insights/ui/models/AccountType;

    goto :goto_5

    .line 30
    :cond_6
    :goto_4
    sget-object v0, Lcom/truecaller/insights/ui/models/AccountType;->OTHERS:Lcom/truecaller/insights/ui/models/AccountType;

    :goto_5
    move-object v15, v0

    if-eqz v4, :cond_7

    .line 31
    invoke-virtual {v4}, Lcom/truecaller/common/payments/senderinfo/SenderInfo;->getSymbol()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    :goto_6
    move-object/from16 v17, v0

    xor-int/lit8 v18, v2, 0x1

    const/16 v16, 0x0

    move-object v11, v5

    .line 32
    invoke-direct/range {v11 .. v18}, Le/a/c/a/l/a;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Lcom/truecaller/insights/ui/models/AccountType;ZLjava/lang/String;Z)V

    return-object v5

    .line 33
    :cond_8
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2f65ac07 -> :sswitch_4
        -0x219bfe77 -> :sswitch_3
        -0x1f8d4604 -> :sswitch_2
        0x17881 -> :sswitch_1
        0x2e7b10 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final M(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "$this$cancelNotification"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    const-string v1, "tc_notification_id"

    .line 1
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v0, :cond_0

    .line 2
    new-instance v0, Ln3/k/a/x;

    invoke-direct {v0, p0}, Ln3/k/a/x;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0, p1}, Ln3/k/a/x;->b(I)V

    .line 4
    invoke-static {p0}, Le/a/p5/s0/g;->s(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static final M0(Lu3/a0;)Ljava/lang/String;
    .locals 4

    const-string v0, "$this$getTcEndpointName"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lu3/a0;->e:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, ".truecaller.com"

    const/4 v3, 0x0

    .line 2
    invoke-static {v0, v2, v3, v1}, Ls1/f0/r;->m(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    iget-object p0, p0, Lu3/a0;->e:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0xf

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final M1(Ljava/lang/String;)V
    .locals 5

    const-string v0, "msg"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-boolean v0, Le/a/c/p/a;->a:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Le/a/c/p/a;->s0()Le/m/d/n/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Le/m/d/n/i;->a:Le/m/d/n/j/j/d0;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Le/m/d/n/j/j/d0;->c:J

    sub-long/2addr v1, v3

    .line 6
    iget-object v0, v0, Le/m/d/n/j/j/d0;->f:Le/m/d/n/j/j/w;

    .line 7
    iget-object v3, v0, Le/m/d/n/j/j/w;->e:Le/m/d/n/j/j/m;

    new-instance v4, Le/m/d/n/j/j/x;

    invoke-direct {v4, v0, v1, v2, p0}, Le/m/d/n/j/j/x;-><init>(Le/m/d/n/j/j/w;JLjava/lang/String;)V

    invoke-virtual {v3, v4}, Le/m/d/n/j/j/m;->b(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method

.method public static final M2(Lcom/truecaller/insights/models/smartcards/ActionStateEntity;)Le/a/c/r/j/b;
    .locals 12

    const-string v0, "$this$toActionState"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/c/r/j/b;

    invoke-virtual {p0}, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->getId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->getEntityId()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->getDomain()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->getState()I

    move-result v7

    invoke-virtual {p0}, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->getCreatedAt()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {p0}, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->getUpdatesAt()Ljava/util/Date;

    move-result-object v9

    .line 2
    sget-object v10, Lcom/truecaller/insights/models/DomainOrigin;->SMS:Lcom/truecaller/insights/models/DomainOrigin;

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->getExtra()Ljava/lang/String;

    move-result-object v11

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Le/a/c/r/j/b;-><init>(JJLjava/lang/String;ILjava/util/Date;Ljava/util/Date;Lcom/truecaller/insights/models/DomainOrigin;Ljava/lang/String;)V

    return-object v0
.end method

.method public static N(Ljava/util/List;JII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;JII)V"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Le/a/b0/q/g0;->A(J)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    .line 2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "category"

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 3
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "classification"

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 4
    invoke-virtual {p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final N0(Lcom/truecaller/messaging/data/types/Message;)I
    .locals 2

    const-string v0, "$this$getTransport"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcom/truecaller/messaging/data/types/Message;->l:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/truecaller/messaging/data/types/Message;->k:I

    :goto_0
    return v0
.end method

.method public static final N1(Le/a/q2/a;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/q2/a;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "$this$logTranslationConfidence"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "confidence"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "sourceLang"

    move-object/from16 v9, p2

    invoke-static {v9, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "deviceLang"

    move-object/from16 v15, p3

    invoke-static {v15, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    move v14, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-static {v14, v3}, Ljava/lang/Math;->min(FF)F

    move-result v14

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    move v13, v3

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-static {v13, v3}, Ljava/lang/Math;->max(FF)F

    move-result v13

    goto :goto_1

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Ls1/u/i;->j(Ljava/lang/Iterable;)D

    move-result-wide v3

    double-to-float v1, v3

    const-string v12, "TextMessageTranslationConfidence"

    const-string v3, "type"

    .line 4
    invoke-static {v12, v3}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v11

    const-string v8, "sourceLanguage"

    const-string v10, "name"

    const-string v16, "value"

    const-string v17, "deviceLanguage"

    move-object v3, v8

    move-object v4, v10

    move-object/from16 v5, p2

    move-object/from16 v6, v16

    move-object v7, v11

    move-object/from16 v9, p2

    move-object/from16 p2, v10

    move-object/from16 v10, v17

    move-object v2, v11

    move-object/from16 v11, p2

    move-object v0, v12

    move-object/from16 v12, p3

    move/from16 v18, v13

    move-object/from16 v13, v16

    move/from16 v16, v14

    move-object/from16 v14, v17

    move-object/from16 v15, p3

    .line 5
    invoke-static/range {v3 .. v15}, Le/d/c/a/a;->Z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v3

    const-string v4, "numMessages"

    .line 6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    move-object/from16 v6, p2

    .line 7
    invoke-static {v4, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-double v7, v5

    .line 8
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "minConf"

    const/16 v5, 0x64

    int-to-float v5, v5

    mul-float v14, v16, v5

    .line 9
    invoke-static {v14}, Le/q/f/a/d/a;->J2(F)I

    move-result v7

    .line 10
    invoke-static {v4, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-double v7, v7

    .line 11
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v3, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "maxConf"

    mul-float v13, v18, v5

    .line 12
    invoke-static {v13}, Le/q/f/a/d/a;->J2(F)I

    move-result v7

    .line 13
    invoke-static {v4, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-double v7, v7

    .line 14
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v3, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "meanConf"

    mul-float/2addr v1, v5

    .line 15
    invoke-static {v1}, Le/q/f/a/d/a;->J2(F)I

    move-result v1

    .line 16
    invoke-static {v4, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-double v5, v1

    .line 17
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {v1, v3}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v1, v2}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v1}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v0

    const-string v1, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    .line 19
    invoke-interface {v1, v0}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void

    .line 20
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 21
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public static final N2(Le/a/c/r/j/b;)Lcom/truecaller/insights/models/smartcards/ActionStateEntity;
    .locals 12

    const-string v0, "$this$toActionStateEntity"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;

    .line 2
    iget-wide v2, p0, Le/a/c/r/j/b;->a:J

    .line 3
    iget-wide v4, p0, Le/a/c/r/j/b;->b:J

    .line 4
    iget-object v6, p0, Le/a/c/r/j/b;->c:Ljava/lang/String;

    .line 5
    iget v7, p0, Le/a/c/r/j/b;->d:I

    .line 6
    iget-object v1, p0, Le/a/c/r/j/b;->g:Lcom/truecaller/insights/models/DomainOrigin;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v8

    .line 8
    iget-object v9, p0, Le/a/c/r/j/b;->e:Ljava/util/Date;

    .line 9
    iget-object v10, p0, Le/a/c/r/j/b;->f:Ljava/util/Date;

    .line 10
    iget-object v11, p0, Le/a/c/r/j/b;->h:Ljava/lang/String;

    move-object v1, v0

    .line 11
    invoke-direct/range {v1 .. v11}, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;-><init>(JJLjava/lang/String;ILjava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic O(Le/a/a/c/a7;Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;Le/a/c/r/j/s;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p5, p6, 0x10

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-interface/range {v0 .. v5}, Le/a/a/c/a7;->V3(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;Le/a/c/r/j/s;Ljava/lang/Integer;)V

    return-void
.end method

.method public static O0(Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;)Landroid/content/ContentValues;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    iget-wide v1, p0, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->b:J

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "raw_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4
    iget v1, p0, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->c:I

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "info1"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6
    iget-object v1, p0, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->e:Ljava/lang/String;

    const-string v2, "info3"

    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->d:I

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "info2"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10
    iget v1, p0, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->f:I

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "info5"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12
    iget-object p0, p0, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->g:Ljava/lang/String;

    const-string v1, "info6"

    .line 13
    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final O1(Le/a/l/l2/a;Le/a/l/l2/c;)V
    .locals 2

    const-string v0, "$this$logWith"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p1, Le/a/l/l2/b;

    invoke-virtual {p1}, Le/a/l/l2/b;->o()Lcom/truecaller/premium/analytics/LogLevel;

    move-result-object v0

    const-string v1, "logLevel"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/premium/analytics/LogLevel;->getPriority()I

    move-result v0

    invoke-virtual {p0}, Le/a/l/l2/a;->e()Lcom/truecaller/premium/analytics/LogLevel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/premium/analytics/LogLevel;->getPriority()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1, p0}, Le/a/l/l2/b;->p(Le/a/l/l2/a;)V

    :cond_1
    return-void
.end method

.method public static final O2(Le/a/c/a/p/c/d;Ljava/lang/String;)Le/a/c/r/d/c;
    .locals 13

    const-string v0, "$this$toAnalyticsBuilder"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Le/a/c/a/p/c/d$a;

    const-string v1, "insights_smart_feed"

    if-eqz v0, :cond_0

    check-cast p0, Le/a/c/a/p/c/d$a;

    .line 2
    new-instance p0, Le/a/c/r/d/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x7f

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Le/a/c/r/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    const-string v0, "past_smart_card"

    .line 3
    invoke-virtual {p0, v0}, Le/a/c/r/d/c;->g(Ljava/lang/String;)V

    const-string v0, "past_section"

    .line 4
    invoke-virtual {p0, v0}, Le/a/c/r/d/c;->e(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1}, Le/a/c/r/d/c;->c(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, v1}, Le/a/c/r/d/c;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7
    :cond_0
    instance-of v0, p0, Le/a/c/a/p/c/d$c;

    const-string v2, "collapsed_card"

    const-string v3, "upcoming_smart_card"

    if-eqz v0, :cond_1

    check-cast p0, Le/a/c/a/p/c/d$c;

    .line 8
    new-instance p0, Le/a/c/r/d/c;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x7f

    move-object v4, p0

    invoke-direct/range {v4 .. v12}, Le/a/c/r/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    .line 9
    invoke-virtual {p0, v3}, Le/a/c/r/d/c;->g(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, v2}, Le/a/c/r/d/c;->e(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, p1}, Le/a/c/r/d/c;->c(Ljava/lang/String;)V

    const-string p1, "collapse"

    .line 12
    invoke-virtual {p0, p1}, Le/a/c/r/d/c;->b(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, v1}, Le/a/c/r/d/c;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 14
    :cond_1
    instance-of v0, p0, Le/a/c/a/p/c/d$d;

    if-eqz v0, :cond_2

    check-cast p0, Le/a/c/a/p/c/d$d;

    .line 15
    new-instance p0, Le/a/c/r/d/c;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x7f

    move-object v4, p0

    invoke-direct/range {v4 .. v12}, Le/a/c/r/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    .line 16
    invoke-virtual {p0, v3}, Le/a/c/r/d/c;->g(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, v2}, Le/a/c/r/d/c;->e(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, p1}, Le/a/c/r/d/c;->c(Ljava/lang/String;)V

    const-string p1, "expand"

    .line 19
    invoke-virtual {p0, p1}, Le/a/c/r/d/c;->b(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, v1}, Le/a/c/r/d/c;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :cond_2
    instance-of v0, p0, Le/a/c/a/p/c/d$e;

    if-eqz v0, :cond_3

    check-cast p0, Le/a/c/a/p/c/d$e;

    .line 22
    new-instance v0, Le/a/c/r/d/c;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x7f

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Le/a/c/r/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    .line 23
    invoke-virtual {v0, v3}, Le/a/c/r/d/c;->g(Ljava/lang/String;)V

    .line 24
    iget-object v2, p0, Le/a/c/a/p/c/d$e;->c:Le/a/c/y/m;

    .line 25
    iget-object v2, v2, Le/a/c/y/m;->c:Ljava/lang/String;

    .line 26
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Locale.US"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Le/a/c/r/d/c;->e(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, p1}, Le/a/c/r/d/c;->c(Ljava/lang/String;)V

    .line 28
    iget-object p0, p0, Le/a/c/a/p/c/d$e;->b:Le/a/c/a/p/c/a;

    .line 29
    iget-object p0, p0, Le/a/c/a/p/c/a;->a:Le/a/c/a/p/c/b;

    .line 30
    iget-object p0, p0, Le/a/c/a/p/c/b;->c:Ljava/lang/String;

    .line 31
    invoke-virtual {v0, p0}, Le/a/c/r/d/c;->f(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0, v1}, Le/a/c/r/d/c;->d(Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_0

    .line 33
    :cond_3
    instance-of p0, p0, Le/a/c/a/p/c/d$b;

    if-eqz p0, :cond_4

    new-instance p0, Le/a/c/r/d/c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Le/a/c/r/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    :goto_0
    return-object p0

    :cond_4
    new-instance p0, Ls1/i;

    invoke-direct {p0}, Ls1/i;-><init>()V

    throw p0
.end method

.method public static synthetic P(Le/a/c/a/d/d/c;Lcom/truecaller/insights/ui/financepage/models/FinanceTab;Ljava/util/List;Ln3/v/k0;Ljava/lang/String;ILjava/lang/Object;)Le/a/c/a/d/d/b;
    .locals 0

    and-int/lit8 p4, p5, 0x4

    const/4 p6, 0x0

    if-eqz p4, :cond_0

    move-object p3, p6

    :cond_0
    and-int/lit8 p4, p5, 0x8

    .line 1
    invoke-interface {p0, p1, p2, p3, p6}, Le/a/c/a/d/d/c;->a(Lcom/truecaller/insights/ui/financepage/models/FinanceTab;Ljava/util/List;Ln3/v/k0;Ljava/lang/String;)Le/a/c/a/d/d/b;

    move-result-object p0

    return-object p0
.end method

.method public static P0(Lcom/truecaller/messaging/transport/im/ImTransportInfo;)Landroid/content/ContentValues;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->b:Ljava/lang/String;

    const-string v2, "raw_id"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget v1, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->c:I

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "info5"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6
    iget v1, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->d:I

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "info1"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8
    iget v1, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->e:I

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "info2"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10
    iget v1, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->f:I

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "info3"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12
    iget v1, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->g:I

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "info4"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 14
    iget v1, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->h:I

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "info6"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 16
    iget v1, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->i:I

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "info7"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 18
    iget-wide v1, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->j:J

    .line 19
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "info8"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 20
    iget v1, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->m:I

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "info12"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 22
    iget-object p0, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->o:Ljava/lang/String;

    const-string v1, "info17"

    .line 23
    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final P1(Lcom/truecaller/insights/models/classifierseed/ClassifierSeedServiceModel;)Lcom/truecaller/insights/categorizer/model/AndroidMultiClassClassifierModel;
    .locals 21

    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    const-string v1, "$this$mapToAndroidClassifier"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/classifierseed/ClassifierSeedServiceModel;->getData()Lcom/truecaller/insights/models/classifierseed/Data;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/insights/models/classifierseed/Data;->getVectors()Lcom/truecaller/insights/models/classifierseed/Vectors;

    move-result-object v1

    const/4 v3, 0x0

    const/16 v4, 0xa

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/truecaller/insights/models/classifierseed/Vectors;->getClassMetas()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v1, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 4
    check-cast v6, Lcom/truecaller/insights/models/classifierseed/ClassMeta;

    .line 5
    new-instance v14, Lcom/truecaller/insights/categorizer/model/AndroidClassMeta;

    invoke-virtual {v6}, Lcom/truecaller/insights/models/classifierseed/ClassMeta;->getClassId()I

    move-result v8

    invoke-virtual {v6}, Lcom/truecaller/insights/models/classifierseed/ClassMeta;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lcom/truecaller/insights/models/classifierseed/ClassMeta;->getClassProb()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v6}, Lcom/truecaller/insights/models/classifierseed/ClassMeta;->getTfIdfSum()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v6}, Lcom/truecaller/insights/models/classifierseed/ClassMeta;->getDocInClass()I

    move-result v12

    invoke-virtual {v6}, Lcom/truecaller/insights/models/classifierseed/ClassMeta;->getWordsInClass()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    move-object v13, v6

    goto :goto_1

    :cond_0
    move-object v13, v3

    :goto_1
    move-object v7, v14

    invoke-direct/range {v7 .. v13}, Lcom/truecaller/insights/categorizer/model/AndroidClassMeta;-><init>(ILjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ILjava/lang/Double;)V

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object/from16 v16, v5

    goto :goto_2

    :cond_2
    move-object/from16 v16, v0

    .line 6
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/classifierseed/ClassifierSeedServiceModel;->getData()Lcom/truecaller/insights/models/classifierseed/Data;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/insights/models/classifierseed/Data;->getVectors()Lcom/truecaller/insights/models/classifierseed/Vectors;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/truecaller/insights/models/classifierseed/Vectors;->getProbabilities()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 9
    check-cast v5, Lcom/truecaller/insights/models/classifierseed/Probability;

    .line 10
    invoke-virtual {v5}, Lcom/truecaller/insights/models/classifierseed/Probability;->getIdf()Ljava/lang/Double;

    move-result-object v6

    .line 11
    invoke-virtual {v5}, Lcom/truecaller/insights/models/classifierseed/Probability;->getNoOfMessages()I

    move-result v7

    .line 12
    invoke-virtual {v5}, Lcom/truecaller/insights/models/classifierseed/Probability;->getProbabilities()Ljava/util/List;

    move-result-object v8

    .line 13
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v8, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 15
    check-cast v10, Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;

    .line 16
    new-instance v11, Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;

    invoke-virtual {v10}, Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;->getClassIdentifier()I

    move-result v12

    invoke-virtual {v10}, Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;->getProbs()Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v10}, Lcom/truecaller/insights/models/classifierseed/ClassKeywordMeta;->getTf()Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-double v14, v10

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    goto :goto_5

    :cond_3
    move-object v10, v3

    :goto_5
    invoke-direct {v11, v12, v13, v10}, Lcom/truecaller/insights/categorizer/model/AndroidClassKeywordMeta;-><init>(ILjava/lang/Double;Ljava/lang/Double;)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 17
    :cond_4
    invoke-virtual {v5}, Lcom/truecaller/insights/models/classifierseed/Probability;->getWord()Ljava/lang/String;

    move-result-object v5

    .line 18
    new-instance v8, Lcom/truecaller/insights/categorizer/model/AndroidWordToClassProb;

    invoke-direct {v8, v6, v7, v9, v5}, Lcom/truecaller/insights/categorizer/model/AndroidWordToClassProb;-><init>(Ljava/lang/Double;ILjava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    move-object/from16 v17, v0

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/classifierseed/ClassifierSeedServiceModel;->getData()Lcom/truecaller/insights/models/classifierseed/Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/insights/models/classifierseed/Data;->getVectors()Lcom/truecaller/insights/models/classifierseed/Vectors;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/truecaller/insights/models/classifierseed/Vectors;->getVersion()I

    move-result v0

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    move/from16 v18, v0

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/classifierseed/ClassifierSeedServiceModel;->getData()Lcom/truecaller/insights/models/classifierseed/Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/insights/models/classifierseed/Data;->getVectors()Lcom/truecaller/insights/models/classifierseed/Vectors;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/truecaller/insights/models/classifierseed/Vectors;->getBarrierValue()I

    move-result v0

    int-to-double v0, v0

    goto :goto_7

    :cond_7
    const-wide/16 v0, 0x0

    :goto_7
    move-wide/from16 v19, v0

    .line 21
    new-instance v0, Lcom/truecaller/insights/categorizer/model/AndroidMultiClassClassifierModel;

    move-object v15, v0

    invoke-direct/range {v15 .. v20}, Lcom/truecaller/insights/categorizer/model/AndroidMultiClassClassifierModel;-><init>(Ljava/util/List;Ljava/util/List;ID)V

    return-object v0
.end method

.method public static final P2(J)Ljava/lang/String;
    .locals 6

    const/16 v0, 0x3e8

    int-to-long v0, v0

    .line 1
    div-long/2addr p0, v0

    const/16 v2, 0x63

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v4, p0

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v2, v2, p0

    if-ltz v2, :cond_1

    const-string p0, "0-100"

    goto/16 :goto_a

    :cond_1
    :goto_0
    const/16 v2, 0xc7

    int-to-long v2, v2

    const/16 v4, 0x64

    int-to-long v4, v4

    cmp-long v4, v4, p0

    if-lez v4, :cond_2

    goto :goto_1

    :cond_2
    cmp-long v2, v2, p0

    if-ltz v2, :cond_3

    const-string p0, "100-200"

    goto/16 :goto_a

    :cond_3
    :goto_1
    const/16 v2, 0x12b

    int-to-long v2, v2

    const/16 v4, 0xc8

    int-to-long v4, v4

    cmp-long v4, v4, p0

    if-lez v4, :cond_4

    goto :goto_2

    :cond_4
    cmp-long v2, v2, p0

    if-ltz v2, :cond_5

    const-string p0, "200-300"

    goto/16 :goto_a

    :cond_5
    :goto_2
    const/16 v2, 0x18f

    int-to-long v2, v2

    const/16 v4, 0x12c

    int-to-long v4, v4

    cmp-long v4, v4, p0

    if-lez v4, :cond_6

    goto :goto_3

    :cond_6
    cmp-long v2, v2, p0

    if-ltz v2, :cond_7

    const-string p0, "300-500"

    goto/16 :goto_a

    :cond_7
    :goto_3
    const/16 v2, 0x1f3

    int-to-long v2, v2

    const/16 v4, 0x190

    int-to-long v4, v4

    cmp-long v4, v4, p0

    if-lez v4, :cond_8

    goto :goto_4

    :cond_8
    cmp-long v2, v2, p0

    if-ltz v2, :cond_9

    const-string p0, "400-500"

    goto :goto_a

    :cond_9
    :goto_4
    const/16 v2, 0x257

    int-to-long v2, v2

    const/16 v4, 0x1f4

    int-to-long v4, v4

    cmp-long v4, v4, p0

    if-lez v4, :cond_a

    goto :goto_5

    :cond_a
    cmp-long v2, v2, p0

    if-ltz v2, :cond_b

    const-string p0, "500-600"

    goto :goto_a

    :cond_b
    :goto_5
    const/16 v2, 0x2bb

    int-to-long v2, v2

    const/16 v4, 0x258

    int-to-long v4, v4

    cmp-long v4, v4, p0

    if-lez v4, :cond_c

    goto :goto_6

    :cond_c
    cmp-long v2, v2, p0

    if-ltz v2, :cond_d

    const-string p0, "600-700"

    goto :goto_a

    :cond_d
    :goto_6
    const/16 v2, 0x31f

    int-to-long v2, v2

    const/16 v4, 0x2bc

    int-to-long v4, v4

    cmp-long v4, v4, p0

    if-lez v4, :cond_e

    goto :goto_7

    :cond_e
    cmp-long v2, v2, p0

    if-ltz v2, :cond_f

    const-string p0, "700-800"

    goto :goto_a

    :cond_f
    :goto_7
    const/16 v2, 0x383

    int-to-long v2, v2

    const/16 v4, 0x320

    int-to-long v4, v4

    cmp-long v4, v4, p0

    if-lez v4, :cond_10

    goto :goto_8

    :cond_10
    cmp-long v2, v2, p0

    if-ltz v2, :cond_11

    const-string p0, "800-900"

    goto :goto_a

    :cond_11
    :goto_8
    const/16 v2, 0x384

    int-to-long v2, v2

    cmp-long v2, v2, p0

    if-lez v2, :cond_12

    goto :goto_9

    :cond_12
    cmp-long p0, v0, p0

    if-ltz p0, :cond_13

    const-string p0, "900-1000"

    goto :goto_a

    :cond_13
    :goto_9
    const-string p0, ">1mb"

    :goto_a
    return-object p0
.end method

.method public static final Q(Landroid/content/Context;Ljava/lang/String;JLcom/truecaller/messaging/notifications/NotificationIdentifier;Lcom/truecaller/notifications/OtpAnalyticsModel;JLjava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/notifications/OTPCopierService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "MESSAGE_ID"

    .line 2
    invoke-virtual {v0, p0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p0, "OTP_NOTIFICATION_ID"

    .line 3
    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "CONVERSATION_ID"

    .line 4
    invoke-virtual {v0, p0, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p0, "extra_otp_analytics_model"

    .line 5
    invoke-virtual {v0, p0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "SILENT_MARK_AS_READ"

    .line 6
    invoke-virtual {v0, p0, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static Q0(Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;)Landroid/content/ContentValues;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->e:Landroid/net/Uri;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3
    iget-wide v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "raw_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4
    iget v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "info2"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5
    iget-object v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->e:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "info3"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-wide v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "info1"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7
    iget v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "info5"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8
    iget-object v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->h:Ljava/lang/String;

    const-string v2, "info6"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "info7"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10
    iget-object v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->l:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "info12"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->o:Ljava/lang/String;

    const-string v2, "info13"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->p:Lw3/b/a/b;

    .line 14
    iget-wide v1, v1, Lw3/b/a/e0/e;->a:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    const-wide/16 v3, 0x3e8

    .line 15
    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "info14"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 16
    :cond_1
    iget v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "info15"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 17
    iget v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->r:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "info16"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 18
    iget v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->s:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "info17"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 19
    iget-object v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->v:Ljava/lang/String;

    const-string v2, "info20"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->w:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "info21"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 21
    iget v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "info22"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 22
    iget v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "info23"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 23
    iget-wide v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->z:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "info24"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 24
    iget v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "info4"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 25
    iget-object v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->j:Ljava/lang/String;

    const-string v2, "info8"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "info9"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 27
    iget-object v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->m:Ljava/lang/String;

    const-string v2, "info10"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "info11"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 29
    iget-object v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->t:Ljava/lang/String;

    const-string v2, "info18"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->u:Ljava/lang/String;

    const-string v2, "info19"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->A:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "info25"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 32
    iget v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->B:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "info26"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 33
    iget-boolean p0, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->C:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "info27"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static synthetic Q1(Le/a/a/o/p;JIIZILjava/lang/Object;)Le/a/a/o/e;
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const/4 p5, 0x1

    :cond_0
    move v5, p5

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    .line 1
    invoke-interface/range {v0 .. v5}, Le/a/a/o/p;->b(JIIZ)Le/a/a/o/e;

    move-result-object p0

    return-object p0
.end method

.method public static final Q2(J)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    div-long/2addr p0, v0

    long-to-int p0, p0

    if-nez p0, :cond_0

    const-string p0, "0-1"

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    const-string p0, "1-2"

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    if-ne p0, p1, :cond_2

    const-string p0, "2-3"

    goto :goto_1

    :cond_2
    const/4 p1, 0x3

    if-ne p0, p1, :cond_3

    const-string p0, "3-4"

    goto :goto_1

    :cond_3
    const/4 p1, 0x4

    if-ne p0, p1, :cond_4

    const-string p0, "4-5"

    goto :goto_1

    :cond_4
    const/4 p1, 0x5

    if-ne p0, p1, :cond_5

    const-string p0, "5-6"

    goto :goto_1

    :cond_5
    const/4 p1, 0x6

    if-ne p0, p1, :cond_6

    const-string p0, "6-7"

    goto :goto_1

    :cond_6
    const/4 p1, 0x7

    if-ne p0, p1, :cond_7

    const-string p0, "7-8"

    goto :goto_1

    :cond_7
    const/16 p1, 0x8

    if-ne p0, p1, :cond_8

    const-string p0, "8-9"

    goto :goto_1

    :cond_8
    const/16 p1, 0xa

    const/16 v0, 0x9

    if-le v0, p0, :cond_9

    goto :goto_0

    :cond_9
    if-lt p1, p0, :cond_a

    const-string p0, "9-10"

    goto :goto_1

    :cond_a
    :goto_0
    const-string p0, ">10"

    :goto_1
    return-object p0
.end method

.method public static synthetic R(Landroid/content/Context;Ljava/lang/String;JLcom/truecaller/messaging/notifications/NotificationIdentifier;Lcom/truecaller/notifications/OtpAnalyticsModel;JLjava/lang/String;I)Landroid/content/Intent;
    .locals 11

    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    move-wide v8, v0

    goto :goto_0

    :cond_0
    move-wide/from16 v8, p6

    :goto_0
    and-int/lit8 v0, p9, 0x40

    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object/from16 v7, p5

    .line 1
    invoke-static/range {v2 .. v10}, Le/a/c/p/a;->Q(Landroid/content/Context;Ljava/lang/String;JLcom/truecaller/messaging/notifications/NotificationIdentifier;Lcom/truecaller/notifications/OtpAnalyticsModel;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static R0(Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;)Landroid/content/ContentValues;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->e:Landroid/net/Uri;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3
    iget-wide v1, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "raw_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4
    iget v1, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "info2"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5
    iget-object v1, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->e:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "info3"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "info4"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7
    iget v1, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "info5"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8
    iget-object v1, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->i:Ljava/lang/String;

    const-string v2, "info6"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget v1, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "info8"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10
    iget-boolean v1, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->k:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "info9"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 11
    iget-wide v1, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "info1"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 12
    iget-object v1, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->f:Ljava/lang/String;

    const-string v2, "info7"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object p0, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->l:Ljava/lang/String;

    const-string v1, "info10"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final R1(Ljava/util/Collection;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Le/a/c/w/o0/k/e;",
            ">;)",
            "Ljava/util/List<",
            "Le/a/c/w/o0/k/e;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$maybeAddDefaultCategories"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-static {p0}, Le/a/c/p/a;->T0(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Le/a/c/p/a;->q0(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Le/a/c/p/a;->w0(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    const/4 v0, 0x5

    new-array v0, v0, [Le/a/c/w/o0/k/e$b;

    .line 2
    new-instance v3, Le/a/c/w/o0/k/e$b;

    const-string v4, "Bill"

    invoke-direct {v3, v4}, Le/a/c/w/o0/k/e$b;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v1

    .line 3
    new-instance v3, Le/a/c/w/o0/k/e$b;

    const-string v4, "Bank"

    invoke-direct {v3, v4}, Le/a/c/w/o0/k/e$b;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v2

    .line 4
    new-instance v2, Le/a/c/w/o0/k/e$b;

    const-string v3, "Travel"

    invoke-direct {v2, v3}, Le/a/c/w/o0/k/e$b;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    .line 5
    new-instance v2, Le/a/c/w/o0/k/e$b;

    const-string v3, "Delivery"

    invoke-direct {v2, v3}, Le/a/c/w/o0/k/e$b;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v0, v3

    .line 6
    new-instance v2, Le/a/c/w/o0/k/e$b;

    const-string v4, "Event"

    invoke-direct {v2, v4}, Le/a/c/w/o0/k/e$b;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x4

    aput-object v2, v0, v4

    .line 7
    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 8
    new-instance v2, Ls1/z/c/f0;

    invoke-direct {v2, v3}, Ls1/z/c/f0;-><init>(I)V

    .line 9
    sget-object v3, Lcom/truecaller/insights/models/updates/UpdateCategory;->Companion:Lcom/truecaller/insights/models/updates/UpdateCategory$a;

    .line 10
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/truecaller/insights/models/updates/UpdateCategory;->values()[Lcom/truecaller/insights/models/updates/UpdateCategory;

    move-result-object v3

    invoke-static {v3}, Le/q/f/a/d/a;->h3([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 12
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 14
    check-cast v6, Lcom/truecaller/insights/models/updates/UpdateCategory;

    .line 15
    new-instance v7, Le/a/c/w/o0/k/e$d;

    invoke-direct {v7, v6}, Le/a/c/w/o0/k/e$d;-><init>(Lcom/truecaller/insights/models/updates/UpdateCategory;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    new-array v3, v1, [Le/a/c/w/o0/k/e$d;

    .line 16
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ls1/z/c/f0;->a(Ljava/lang/Object;)V

    .line 17
    sget-object v3, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Companion:Lcom/truecaller/insights/smartcards/SmartCardCategory$a;

    .line 18
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {}, Lcom/truecaller/insights/smartcards/SmartCardCategory;->values()[Lcom/truecaller/insights/smartcards/SmartCardCategory;

    move-result-object v3

    invoke-static {v3}, Le/q/f/a/d/a;->h3([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 20
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v3, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 22
    check-cast v5, Lcom/truecaller/insights/smartcards/SmartCardCategory;

    .line 23
    new-instance v7, Le/a/c/w/o0/k/e$a;

    invoke-direct {v7, v5}, Le/a/c/w/o0/k/e$a;-><init>(Lcom/truecaller/insights/smartcards/SmartCardCategory;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    new-array v3, v1, [Le/a/c/w/o0/k/e$a;

    .line 24
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ls1/z/c/f0;->a(Ljava/lang/Object;)V

    new-array v1, v1, [Le/a/c/w/o0/k/e$b;

    .line 25
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ls1/z/c/f0;->a(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ls1/z/c/f0;->b()I

    move-result v0

    new-array v0, v0, [Le/a/c/w/o0/k/e;

    .line 26
    iget-object v1, v2, Ls1/z/c/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 27
    check-cast v0, [Le/a/c/w/o0/k/e;

    .line 28
    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 29
    invoke-static {p0, v0}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    goto :goto_4

    .line 30
    :cond_4
    invoke-static {p0}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    :goto_4
    return-object p0
.end method

.method public static final R2(Le/a/a/g/l0/c;)Lcom/truecaller/messaging/data/types/BinaryEntity;
    .locals 26

    move-object/from16 v0, p0

    const-string v1, "$this$toBinaryEntity"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v2, Lcom/truecaller/messaging/data/types/Entity;->h:Lcom/truecaller/messaging/data/types/Entity$a;

    .line 2
    iget-wide v3, v0, Le/a/a/g/l0/c;->f:J

    .line 3
    iget-object v5, v0, Le/a/a/g/l0/c;->g:Ljava/lang/String;

    .line 4
    iget-object v7, v0, Le/a/a/g/l0/c;->h:Landroid/net/Uri;

    .line 5
    iget v6, v0, Le/a/a/g/l0/c;->i:I

    .line 6
    iget v10, v0, Le/a/a/g/l0/c;->l:I

    .line 7
    iget-object v1, v0, Le/a/a/g/l0/c;->n:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    move-object/from16 v16, v1

    .line 8
    iget v8, v0, Le/a/a/g/l0/c;->j:I

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 9
    iget v9, v0, Le/a/a/g/l0/c;->k:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const v25, 0x3f780

    .line 10
    invoke-static/range {v2 .. v25}, Lcom/truecaller/messaging/data/types/Entity$a;->b(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILandroid/net/Uri;IIIJZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v0

    return-object v0
.end method

.method public static final S(Landroid/content/Context;Ljava/util/List;Lcom/truecaller/messaging/notifications/NotificationIdentifier;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;",
            "Lcom/truecaller/messaging/notifications/NotificationIdentifier;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x30

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v7}, Le/a/c/p/a;->T(Landroid/content/Context;Ljava/util/List;Lcom/truecaller/messaging/notifications/NotificationIdentifier;Ljava/lang/String;Ljava/lang/String;ZZI)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static final S0(Lw3/b/a/p;)Ls1/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw3/b/a/p;",
            ")",
            "Ls1/k<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$getUiDueDate"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lw3/b/a/p;->h()Lw3/b/a/p;

    move-result-object v0

    .line 2
    invoke-static {v0, p0}, Lw3/b/a/h;->r(Lw3/b/a/b0;Lw3/b/a/b0;)Lw3/b/a/h;

    move-result-object v0

    const-string v1, "Days.daysBetween(currentDate, dueDate)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget v0, v0, Lw3/b/a/e0/i;->a:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 4
    new-instance v0, Ls1/k;

    const-string v1, "Due on "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Le/a/c/p/a;->y0(Lw3/b/a/p;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v1, Lcom/truecaller/insights/R$attr;->tcx_textPrimary:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 5
    :cond_0
    sget-object p0, Le/a/c/f/k/b;->b:Le/a/c/f/k/b;

    .line 6
    sget-object p0, Le/a/c/f/k/b;->a:Ls1/d0/i;

    .line 7
    invoke-virtual {p0, v0}, Ls1/d0/i;->d(I)Z

    move-result p0

    const-string v1, " days"

    if-eqz p0, :cond_1

    new-instance p0, Ls1/k;

    const-string v2, "Due in "

    invoke-static {v2, v0, v1}, Le/d/c/a/a;->l2(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/truecaller/insights/R$attr;->tcx_alertBackgroundOrange:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    move-object v0, p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    if-ne v0, p0, :cond_2

    .line 8
    new-instance v0, Ls1/k;

    sget p0, Lcom/truecaller/insights/R$attr;->tcx_alertBackgroundOrange:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "Due Tomorrow"

    invoke-direct {v0, v1, p0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    .line 9
    new-instance v0, Ls1/k;

    sget p0, Lcom/truecaller/insights/R$attr;->tcx_alertBackgroundRed:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "Due Today"

    invoke-direct {v0, v1, p0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const/4 p0, -0x1

    if-ne v0, p0, :cond_4

    .line 10
    new-instance v0, Ls1/k;

    sget p0, Lcom/truecaller/insights/R$attr;->tcx_alertBackgroundRed:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "Overdue by 1 day"

    invoke-direct {v0, v1, p0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 11
    :cond_4
    new-instance p0, Ls1/k;

    const-string v2, "Overdue by "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/truecaller/insights/R$attr;->tcx_alertBackgroundRed:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :goto_1
    return-object v0
.end method

.method public static final S1(Ljava/lang/String;)[Lcom/truecaller/messaging/data/types/Mention;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Le/m/e/k;

    invoke-direct {v1}, Le/m/e/k;-><init>()V

    const-class v2, [Lcom/truecaller/messaging/data/types/Mention;

    .line 2
    invoke-virtual {v1, p0, v2}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    invoke-static {v2}, Le/m/d/y/n;->B1(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 4
    check-cast p0, [Lcom/truecaller/messaging/data/types/Mention;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-array p0, v0, [Lcom/truecaller/messaging/data/types/Mention;
    :try_end_0
    .catch Le/m/e/z; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array p0, v0, [Lcom/truecaller/messaging/data/types/Mention;

    :goto_0
    return-object p0
.end method

.method public static final S2(Ljava/util/Date;)Lw3/b/a/b;
    .locals 3

    const-string v0, "$this$toDateTime"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lw3/b/a/b;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lw3/b/a/b;-><init>(J)V

    return-object v0
.end method

.method public static T(Landroid/content/Context;Ljava/util/List;Lcom/truecaller/messaging/notifications/NotificationIdentifier;Ljava/lang/String;Ljava/lang/String;ZZI)Landroid/app/PendingIntent;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    and-int/lit8 v2, p7, 0x8

    if-eqz v2, :cond_0

    const-string v2, "notificationIncomingMessage"

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object/from16 v6, p4

    :goto_0
    and-int/lit8 v2, p7, 0x10

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v8, v3

    goto :goto_1

    :cond_1
    move/from16 v8, p5

    :goto_1
    and-int/lit8 v2, p7, 0x20

    if-eqz v2, :cond_2

    move v7, v3

    goto :goto_2

    :cond_2
    move/from16 v7, p6

    :goto_2
    const-string v2, "$this$createOpenPendingIntent"

    .line 1
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "messages"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "notificationId"

    invoke-static {v11, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "action"

    invoke-static {v12, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "analyticsContext"

    invoke-static {v6, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 3
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/truecaller/messaging/data/types/Message;

    .line 4
    iget-wide v9, v9, Lcom/truecaller/messaging/data/types/Message;->b:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 5
    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v9, 0x1

    if-ne v5, v9, :cond_4

    move v5, v9

    goto :goto_4

    :cond_4
    move v5, v3

    :goto_4
    if-eqz v5, :cond_5

    move-object v5, v0

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_6

    invoke-static {v5}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/truecaller/messaging/data/types/Message;

    if-eqz v5, :cond_6

    .line 6
    iget-wide v13, v5, Lcom/truecaller/messaging/data/types/Message;->a:J

    goto :goto_6

    :cond_6
    const-wide/16 v13, -0x1

    .line 7
    :goto_6
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    if-le v5, v9, :cond_7

    goto :goto_7

    .line 8
    :cond_7
    sget-object v0, Lcom/truecaller/messaging/conversation/ConversationActivity;->e:Lcom/truecaller/messaging/conversation/ConversationActivity$a;

    .line 9
    invoke-static {v4}, Ls1/u/i;->A(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v15, 0xc0

    move-object/from16 v1, p0

    move-wide v4, v13

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move v13, v15

    .line 10
    invoke-static/range {v0 .. v13}, Lcom/truecaller/messaging/conversation/ConversationActivity$a;->c(Lcom/truecaller/messaging/conversation/ConversationActivity$a;Landroid/content/Context;JJLjava/lang/String;ZZZLjava/util/List;Lcom/truecaller/messaging/notifications/NotificationIdentifier;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_8

    .line 11
    :cond_8
    :goto_7
    invoke-static {v1, v2, v6}, Lcom/truecaller/ui/TruecallerInit;->xa(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 12
    invoke-static {v2, v0}, Le/a/c/p/a;->C(Landroid/content/Intent;Ljava/util/List;)V

    .line 13
    iget v0, v11, Lcom/truecaller/messaging/notifications/NotificationIdentifier;->a:I

    .line 14
    iget-object v4, v11, Lcom/truecaller/messaging/notifications/NotificationIdentifier;->b:Ljava/lang/String;

    .line 15
    invoke-static {v2, v0, v4}, Le/a/c/p/a;->E(Landroid/content/Intent;ILjava/lang/String;)V

    .line 16
    invoke-static {v2, v12}, Le/a/c/p/a;->D(Landroid/content/Intent;Ljava/lang/String;)V

    const/high16 v0, 0xc000000

    .line 17
    invoke-static {v1, v3, v2, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v1, "PendingIntent.getActivit\u2026ingIntent.FLAG_IMMUTABLE)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_8
    return-object v0
.end method

.method public static final T0(Ljava/util/Collection;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Le/a/c/w/o0/k/e;",
            ">;)",
            "Ljava/util/Set<",
            "Le/a/c/w/o0/k/e$d;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$getUpdateCategories"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Le/a/c/w/o0/k/e$d;

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {v0}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final T1(Ljava/lang/String;)Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;
    .locals 2

    .line 1
    new-instance v0, Le/m/e/k;

    invoke-direct {v0}, Le/m/e/k;-><init>()V

    if-eqz p0, :cond_0

    .line 2
    const-class v1, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;

    .line 3
    invoke-virtual {v0, p0, v1}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    .line 4
    invoke-static {v1}, Le/m/d/y/n;->B1(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 5
    check-cast p0, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final T2(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "$this$toEditEntityType"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "mixed"

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/messaging/data/types/Message;

    .line 3
    iget-object v1, v1, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    const-string v4, "message.entities"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v1, v5

    .line 5
    invoke-virtual {v6}, Lcom/truecaller/messaging/data/types/Entity;->d()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v6, "vcard"

    .line 6
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    const-string v6, "doc"

    .line 7
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    const-string v6, "audio"

    .line 8
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_3
    const-string v6, "gif"

    .line 9
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_4
    const-string v6, "video"

    .line 10
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_5
    const-string v6, "image"

    .line 11
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_6
    const-string v6, "text"

    .line 12
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 13
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    return-object v2

    .line 14
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p0

    if-eq p0, v3, :cond_3

    goto :goto_2

    .line 15
    :cond_3
    invoke-static {v0}, Ls1/u/i;->A(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    :goto_2
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final U(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/messaging/transport/im/ImUnreadRemindersBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 p1, 0x0

    const/high16 p2, 0xc000000

    .line 4
    invoke-static {p0, p1, v0, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const-string p1, "Intent(context, ImUnread\u2026ent.FLAG_IMMUTABLE)\n    }"

    .line 5
    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic U0(Le/a/c/w/o0/b;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/source/ModelType;Ls1/w/d;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p3, p5, 0x2

    const/4 p6, 0x0

    if-eqz p3, :cond_0

    move-object p2, p6

    :cond_0
    and-int/lit8 p3, p5, 0x4

    .line 1
    invoke-interface {p0, p1, p2, p6, p4}, Le/a/c/w/o0/b;->g(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/source/ModelType;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic U1(Le/a/a/c/k/a/j$a;Lcom/truecaller/messaging/data/types/Message;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-interface {p0, p1, p2}, Le/a/a/c/k/a/j$a;->Sb(Lcom/truecaller/messaging/data/types/Message;Z)V

    return-void
.end method

.method public static final U2(Lcom/truecaller/messaging/linkpreviews/LinkMetaData;)Lcom/truecaller/messaging/data/types/BinaryEntity;
    .locals 15

    const-string v0, "$this$toEntity"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/linkpreviews/LinkMetaData;->e:Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "application/vnd.truecaller.linkpreview"

    goto :goto_0

    :cond_0
    const-string v0, "application/vnd.truecaller.linkpreview.playable"

    goto :goto_0

    :cond_1
    const-string v0, "application/vnd.truecaller.linkpreview.media"

    :goto_0
    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    .line 3
    iget-object v11, p0, Lcom/truecaller/messaging/linkpreviews/LinkMetaData;->b:Ljava/lang/String;

    .line 4
    iget-object v12, p0, Lcom/truecaller/messaging/linkpreviews/LinkMetaData;->c:Ljava/lang/String;

    .line 5
    iget-object v13, p0, Lcom/truecaller/messaging/linkpreviews/LinkMetaData;->a:Ljava/lang/String;

    .line 6
    iget-object p0, p0, Lcom/truecaller/messaging/linkpreviews/LinkMetaData;->d:Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 7
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    move-object v10, p0

    const/16 v14, 0x3d

    .line 8
    new-instance p0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;

    const-wide/16 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v14}, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;-><init>(JLjava/lang/String;IIIJLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0
.end method

.method public static synthetic V(Le/a/a/c/h3;ZZLjava/util/List;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p5, 0x8

    if-eqz p4, :cond_0

    const-string p4, "conversation-deleteSms"

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 1
    :goto_0
    invoke-interface {p0, p1, p2, p3, p4}, Le/a/a/c/h3;->Cf(ZZLjava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static final V0(Lcom/truecaller/messaging/data/types/VCardEntity;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 6

    const-string v0, "$this$getVCardName"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcom/truecaller/messaging/data/types/VCardEntity;->w:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    .line 2
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/VCardEntity;->v:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100018

    .line 5
    iget p0, p0, Lcom/truecaller/messaging/data/types/VCardEntity;->w:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p1, v0, p0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    iget-object v3, p0, Lcom/truecaller/messaging/data/types/VCardEntity;->v:Ljava/lang/String;

    const/16 v4, 0x10

    .line 9
    invoke-static {v3, v4}, Lw3/c/a/a/a/h;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " + "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f10001a

    .line 11
    iget p0, p0, Lcom/truecaller/messaging/data/types/VCardEntity;->w:I

    add-int/lit8 v4, p0, -0x1

    new-array v5, v2, [Ljava/lang/Object;

    sub-int/2addr p0, v2

    .line 12
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v1

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    const-string p1, "if (contactName.isEmpty(\u2026tactsCount - 1)\n        }"

    .line 13
    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/VCardEntity;->v:Ljava/lang/String;

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    move v1, v2

    :cond_3
    if-eqz v1, :cond_4

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f12037e

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 17
    :cond_4
    iget-object p0, p0, Lcom/truecaller/messaging/data/types/VCardEntity;->v:Ljava/lang/String;

    :goto_2
    const-string p1, "if (contactName.isEmpty(\u2026    contactName\n        }"

    .line 18
    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    return-object p0
.end method

.method public static final V1(Lcom/truecaller/insights/utils/DateFormat;Ljava/lang/String;)Lw3/b/a/b;
    .locals 1

    const-string v0, "$this$parseDateTimeOrNull"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/truecaller/insights/utils/DateFormat;->formatter()Lw3/b/a/i0/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lw3/b/a/i0/b;->b(Ljava/lang/String;)Lw3/b/a/b;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 2
    instance-of p1, p0, Ljava/lang/UnsupportedOperationException;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of p1, p0, Ljava/lang/IllegalArgumentException;

    if-eqz p1, :cond_1

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0

    .line 3
    :cond_1
    throw p0
.end method

.method public static final V2(Lcom/truecaller/data/entity/messaging/Participant;)Le/a/l5/a/b4;
    .locals 5

    const-string v0, "$this$toEventParticipant"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Le/a/l5/a/m3;->a()Le/a/l5/a/m3$b;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/data/entity/messaging/Participant;->m()Z

    move-result v1

    invoke-virtual {v0, v1}, Le/a/l5/a/m3$b;->d(Z)Le/a/l5/a/m3$b;

    .line 3
    iget-object v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Le/a/l5/a/m3$b;->b(Z)Le/a/l5/a/m3$b;

    .line 4
    iget v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->i:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/l5/a/m3$b;->f(Ljava/lang/Boolean;)Le/a/l5/a/m3$b;

    .line 5
    iget-boolean v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->j:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/l5/a/m3$b;->e(Ljava/lang/Boolean;)Le/a/l5/a/m3$b;

    .line 6
    iget v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->i:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/l5/a/m3$b;->g(Ljava/lang/Boolean;)Le/a/l5/a/m3$b;

    .line 7
    invoke-virtual {p0}, Lcom/truecaller/data/entity/messaging/Participant;->o()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/l5/a/m3$b;->i(Ljava/lang/Boolean;)Le/a/l5/a/m3$b;

    .line 8
    iget v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->n:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/l5/a/m3$b;->c(Ljava/lang/Boolean;)Le/a/l5/a/m3$b;

    .line 9
    iget v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->p:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/l5/a/m3$b;->h(Ljava/lang/Integer;)Le/a/l5/a/m3$b;

    .line 10
    invoke-virtual {v0}, Le/a/l5/a/m3$b;->a()Le/a/l5/a/m3;

    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lcom/truecaller/data/entity/messaging/Participant;->l()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/truecaller/data/entity/messaging/Participant;->m()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->d:Ljava/lang/String;

    const-string v3, "rawAddress"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/c/c0/q;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "10_digit"

    goto :goto_3

    .line 12
    :cond_3
    invoke-virtual {p0}, Lcom/truecaller/data/entity/messaging/Participant;->f()Ljava/lang/String;

    move-result-object v1

    const-string v3, "numberForAnalytics"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    :goto_3
    sget-object v3, Le/a/l5/a/b4;->d:Lorg/apache/avro/Schema;

    new-instance v3, Le/a/l5/a/b4$b;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Le/a/l5/a/b4$b;-><init>(Le/a/l5/a/b4$a;)V

    .line 14
    invoke-virtual {p0}, Lcom/truecaller/data/entity/messaging/Participant;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Le/a/l5/a/b4$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/b4$b;

    .line 15
    invoke-virtual {v3}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object p0

    aget-object p0, p0, v2

    invoke-virtual {v3, p0, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 16
    iput-object v1, v3, Le/a/l5/a/b4$b;->b:Ljava/lang/CharSequence;

    .line 17
    invoke-virtual {v3}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p0

    aput-boolean v2, p0, v2

    .line 18
    invoke-virtual {v3, v0}, Le/a/l5/a/b4$b;->b(Le/a/l5/a/m3;)Le/a/l5/a/b4$b;

    .line 19
    invoke-virtual {v3}, Le/a/l5/a/b4$b;->a()Le/a/l5/a/b4;

    move-result-object p0

    const-string v0, "EventParticipant.newBuil\u2026fo(info)\n        .build()"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final W(ILandroid/content/Context;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float p0, p0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "context.resources"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static final W0(Le/a/c/c0/k;Lcom/truecaller/insights/utils/FeedbackConsentType;)Z
    .locals 3

    const-string v0, "$this$hasFbConsentAsked"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/truecaller/insights/utils/FeedbackConsentState;

    .line 1
    sget-object v1, Lcom/truecaller/insights/utils/FeedbackConsentState;->CONSENT_NOT_GIVEN:Lcom/truecaller/insights/utils/FeedbackConsentState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/truecaller/insights/utils/FeedbackConsentState;->CONSENT_GIVEN:Lcom/truecaller/insights/utils/FeedbackConsentState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 2
    invoke-interface {p0, p1}, Le/a/c/c0/k;->a(Lcom/truecaller/insights/utils/FeedbackConsentType;)Lcom/truecaller/insights/utils/FeedbackConsentState;

    move-result-object p0

    invoke-static {v0, p0}, Le/q/f/a/d/a;->Q([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final W1(Lcom/truecaller/insights/utils/DateFormat;Ljava/lang/String;)Lw3/b/a/p;
    .locals 4

    const-string v0, "$this$parseLocalDateOrNull"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    return-object v1

    .line 2
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/truecaller/insights/utils/DateFormat;->formatter()Lw3/b/a/i0/b;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p1}, Lw3/b/a/i0/b;->c(Ljava/lang/String;)Lw3/b/a/q;

    move-result-object p0

    .line 4
    new-instance p1, Lw3/b/a/p;

    .line 5
    iget-wide v2, p0, Lw3/b/a/q;->a:J

    .line 6
    iget-object p0, p0, Lw3/b/a/q;->b:Lw3/b/a/a;

    .line 7
    invoke-direct {p1, v2, v3, p0}, Lw3/b/a/p;-><init>(JLw3/b/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto :goto_2

    :catch_0
    move-exception p0

    .line 8
    instance-of p1, p0, Ljava/lang/UnsupportedOperationException;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    instance-of p1, p0, Ljava/lang/IllegalArgumentException;

    if-eqz p1, :cond_4

    :goto_2
    return-object v1

    .line 9
    :cond_4
    throw p0
.end method

.method public static final W2(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/lang/Long;Z)Lcom/truecaller/insights/models/pdo/ExtendedPdo;
    .locals 11

    const-string v0, "$this$toExtendedPdo"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1
    sget-object p2, Lcom/truecaller/insights/commons/model/Transport;->IM:Lcom/truecaller/insights/commons/model/Transport;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/truecaller/insights/commons/model/Transport;->SMS:Lcom/truecaller/insights/commons/model/Transport;

    :goto_0
    move-object v3, p2

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    new-instance p2, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7c

    const/4 v10, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v10}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;-><init>(JLcom/truecaller/insights/commons/model/Transport;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/models/pdo/ClassifierType;FIILs1/z/c/f;)V

    goto :goto_1

    :cond_1
    new-instance p2, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    const-wide/16 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7d

    const/4 v10, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v10}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;-><init>(JLcom/truecaller/insights/commons/model/Transport;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/models/pdo/ClassifierType;FIILs1/z/c/f;)V

    .line 3
    :goto_1
    invoke-virtual {p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMessageID()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setMessageID(J)V

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setD(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getK()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setK(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getP()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setP(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getC()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setC(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getO()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setO(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getF()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setF(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getG()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setG(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getS()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setS(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getAccountModelId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setAccountModelId(Ljava/lang/Long;)V

    .line 13
    invoke-virtual {p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal1()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal1(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal2()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal2(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal3()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal3(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal4()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal4(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal5()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal5(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDatetime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDatetime(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setAddress(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMsgDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setMsgDate(Ljava/util/Date;)V

    .line 21
    invoke-virtual {p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDate(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal1()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal1(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal2()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal2(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal3()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal3(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal4()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal4(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal5()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal5(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getActive()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setActive(Z)V

    .line 28
    invoke-virtual {p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getState()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setState(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getSyntheticRecordId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setSyntheticRecordId(Ljava/lang/Long;)V

    .line 30
    invoke-virtual {p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDeleted()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDeleted(Z)V

    .line 31
    invoke-virtual {p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getCreatedAt()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setCreatedAt(Ljava/util/Date;)V

    .line 32
    invoke-virtual {p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getSpamCategory()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setSpamCategory(I)V

    return-object p2
.end method

.method public static X(Le/a/a/c/c/k;)Lcom/truecaller/messaging/conversation/draft/DraftArguments;
    .locals 1

    .line 1
    iget-object p0, p0, Le/a/a/c/c/k;->a:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method public static final X0(Le/a/c/c0/k;Lcom/truecaller/insights/utils/FeedbackConsentType;)Z
    .locals 1

    const-string v0, "$this$hasFeedbackConsent"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0, p1}, Le/a/c/c0/k;->a(Lcom/truecaller/insights/utils/FeedbackConsentType;)Lcom/truecaller/insights/utils/FeedbackConsentState;

    move-result-object p1

    sget-object v0, Lcom/truecaller/insights/utils/FeedbackConsentState;->CONSENT_GIVEN:Lcom/truecaller/insights/utils/FeedbackConsentState;

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lcom/truecaller/insights/utils/FeedbackConsentType;->MASTER_CONSENT:Lcom/truecaller/insights/utils/FeedbackConsentType;

    invoke-interface {p0, p1}, Le/a/c/c0/k;->a(Lcom/truecaller/insights/utils/FeedbackConsentType;)Lcom/truecaller/insights/utils/FeedbackConsentState;

    move-result-object p0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final X1(Lcom/truecaller/insights/utils/DateFormat;Ljava/lang/String;)Lw3/b/a/r;
    .locals 4

    const-string v0, "$this$parseLocalTimeOrNull"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    return-object v1

    .line 2
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/truecaller/insights/utils/DateFormat;->formatter()Lw3/b/a/i0/b;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p1}, Lw3/b/a/i0/b;->c(Ljava/lang/String;)Lw3/b/a/q;

    move-result-object p0

    .line 4
    new-instance p1, Lw3/b/a/r;

    .line 5
    iget-wide v2, p0, Lw3/b/a/q;->a:J

    .line 6
    iget-object p0, p0, Lw3/b/a/q;->b:Lw3/b/a/a;

    .line 7
    invoke-direct {p1, v2, v3, p0}, Lw3/b/a/r;-><init>(JLw3/b/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto :goto_2

    :catch_0
    move-exception p0

    .line 8
    instance-of p1, p0, Ljava/lang/UnsupportedOperationException;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    instance-of p1, p0, Ljava/lang/IllegalArgumentException;

    if-eqz p1, :cond_4

    :goto_2
    return-object v1

    .line 9
    :cond_4
    throw p0
.end method

.method public static final X2(Le/a/c/w/o0/k/e;)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$toFilterString"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Le/a/c/w/o0/k/e$d;

    if-eqz v0, :cond_0

    check-cast p0, Le/a/c/w/o0/k/e$d;

    .line 2
    iget-object p0, p0, Le/a/c/w/o0/k/e$d;->a:Lcom/truecaller/insights/models/updates/UpdateCategory;

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/insights/models/updates/UpdateCategory;->getLabel()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p0, Le/a/c/w/o0/k/e$a;

    if-eqz v0, :cond_1

    check-cast p0, Le/a/c/w/o0/k/e$a;

    .line 5
    iget-object p0, p0, Le/a/c/w/o0/k/e$a;->a:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    .line 6
    invoke-virtual {p0}, Lcom/truecaller/insights/smartcards/SmartCardCategory;->getKey()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 7
    :cond_1
    instance-of v0, p0, Le/a/c/w/o0/k/e$b;

    if-eqz v0, :cond_2

    check-cast p0, Le/a/c/w/o0/k/e$b;

    .line 8
    iget-object p0, p0, Le/a/c/w/o0/k/e$b;->a:Ljava/lang/String;

    goto :goto_0

    .line 9
    :cond_2
    instance-of v0, p0, Le/a/c/w/o0/k/e$c;

    if-eqz v0, :cond_3

    check-cast p0, Le/a/c/w/o0/k/e$c;

    .line 10
    iget-object p0, p0, Le/a/c/w/o0/k/e$c;->a:Ljava/lang/String;

    :goto_0
    return-object p0

    .line 11
    :cond_3
    new-instance p0, Ls1/i;

    invoke-direct {p0}, Ls1/i;-><init>()V

    throw p0
.end method

.method public static final Y(Lcom/truecaller/messaging/data/types/Draft;Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/Draft;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/truecaller/messaging/data/types/BinaryEntity;",
            ">;)",
            "Ljava/util/List<",
            "Ls1/k<",
            "Lcom/truecaller/messaging/data/types/Draft;",
            "Ljava/util/Collection<",
            "Lcom/truecaller/messaging/data/types/BinaryEntity;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "draft"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ls1/k;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    :goto_0
    invoke-direct {v0, p0, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final Y0(Le/a/c/c0/k;Lcom/truecaller/insights/utils/FeedbackConsentType;)Z
    .locals 1

    const-string v0, "$this$hasFeedbackShown"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0, p1}, Le/a/c/c0/k;->a(Lcom/truecaller/insights/utils/FeedbackConsentType;)Lcom/truecaller/insights/utils/FeedbackConsentState;

    move-result-object p0

    sget-object p1, Lcom/truecaller/insights/utils/FeedbackConsentState;->CONSENT_SHOWN:Lcom/truecaller/insights/utils/FeedbackConsentState;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final Y1(Le/a/c/q/g;)Z
    .locals 2

    const-string v0, "$this$performDismissAction"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Le/a/c/q/g;->f:Ljava/util/List;

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Le/a/c/r/j/a;

    instance-of v1, v1, Le/a/c/r/j/a$c;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Le/a/c/r/j/a;

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Le/a/c/r/j/a;->a()Le/a/c/r/j/c;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Le/a/c/r/j/c;->d()V

    :cond_2
    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static final Y2(Lcom/truecaller/insights/models/InsightsDomain$a;Le/a/c/f/h;[Lcom/truecaller/insights/binders/utils/BankUiProperties;)Le/a/c/q/c;
    .locals 13

    const-string v0, "$this$toFinanceData"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "properties"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2}, Le/q/f/a/d/a;->h3([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Le/a/c/f/h;->a(Lcom/truecaller/insights/models/InsightsDomain;Ljava/util/List;)Le/a/c/r/b;

    move-result-object p1

    instance-of p2, p1, Le/a/c/r/b$a;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p1, v0

    :cond_0
    move-object v8, p1

    check-cast v8, Le/a/c/r/b$a;

    if-eqz v8, :cond_1

    .line 2
    new-instance p1, Le/a/c/q/c;

    .line 3
    iget-wide v2, p0, Lcom/truecaller/insights/models/InsightsDomain$a;->w:J

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/insights/models/InsightsDomain$a;->getConversationId()J

    move-result-wide v4

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/insights/models/InsightsDomain$a;->getSender()Ljava/lang/String;

    move-result-object v6

    .line 6
    invoke-virtual {p0}, Lcom/truecaller/insights/models/InsightsDomain;->getCategory()Ljava/lang/String;

    move-result-object v7

    .line 7
    invoke-virtual {p0}, Lcom/truecaller/insights/models/InsightsDomain$a;->getMsgDateTime()Lw3/b/a/b;

    move-result-object p2

    .line 8
    iget-wide v9, p2, Lw3/b/a/e0/e;->a:J

    .line 9
    invoke-virtual {p0}, Lcom/truecaller/insights/models/InsightsDomain$a;->getSpamCategory()I

    move-result v11

    .line 10
    invoke-virtual {p0}, Lcom/truecaller/insights/models/InsightsDomain$a;->isIM()Z

    move-result v12

    move-object v1, p1

    .line 11
    invoke-direct/range {v1 .. v12}, Le/a/c/q/c;-><init>(JJLjava/lang/String;Ljava/lang/String;Le/a/c/r/b$a;JIZ)V

    return-object p1

    :cond_1
    return-object v0
.end method

.method public static synthetic Z(Lcom/truecaller/messaging/data/types/Draft;Ljava/util/Collection;I)Ljava/util/List;
    .locals 0

    and-int/lit8 p1, p2, 0x2

    const/4 p1, 0x0

    .line 1
    invoke-static {p0, p1}, Le/a/c/p/a;->Y(Lcom/truecaller/messaging/data/types/Draft;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final Z0(Le/a/c/c0/k;Lcom/truecaller/insights/utils/FeedbackConsentType;)Z
    .locals 1

    const-string v0, "$this$hasFeedbackStarted"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0, p1}, Le/a/c/c0/k;->a(Lcom/truecaller/insights/utils/FeedbackConsentType;)Lcom/truecaller/insights/utils/FeedbackConsentState;

    move-result-object p0

    sget-object p1, Lcom/truecaller/insights/utils/FeedbackConsentState;->NOT_STARTED:Lcom/truecaller/insights/utils/FeedbackConsentState;

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static Z1(Le/a/a/g/i;)Le/a/r2/l;
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance p0, Le/a/r2/n;

    invoke-direct {p0}, Le/a/r2/n;-><init>()V

    .line 3
    new-instance v0, Le/a/a/g/t;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/a/g/t;-><init>(Le/a/a/g/r;)V

    .line 4
    new-instance v1, Le/a/a/g/s;

    invoke-direct {v1, v0, p0}, Le/a/a/g/s;-><init>(Le/a/r2/b0;Le/a/r2/n;)V

    const-string p0, "MessagingStorageActorsBuilder().build()"

    .line 5
    invoke-static {v1, p0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final Z2(Lcom/truecaller/messaging/data/types/Entity;I)Landroid/content/ContentProviderOperation;
    .locals 7

    const-string v0, "$this$toInsertContentProviderOperation"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Le/a/b0/q/g0;->x()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/messaging/data/types/Entity;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "entity_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/messaging/data/types/Entity;->r()Z

    move-result v1

    const-string v2, "entity_info2"

    const-string v3, "entity_info1"

    if-eqz v1, :cond_0

    .line 5
    check-cast p0, Lcom/truecaller/messaging/data/types/TextEntity;

    iget-object v1, p0, Lcom/truecaller/messaging/data/types/TextEntity;->i:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 6
    iget-boolean p0, p0, Lcom/truecaller/messaging/data/types/TextEntity;->j:Z

    .line 7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    const-string v1, "withValue(TextColumns.IS_RICH_TEXT, isRichText)"

    invoke-static {p0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8
    :cond_0
    move-object v1, p0

    check-cast v1, Lcom/truecaller/messaging/data/types/BinaryEntity;

    iget-object v4, v1, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 9
    iget-wide v3, v1, Lcom/truecaller/messaging/data/types/BinaryEntity;->k:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "entity_info3"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 10
    iget v1, p0, Lcom/truecaller/messaging/data/types/Entity;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 11
    invoke-virtual {p0}, Lcom/truecaller/messaging/data/types/Entity;->h()Z

    move-result v1

    const-string v2, "entity_info7"

    const-string v3, "entity_info6"

    const-string v4, "entity_info5"

    const-string v5, "entity_info4"

    if-eqz v1, :cond_1

    .line 12
    move-object v1, p0

    check-cast v1, Lcom/truecaller/messaging/data/types/GifEntity;

    iget v6, v1, Lcom/truecaller/messaging/data/types/ImageEntity;->v:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 13
    iget v4, v1, Lcom/truecaller/messaging/data/types/ImageEntity;->w:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 14
    iget-object v3, v1, Lcom/truecaller/messaging/data/types/ImageEntity;->x:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 15
    iget-object p0, p0, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    const-string v3, "contentType"

    .line 16
    invoke-static {p0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    const-string v4, "tenor/gif"

    .line 17
    invoke-static {v4, p0, v3}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 18
    iget-object p0, v1, Lcom/truecaller/messaging/data/types/GifEntity;->A:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v2, p0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_0

    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/truecaller/messaging/data/types/Entity;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 21
    check-cast p0, Lcom/truecaller/messaging/data/types/ImageEntity;

    iget v1, p0, Lcom/truecaller/messaging/data/types/ImageEntity;->v:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 22
    iget v1, p0, Lcom/truecaller/messaging/data/types/ImageEntity;->w:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 23
    iget-object p0, p0, Lcom/truecaller/messaging/data/types/ImageEntity;->x:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v5, p0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    const-string v1, "withValue(ImageColumns.T\u2026 thumbnailUri.toString())"

    invoke-static {p0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 24
    :cond_2
    invoke-virtual {p0}, Lcom/truecaller/messaging/data/types/Entity;->w()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 25
    check-cast p0, Lcom/truecaller/messaging/data/types/VideoEntity;

    .line 26
    iget v1, p0, Lcom/truecaller/messaging/data/types/VideoEntity;->v:I

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 28
    iget v1, p0, Lcom/truecaller/messaging/data/types/VideoEntity;->w:I

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 30
    iget v1, p0, Lcom/truecaller/messaging/data/types/VideoEntity;->x:I

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 32
    iget-object p0, p0, Lcom/truecaller/messaging/data/types/VideoEntity;->y:Landroid/net/Uri;

    .line 33
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v5, p0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    const-string v1, "withValue(VideoColumns.T\u2026 thumbnailUri.toString())"

    invoke-static {p0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 34
    :cond_3
    invoke-virtual {p0}, Lcom/truecaller/messaging/data/types/Entity;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 35
    check-cast p0, Lcom/truecaller/messaging/data/types/AudioEntity;

    .line 36
    iget p0, p0, Lcom/truecaller/messaging/data/types/AudioEntity;->v:I

    .line 37
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v5, p0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    const-string v1, "withValue(AudioColumns.D\u2026as AudioEntity).duration)"

    invoke-static {p0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 38
    :cond_4
    invoke-virtual {p0}, Lcom/truecaller/messaging/data/types/Entity;->g()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 39
    check-cast p0, Lcom/truecaller/messaging/data/types/DocumentEntity;

    .line 40
    iget-object p0, p0, Lcom/truecaller/messaging/data/types/DocumentEntity;->v:Ljava/lang/String;

    .line 41
    invoke-virtual {v0, v5, p0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    const-string v1, "withValue(DocumentColumn\u2026DocumentEntity).fileName)"

    invoke-static {p0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_5
    invoke-virtual {p0}, Lcom/truecaller/messaging/data/types/Entity;->t()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 43
    check-cast p0, Lcom/truecaller/messaging/data/types/VCardEntity;

    .line 44
    iget-object v1, p0, Lcom/truecaller/messaging/data/types/VCardEntity;->v:Ljava/lang/String;

    .line 45
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 46
    iget v1, p0, Lcom/truecaller/messaging/data/types/VCardEntity;->w:I

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 48
    iget-object p0, p0, Lcom/truecaller/messaging/data/types/VCardEntity;->x:Landroid/net/Uri;

    .line 49
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v5, p0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    const-string v1, "withValue(VCardColumns.T\u2026 thumbnailUri.toString())"

    invoke-static {p0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_6
    invoke-virtual {p0}, Lcom/truecaller/messaging/data/types/Entity;->n()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 51
    check-cast p0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;

    iget-object v1, p0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->y:Ljava/lang/String;

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 52
    iget-object v1, p0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->z:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 53
    iget-object v1, p0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->A:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 54
    iget-object p0, p0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->x:Landroid/net/Uri;

    if-eqz p0, :cond_8

    .line 55
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v4, p0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 56
    :cond_7
    invoke-virtual {p0}, Lcom/truecaller/messaging/data/types/Entity;->o()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 57
    check-cast p0, Lcom/truecaller/messaging/data/types/LocationEntity;

    .line 58
    iget-object v1, p0, Lcom/truecaller/messaging/data/types/LocationEntity;->v:Ljava/lang/String;

    .line 59
    invoke-virtual {v0, v5, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 60
    iget-wide v1, p0, Lcom/truecaller/messaging/data/types/LocationEntity;->w:D

    .line 61
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 62
    iget-wide v1, p0, Lcom/truecaller/messaging/data/types/LocationEntity;->x:D

    .line 63
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    const-string v1, "withValue(LocationColumns.LONGITUDE, longitude)"

    invoke-static {p0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    :goto_0
    const-string p0, "message_id"

    .line 64
    invoke-virtual {v0, p0, p1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 65
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    const-string p1, "ContentProviderOperation\u2026ssageIndex)\n    }.build()"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final a(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->getAttachmentCase()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance p0, Ls1/i;

    invoke-direct {p0}, Ls1/i;-><init>()V

    throw p0

    :goto_0
    :pswitch_0
    const/4 p0, 0x0

    goto :goto_1

    .line 3
    :pswitch_1
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->getFile()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$File;

    move-result-object p0

    const-string v0, "file"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$File;->getMimeType()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :pswitch_2
    const-string p0, "tenor/gif"

    goto :goto_1

    .line 4
    :pswitch_3
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->getAudio()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    move-result-object p0

    const-string v0, "audio"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->getMimeType()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 5
    :pswitch_4
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->getVideo()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;

    move-result-object p0

    const-string v0, "video"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Video;->getMimeType()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :pswitch_5
    const-string p0, "application/vnd.truecaller.location"

    goto :goto_1

    :pswitch_6
    const-string p0, "text/vcard"

    goto :goto_1

    .line 6
    :pswitch_7
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->getImage()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;

    move-result-object p0

    const-string v0, "image"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Image;->getMimeType()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic a0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Le/a/b0/b/e$a;->a:Le/a/b0/b/e$a;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Le/a/f4/b/h/g;->a(Le/a/b0/b/e;)Z

    move-result p0

    return p0
.end method

.method public static final a1(Lcom/truecaller/messaging/data/types/ImGroupInfo;)Z
    .locals 1

    const-string v0, "$this$hasLeftGroup"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p0, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->f:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a2(Le/a/c/a/c/e/a;Le/a/c/h/h;Le/a/b0/m/c/a;Le/a/c/x/a;Le/a/c/a/i/h;Le/a/c/a/c/h/j;Le/a/c/b/j;Le/a/c/a/c/h/l/c;Le/a/c/a/c/h/l/d;Le/a/c/e/c;Le/a/c/j/b;)Le/a/c/a/a/a/c;
    .locals 12

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "messageLocator"

    move-object v2, p1

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addressProfileLoader"

    move-object v3, p2

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageInfoLoader"

    move-object v4, p3

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifeCycleAwareAnalyticsLogger"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleAwareToolTipController"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsStatusProvider"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recentTransactionAdapter"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recentUpdatesAdapter"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsAnalyticsManager"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deeplinkEnricher"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Le/a/c/a/a/a/c;

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Le/a/c/a/a/a/c;-><init>(Le/a/c/h/h;Le/a/b0/m/c/a;Le/a/c/x/a;Le/a/c/a/i/h;Le/a/c/a/c/h/j;Le/a/c/b/j;Le/a/c/a/c/h/l/c;Le/a/c/a/c/h/l/d;Le/a/c/e/c;Le/a/c/j/b;)V

    return-object v0
.end method

.method public static final a3(Lcom/truecaller/messaging/data/types/Mention;I)Landroid/content/ContentProviderOperation;
    .locals 3

    const-string v0, "$this$toInsertContentProviderOperation"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Le/a/b0/q/g0;->s()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/messaging/data/types/Mention;->getImId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "im_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/messaging/data/types/Mention;->getOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_offset"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/messaging/data/types/Mention;->getLength()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_length"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/messaging/data/types/Mention;->getPrivateName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "private_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 6
    invoke-virtual {p0}, Lcom/truecaller/messaging/data/types/Mention;->getPublicName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "public_name"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string p0, "message_id"

    .line 7
    invoke-virtual {v0, p0, p1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 8
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    const-string p1, "ContentProviderOperation\u2026ssageIndex)\n    }.build()"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final b(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    new-instance p0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x21

    invoke-virtual {v0, p0, v2, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static synthetic b0(Le/a/a/v0/a;Ljava/lang/String;Ljava/lang/Long;Ls1/w/d;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p2, p4, 0x2

    const/4 p2, 0x0

    .line 1
    invoke-interface {p0, p1, p2, p3}, Le/a/a/v0/a;->c(Ljava/lang/String;Ljava/lang/Long;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final b1(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/truecaller/messaging/ForwardContentItem;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "$this$hasMedia"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/truecaller/messaging/ForwardContentItem;

    .line 2
    iget-object v3, v3, Lcom/truecaller/messaging/ForwardContentItem;->c:Lcom/truecaller/messaging/data/types/BinaryEntity;

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-eqz v3, :cond_0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1
.end method

.method public static b2(Le/a/a/g/i;)Le/a/a/g/g;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance p0, Le/a/a/g/h;

    invoke-direct {p0}, Le/a/a/g/h;-><init>()V

    return-object p0
.end method

.method public static final b3(Le/a/c/r/f/a;)Le/a/c/i/e/b;
    .locals 12

    const-string v0, "$this$toInsightsFeedback"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/c/i/e/b;

    .line 2
    iget-object v2, p0, Le/a/c/r/f/a;->f:Ljava/lang/String;

    .line 3
    iget-object v3, p0, Le/a/c/r/f/a;->g:Ljava/lang/String;

    .line 4
    new-instance v4, Lw3/b/a/b;

    .line 5
    iget-object v1, p0, Le/a/c/r/f/a;->b:Ljava/util/Date;

    .line 6
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Lw3/b/a/b;-><init>(J)V

    .line 7
    iget-object v5, p0, Le/a/c/r/f/a;->i:Ljava/lang/String;

    .line 8
    iget-object v6, p0, Le/a/c/r/f/a;->h:Ljava/lang/String;

    .line 9
    iget-object v8, p0, Le/a/c/r/f/a;->c:Lcom/truecaller/insights/models/feedback/FeedbackType;

    .line 10
    iget-object v7, p0, Le/a/c/r/f/a;->d:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x180

    move-object v1, v0

    .line 11
    invoke-direct/range {v1 .. v11}, Le/a/c/i/e/b;-><init>(Ljava/lang/String;Ljava/lang/String;Lw3/b/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/models/feedback/FeedbackType;Le/a/c/b0/c;ZI)V

    return-object v0
.end method

.method public static final c(Lcom/truecaller/messaging/data/types/Draft;Lcom/truecaller/messaging/data/types/Message;)Lcom/truecaller/messaging/data/types/Message;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v1, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    const-string v3, "messageToEdit.entities"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v3, :cond_1

    aget-object v6, v2, v4

    invoke-virtual {v6}, Lcom/truecaller/messaging/data/types/Entity;->r()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v6, v5

    :goto_1
    instance-of v2, v6, Lcom/truecaller/messaging/data/types/TextEntity;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v5, v6

    :goto_2
    check-cast v5, Lcom/truecaller/messaging/data/types/TextEntity;

    if-eqz v5, :cond_3

    iget-object v2, v5, Lcom/truecaller/messaging/data/types/TextEntity;->i:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    const-string v2, ""

    .line 2
    :goto_3
    iget-object v3, v0, Lcom/truecaller/messaging/data/types/Draft;->c:Ljava/lang/String;

    invoke-static {v3, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/messaging/data/types/Message;->b()Lcom/truecaller/messaging/data/types/Message$b;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/truecaller/messaging/data/types/Message$b;->b()Lcom/truecaller/messaging/data/types/Message$b;

    .line 5
    iget-object v3, v0, Lcom/truecaller/messaging/data/types/Draft;->g:[Lcom/truecaller/messaging/data/types/BinaryEntity;

    const-string v4, "draft.media"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Le/q/f/a/d/a;->h3([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/truecaller/messaging/data/types/Message$b;->f(Ljava/util/Collection;)Lcom/truecaller/messaging/data/types/Message$b;

    if-eqz v2, :cond_4

    .line 6
    sget-object v4, Lcom/truecaller/messaging/data/types/Entity;->h:Lcom/truecaller/messaging/data/types/Entity$a;

    const-wide/16 v5, -0x1

    const/4 v8, 0x0

    iget-object v0, v0, Lcom/truecaller/messaging/data/types/Draft;->c:Ljava/lang/String;

    move-object v9, v0

    const-string v2, "draft.text"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const v27, 0x3fff0

    const-string v7, "text/plain"

    invoke-static/range {v4 .. v27}, Lcom/truecaller/messaging/data/types/Entity$a;->a(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILjava/lang/String;ZIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/truecaller/messaging/data/types/Message$b;->g(Lcom/truecaller/messaging/data/types/Entity;)Lcom/truecaller/messaging/data/types/Message$b;

    .line 7
    :cond_4
    invoke-virtual {v1}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v0

    const-string v1, "messageToEdit\n        .b\u2026text)) }\n        .build()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final c0(Landroid/content/Intent;)Le/a/c/v/i/g;
    .locals 6

    const-string v0, "$this$extractReminderCommonParams"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.truecaller.insights.reminders.notifications.EXTRAS.META_JSON"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const-string v3, "getStringExtra(EXTRA_NOT\u2026        return null\n    }"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "com.truecaller.insights.reminders.notifications.EXTRAS.REF_ID"

    .line 2
    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v4, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "com.truecaller.insights.reminders.notifications.EXTRAS.CATEGORY"

    .line 3
    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Le/a/c/p/a;->u2(Ljava/lang/String;)Le/a/c/v/h/e;

    sget-object v1, Le/a/c/v/h/e$a;->c:Le/a/c/v/h/e$a;

    const/4 v3, -0x1

    const-string v5, "com.truecaller.insights.reminders.notifications.EXTRAS.NOTIFICATION_ID"

    .line 4
    invoke-virtual {p0, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 5
    invoke-static {v0}, Le/a/c/p/a;->T1(Ljava/lang/String;)Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v2, Le/a/c/v/i/g;

    invoke-direct {v2, v0, v4, v1, p0}, Le/a/c/v/i/g;-><init>(Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;Ljava/lang/String;Le/a/c/v/h/e;I)V

    :cond_0
    return-object v2

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Missing Action Category"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    new-array v0, v1, [Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    return-object v2

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Missing Reminder Ref Id"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    new-array v0, v1, [Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    return-object v2

    .line 9
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Missing Meta Data JSON"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    new-array v0, v1, [Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    return-object v2
.end method

.method public static final c1(Le/a/k3/l/k/a;Lcom/truecaller/api/services/messenger/v1/models/Role;)Z
    .locals 1

    const-string v0, "$this$hasRole"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "role"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p0, p0, Le/a/k3/l/k/a;->b:I

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/models/Role;->getNumber()I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c2(Le/a/c/a/c/e/a;Le/a/c/q/d;Ls1/w/f;Le/a/c/b/j;Le/a/c/c0/o;Le/a/c/a/d/d/a;Le/a/c/e/c;)Le/a/c/a/c/f/b;
    .locals 7

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "businessInsightsManager"

    invoke-static {p1, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ioContext"

    invoke-static {p2, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "insightsStatusProvider"

    invoke-static {p3, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "insightConfig"

    invoke-static {p4, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "financeBoundaryUseCase"

    invoke-static {p5, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "analyticsManager"

    invoke-static {p6, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p0, Le/a/c/a/c/f/b;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Le/a/c/a/c/f/b;-><init>(Le/a/c/q/d;Ls1/w/f;Le/a/c/b/j;Le/a/c/c0/o;Le/a/c/a/d/d/a;Le/a/c/e/c;)V

    return-object p0
.end method

.method public static final c3(Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;)Le/a/c/h/m/c;
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "$this$toInsightsSmsMessage"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, v0, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    const-string v2, "this.participant"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/data/entity/messaging/Participant;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v0, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v1, v1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/truecaller/messaging/data/types/Message;->s:Ljava/lang/String;

    .line 3
    :goto_0
    new-instance v17, Le/a/c/h/m/c;

    .line 4
    iget-wide v3, v0, Lcom/truecaller/messaging/data/types/Message;->a:J

    const-string v2, ""

    if-eqz v1, :cond_1

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object v5, v2

    .line 5
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/messaging/data/types/Message;->a()Ljava/lang/String;

    move-result-object v6

    const-string v1, "this.buildMessageText()"

    invoke-static {v6, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v1, v0, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    invoke-virtual {v1}, Lw3/b/a/e0/c;->n()Ljava/util/Date;

    move-result-object v7

    const-string v1, "this.date.toDate()"

    invoke-static {v7, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-wide v8, v0, Lcom/truecaller/messaging/data/types/Message;->b:J

    .line 8
    iget v10, v0, Lcom/truecaller/messaging/data/types/Message;->k:I

    .line 9
    iget-object v11, v0, Lcom/truecaller/messaging/data/types/Message;->m:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 10
    iget-object v0, v0, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v0, v0, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v15, v0

    goto :goto_2

    :cond_2
    move-object v15, v2

    :goto_2
    const/16 v16, 0x280

    move-object/from16 v2, v17

    move-object/from16 v13, p1

    .line 11
    invoke-direct/range {v2 .. v16}, Le/a/c/h/m/c;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/Date;JILjava/lang/String;ILjava/lang/String;ZLjava/lang/String;I)V

    return-object v17
.end method

.method public static final d(FLs1/d0/e;)F
    .locals 2

    .line 1
    invoke-interface {p1}, Ls1/d0/f;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-interface {p1}, Ls1/d0/f;->c()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-interface {p1}, Ls1/d0/f;->getStart()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-interface {p1}, Ls1/d0/f;->c()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    add-float/2addr p1, p0

    const/4 p0, 0x2

    int-to-float p0, p0

    div-float/2addr p1, p0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Ls1/d0/f;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-interface {p1}, Ls1/d0/f;->c()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    :goto_0
    return p1
.end method

.method public static synthetic d0(Le/a/a/n/h;JIILcom/truecaller/messaging/mediamanager/AttachmentType;Lcom/truecaller/messaging/mediamanager/SortOption;Ljava/lang/String;[Ljava/lang/String;Ls1/w/d;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 11

    and-int/lit8 v0, p10, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, p3

    :goto_0
    and-int/lit8 v0, p10, 0x4

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v5, v0

    goto :goto_1

    :cond_1
    move v5, p4

    :goto_1
    and-int/lit8 v0, p10, 0x20

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move-object v8, v1

    goto :goto_2

    :cond_2
    move-object/from16 v8, p7

    :goto_2
    and-int/lit8 v0, p10, 0x40

    const/4 v9, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v10, p9

    .line 1
    invoke-interface/range {v1 .. v10}, Le/a/a/n/h;->a(JIILcom/truecaller/messaging/mediamanager/AttachmentType;Lcom/truecaller/messaging/mediamanager/SortOption;Ljava/lang/String;[Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static d1(Ljava/util/List;Ljava/util/Set;Z)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;Z)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const-string v1, "Participants set should never be empty"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isFalse(Z[Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/truecaller/data/entity/messaging/Participant;

    add-int/lit8 v7, v5, 0x1

    .line 4
    iget-object v6, v6, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    aput-object v6, v2, v5

    move v5, v7

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/data/entity/messaging/Participant;

    .line 6
    iget v3, p1, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_1

    iget-object p1, p1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez v0, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    move v3, v4

    .line 7
    :goto_2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isFalse(Z[Ljava/lang/String;)V

    .line 8
    sget-object v1, Le/a/m0/a1;->a:Landroid/net/Uri;

    .line 9
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "msg/msg_conversations"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    :goto_3
    if-ge v4, v0, :cond_3

    .line 10
    aget-object v3, v2, v4

    const-string v5, "addr"

    .line 11
    invoke-virtual {v1, v5, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 12
    :cond_3
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "tc_group_id"

    .line 14
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    .line 15
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "hidden_number"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    .line 16
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    .line 17
    invoke-virtual {p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return p2
.end method

.method public static d2(Le/a/c/a/c/e/d;Ls1/w/f;Le/a/c/c0/o;Le/a/c/q/d;Le/a/c/b/j;)Le/a/c/a/i/d;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "ioContext"

    invoke-static {p1, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "insightConfig"

    invoke-static {p2, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "insightsUiManager"

    invoke-static {p3, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "insightsStatusProvider"

    invoke-static {p4, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p0, Le/a/c/a/i/d;

    invoke-direct {p0, p1, p2, p3, p4}, Le/a/c/a/i/d;-><init>(Ls1/w/f;Le/a/c/c0/o;Le/a/c/q/d;Le/a/c/b/j;)V

    return-object p0
.end method

.method public static final d3(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;
    .locals 2

    const-string v0, "$this$toInsightsThemeInflater"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/c/p/a;->B0(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const-string v0, "cloneInContext(context.g\u2026htsContextThemeWrapper())"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final e(Landroid/content/Context;)Landroid/text/style/CharacterStyle;
    .locals 2

    .line 1
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    sget v1, Lcom/truecaller/messaging/R$attr;->tcx_textTertiary:I

    invoke-static {p0, v1}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p0

    invoke-direct {v0, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    return-object v0
.end method

.method public static synthetic e0(Le/a/l/p2/d1;Ljava/lang/String;Ls1/w/d;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p1, p3, 0x1

    const/4 p1, 0x0

    .line 1
    invoke-interface {p0, p1, p2}, Le/a/l/p2/d1;->b(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static e1(Ljava/util/List;Lcom/truecaller/data/entity/messaging/Participant;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ")I"
        }
    .end annotation

    .line 1
    invoke-static {}, Le/a/m0/a1$k;->H()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2
    iget v1, p1, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/truecaller/data/entity/messaging/Participant;->d:Ljava/lang/String;

    const-string v3, "raw_destination"

    .line 3
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const-string v3, "normalized_destination"

    .line 4
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/truecaller/data/entity/messaging/Participant;->f:Ljava/lang/String;

    const-string v3, "country_code"

    .line 5
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/truecaller/data/entity/messaging/Participant;->c:Ljava/lang/String;

    const-string v3, "tc_im_peer_id"

    .line 6
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    iget-wide v2, p1, Lcom/truecaller/data/entity/messaging/Participant;->h:J

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "aggregated_contact_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    iget v2, p1, Lcom/truecaller/data/entity/messaging/Participant;->y:I

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "im_business_state"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    iget p1, p1, Lcom/truecaller/data/entity/messaging/Participant;->z:I

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "im_business_feature_flags"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 10
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    .line 11
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return p1
.end method

.method public static e2(Le/a/c/a/c/e/a;Le/a/c/q/d;Ls1/w/f;Le/a/c/b/j;Le/a/c/c0/o;)Le/a/c/a/c/f/j;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "businessInsightsManager"

    invoke-static {p1, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ioContext"

    invoke-static {p2, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "insightsStatusProvider"

    invoke-static {p3, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "insightConfig"

    invoke-static {p4, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p0, Le/a/c/a/c/f/j;

    invoke-direct {p0, p1, p2, p3, p4}, Le/a/c/a/c/f/j;-><init>(Le/a/c/q/d;Ls1/w/f;Le/a/c/b/j;Le/a/c/c0/o;)V

    return-object p0
.end method

.method public static final e3(Ljava/util/Date;)Lw3/b/a/p;
    .locals 1

    const-string v0, "$this$toLocalDate"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lw3/b/a/p;

    invoke-direct {v0, p0}, Lw3/b/a/p;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final f(Ls1/d0/e;F)F
    .locals 2

    .line 1
    check-cast p0, Ls1/d0/d;

    invoke-virtual {p0}, Ls1/d0/d;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0}, Ls1/d0/d;->c()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ls1/d0/d;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0}, Ls1/d0/d;->c()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    add-float/2addr p0, v0

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p0, v0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ls1/d0/d;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    invoke-virtual {p0}, Ls1/d0/d;->getStart()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Ls1/d0/d;->c()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Ls1/d0/d;->c()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    :goto_0
    sub-float/2addr p1, p0

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public static final f0(Ljava/lang/Iterable;Le/a/c/h/e;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Le/a/c/h/e;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$filterBlockedSenders"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsFilterFetcher"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/c/a/r/e;

    invoke-direct {v0, p1}, Le/a/c/a/r/e;-><init>(Le/a/c/h/e;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/c/a/r/e;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public static final f1(Le/a/c/y/i;)V
    .locals 3

    const-string v0, "$this$invoke"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Le/a/c/y/i$a;

    if-eqz v0, :cond_0

    new-instance v0, Le/a/c/y/b;

    check-cast p0, Le/a/c/y/i$a;

    .line 2
    iget-wide v1, p0, Le/a/c/y/i$a;->c:J

    const/4 p0, 0x2

    .line 3
    invoke-direct {v0, v1, v2, p0}, Le/a/c/y/b;-><init>(JI)V

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p0, Le/a/c/y/i$c;

    if-eqz v0, :cond_1

    new-instance v0, Le/a/c/y/b;

    check-cast p0, Le/a/c/y/i$c;

    .line 5
    iget-wide v1, p0, Le/a/c/y/i$c;->c:J

    const/4 p0, 0x4

    .line 6
    invoke-direct {v0, v1, v2, p0}, Le/a/c/y/b;-><init>(JI)V

    goto :goto_0

    .line 7
    :cond_1
    instance-of v0, p0, Le/a/c/y/i$d;

    if-eqz v0, :cond_2

    new-instance v0, Le/a/c/y/d;

    check-cast p0, Le/a/c/y/i$d;

    .line 8
    iget-object p0, p0, Le/a/c/y/i$d;->c:Ljava/lang/String;

    .line 9
    invoke-direct {v0, p0}, Le/a/c/y/d;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_2
    instance-of v0, p0, Le/a/c/y/i$e;

    if-eqz v0, :cond_3

    new-instance v0, Le/a/c/y/e;

    check-cast p0, Le/a/c/y/i$e;

    .line 11
    iget-object p0, p0, Le/a/c/y/i$e;->c:Ljava/lang/String;

    .line 12
    invoke-direct {v0, p0}, Le/a/c/y/e;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_3
    sget-object v0, Le/a/c/y/i$f;->b:Le/a/c/y/i$f;

    invoke-static {p0, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    .line 14
    :cond_4
    instance-of v0, p0, Le/a/c/y/i$g;

    if-eqz v0, :cond_5

    new-instance v0, Le/a/c/y/g;

    check-cast p0, Le/a/c/y/i$g;

    .line 15
    iget-object p0, p0, Le/a/c/y/i$g;->c:Ljava/lang/String;

    .line 16
    invoke-direct {v0, p0}, Le/a/c/y/g;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_5
    instance-of v0, p0, Le/a/c/y/i$h;

    if-eqz v0, :cond_6

    new-instance v0, Le/a/c/y/h;

    check-cast p0, Le/a/c/y/i$h;

    .line 18
    iget-object p0, p0, Le/a/c/y/i$h;->c:Le/a/c/j/f$a;

    .line 19
    invoke-direct {v0, p0}, Le/a/c/y/h;-><init>(Le/a/c/j/f;)V

    goto :goto_0

    .line 20
    :cond_6
    instance-of v0, p0, Le/a/c/y/i$b;

    if-eqz v0, :cond_8

    new-instance v0, Le/a/c/y/c;

    check-cast p0, Le/a/c/y/i$b;

    .line 21
    iget-wide v1, p0, Le/a/c/y/i$b;->c:J

    const/4 p0, 0x5

    .line 22
    invoke-direct {v0, v1, v2, p0}, Le/a/c/y/c;-><init>(JI)V

    :goto_0
    if-eqz v0, :cond_7

    .line 23
    invoke-virtual {v0}, Le/a/c/r/j/f;->d()V

    :cond_7
    return-void

    .line 24
    :cond_8
    new-instance p0, Ls1/i;

    invoke-direct {p0}, Ls1/i;-><init>()V

    throw p0
.end method

.method public static f2(Le/a/a/b/o;)Lcom/truecaller/messaging/data/types/InboxTab;
    .locals 1

    .line 1
    iget-object p0, p0, Le/a/a/b/o;->b:Lcom/truecaller/messaging/data/types/InboxTab;

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method public static final f3(Le/a/a/g/l0/c;J)Lcom/truecaller/messaging/data/types/Message;
    .locals 30

    move-object/from16 v0, p0

    const-string v1, "$this$toMessage"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lcom/truecaller/messaging/data/types/Message$b;

    invoke-direct {v1}, Lcom/truecaller/messaging/data/types/Message$b;-><init>()V

    .line 2
    iget-wide v2, v0, Le/a/a/g/l0/c;->a:J

    .line 3
    iput-wide v2, v1, Lcom/truecaller/messaging/data/types/Message$b;->a:J

    move-wide/from16 v2, p1

    .line 4
    iput-wide v2, v1, Lcom/truecaller/messaging/data/types/Message$b;->b:J

    .line 5
    invoke-static/range {p0 .. p0}, Le/a/c/p/a;->j3(Le/a/a/g/l0/c;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v2

    .line 6
    iput-object v2, v1, Lcom/truecaller/messaging/data/types/Message$b;->c:Lcom/truecaller/data/entity/messaging/Participant;

    .line 7
    iget-wide v2, v0, Le/a/a/g/l0/c;->b:J

    .line 8
    invoke-virtual {v1, v2, v3}, Lcom/truecaller/messaging/data/types/Message$b;->c(J)Lcom/truecaller/messaging/data/types/Message$b;

    .line 9
    iget v2, v0, Le/a/a/g/l0/c;->c:I

    .line 10
    iput v2, v1, Lcom/truecaller/messaging/data/types/Message$b;->g:I

    .line 11
    iget v2, v0, Le/a/a/g/l0/c;->d:I

    .line 12
    iget-object v3, v0, Le/a/a/g/l0/c;->y:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    move-object v9, v3

    if-eqz v9, :cond_2

    const/16 v24, 0x0

    const/16 v23, 0x0

    const/16 v22, 0x0

    const-wide/16 v20, 0x0

    const/16 v28, 0x0

    const/16 v26, 0x0

    const-wide/16 v17, 0x0

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const-wide/16 v7, 0x0

    const/16 v27, -0x1

    const-string v3, "rawId"

    .line 13
    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v3, Lcom/truecaller/messaging/transport/im/ImTransportInfo;

    move-object v6, v3

    const/16 v19, 0x0

    move-object/from16 v25, v19

    invoke-direct/range {v6 .. v28}, Lcom/truecaller/messaging/transport/im/ImTransportInfo;-><init>(JLjava/lang/String;IIIIIIIJ[Lcom/truecaller/messaging/data/types/Reaction;JIILjava/lang/String;[Lcom/truecaller/messaging/data/types/QuickAction;IILcom/truecaller/data/entity/messaging/Participant;)V

    goto :goto_2

    .line 15
    :cond_2
    sget-object v3, Lcom/truecaller/messaging/transport/NullTransportInfo;->b:Lcom/truecaller/messaging/transport/NullTransportInfo;

    .line 16
    :goto_2
    iput v2, v1, Lcom/truecaller/messaging/data/types/Message$b;->k:I

    .line 17
    iput-object v3, v1, Lcom/truecaller/messaging/data/types/Message$b;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 18
    iget-boolean v2, v0, Le/a/a/g/l0/c;->e:Z

    .line 19
    iput-boolean v2, v1, Lcom/truecaller/messaging/data/types/Message$b;->J:Z

    .line 20
    iget-object v11, v0, Le/a/a/g/l0/c;->q:Ljava/lang/String;

    if-eqz v11, :cond_3

    .line 21
    sget-object v6, Lcom/truecaller/messaging/data/types/Entity;->h:Lcom/truecaller/messaging/data/types/Entity$a;

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const v29, 0x3fff5

    const-string v9, "text/plain"

    invoke-static/range {v6 .. v29}, Lcom/truecaller/messaging/data/types/Entity$a;->a(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILjava/lang/String;ZIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/truecaller/messaging/data/types/Message$b;->g(Lcom/truecaller/messaging/data/types/Entity;)Lcom/truecaller/messaging/data/types/Message$b;

    .line 22
    :cond_3
    iget-object v2, v0, Le/a/a/g/l0/c;->r:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 23
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    move v4, v5

    :cond_5
    :goto_3
    if-eqz v4, :cond_6

    .line 24
    invoke-static/range {p0 .. p0}, Le/a/c/p/a;->R2(Le/a/a/g/l0/c;)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/truecaller/messaging/data/types/Message$b;->g(Lcom/truecaller/messaging/data/types/Entity;)Lcom/truecaller/messaging/data/types/Message$b;

    .line 25
    :cond_6
    invoke-virtual {v1}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v0

    const-string v1, "Message.Builder()\n    .i\u2026     }\n    }\n    .build()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final g(Le/a/l4/c;Lcom/truecaller/data/entity/messaging/Participant;)Le/a/l4/c$a;
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    iget v0, p1, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    iget-object p1, p1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const-string v2, "participant.normalizedAddress"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object p1, v0, v1

    invoke-interface {p0, v0}, Le/a/l4/c;->c([Ljava/lang/String;)Le/a/l4/c$a;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static final g0(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Z
    .locals 7

    const-string v0, "bill"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueAmt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {p0}, Le/a/m0/a1$k;->C(Lcom/truecaller/insights/models/InsightsDomain$Bill;)D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double p0, v3, v5

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public static final g1(Lcom/truecaller/api/services/messenger/v1/events/Event;Le/a/u3/g;)Z
    .locals 2

    const-string v0, "$this$isBusiness"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getPayloadCase()Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    move-result-object v0

    sget-object v1, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->MESSAGE_SENT:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getMessageSent()Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;->hasLegacyUserInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getMessageSent()Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;

    move-result-object p0

    const-string v0, "messageSent"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;->getLegacyUserInfo()Lcom/truecaller/api/services/messenger/v1/models/UserInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/UserInfo;->hasBusinessExt()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Le/a/u3/g;->G()Le/a/u3/b;

    move-result-object p0

    invoke-interface {p0}, Le/a/u3/b;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static g2(Le/a/a/c/n/t;)Lcom/truecaller/messaging/data/types/Message;
    .locals 1

    .line 1
    iget-object p0, p0, Le/a/a/c/n/t;->b:Lcom/truecaller/messaging/data/types/Message;

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method public static final g3(Le/a/l/c/a/t;)Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;
    .locals 1

    const-string v0, "$this$toNewFeatureCardType"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Le/a/l/c/a/t$d;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;->GHOST_CALL:Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p0, Le/a/l/c/a/t$a;

    if-eqz v0, :cond_1

    sget-object p0, Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;->ANNOUNCE_CALL:Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

    goto :goto_0

    .line 3
    :cond_1
    instance-of p0, p0, Le/a/l/c/a/t$n;

    if-eqz p0, :cond_2

    sget-object p0, Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;->WHATS_APP_CALLER_ID:Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final h(Lcom/truecaller/api/services/messenger/v1/events/Event;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getPayloadCase()Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance p0, Ls1/i;

    invoke-direct {p0}, Ls1/i;-><init>()V

    throw p0

    :goto_0
    :pswitch_0
    move-object p0, v1

    goto/16 :goto_1

    .line 3
    :pswitch_1
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getMessagesDeleted()Lcom/truecaller/api/services/messenger/v1/events/Event$MessagesDeleted;

    move-result-object p0

    const-string v0, "messagesDeleted"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessagesDeleted;->getRecipient()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object p0

    const-string v0, "messagesDeleted.recipient"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Le/a/c/p/a;->x0(Lcom/truecaller/api/services/messenger/v1/models/Peer;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 4
    :pswitch_2
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getMessageEdited()Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;

    move-result-object p0

    const-string v0, "messageEdited"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageEdited;->getRecipient()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object p0

    const-string v0, "messageEdited.recipient"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Le/a/c/p/a;->x0(Lcom/truecaller/api/services/messenger/v1/models/Peer;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 5
    :pswitch_3
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getGroupInviteKeyUpdated()Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInviteKeyUpdated;

    move-result-object p0

    const-string v0, "groupInviteKeyUpdated"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInviteKeyUpdated;->getGroupId()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 6
    :pswitch_4
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getUserTyping()Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;

    move-result-object p0

    const-string v0, "userTyping"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;->getRecipient()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object p0

    const-string v0, "userTyping.recipient"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Le/a/c/p/a;->x0(Lcom/truecaller/api/services/messenger/v1/models/Peer;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 7
    :pswitch_5
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getGroupDeleted()Lcom/truecaller/api/services/messenger/v1/events/Event$GroupDeleted;

    move-result-object p0

    const-string v0, "groupDeleted"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupDeleted;->getContext()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object p0

    const-string v0, "groupDeleted.context"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Le/a/c/p/a;->x0(Lcom/truecaller/api/services/messenger/v1/models/Peer;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 8
    :pswitch_6
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getGroupInfoUpdated()Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInfoUpdated;

    move-result-object p0

    const-string v0, "groupInfoUpdated"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInfoUpdated;->getGroupId()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 9
    :pswitch_7
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getRolesUpdated()Lcom/truecaller/api/services/messenger/v1/events/Event$RolesUpdated;

    move-result-object p0

    const-string v0, "rolesUpdated"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$RolesUpdated;->getContext()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object p0

    const-string v0, "rolesUpdated.context"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Le/a/c/p/a;->x0(Lcom/truecaller/api/services/messenger/v1/models/Peer;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 10
    :pswitch_8
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getParticipantRemoved()Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsRemoved;

    move-result-object p0

    const-string v0, "participantRemoved"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsRemoved;->getContext()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object p0

    const-string v0, "participantRemoved.context"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Le/a/c/p/a;->x0(Lcom/truecaller/api/services/messenger/v1/models/Peer;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 11
    :pswitch_9
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getParticipantAdded()Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    move-result-object p0

    const-string v0, "participantAdded"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getContext()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object p0

    const-string v0, "participantAdded.context"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Le/a/c/p/a;->x0(Lcom/truecaller/api/services/messenger/v1/models/Peer;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 12
    :pswitch_a
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getGroupCreated()Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;

    move-result-object p0

    const-string v0, "groupCreated"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->getGroupId()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 13
    :pswitch_b
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getReactionSent()Lcom/truecaller/api/services/messenger/v1/events/Event$ReactionSent;

    move-result-object p0

    const-string v0, "reactionSent"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ReactionSent;->getRecipient()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object p0

    const-string v0, "reactionSent.recipient"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Le/a/c/p/a;->x0(Lcom/truecaller/api/services/messenger/v1/models/Peer;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 14
    :pswitch_c
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getReportSent()Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent;

    move-result-object p0

    const-string v0, "reportSent"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent;->getRecipient()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object p0

    const-string v0, "reportSent.recipient"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Le/a/c/p/a;->x0(Lcom/truecaller/api/services/messenger/v1/models/Peer;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 15
    :pswitch_d
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getMessageSent()Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;

    move-result-object p0

    const-string v0, "messageSent"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;->getRecipient()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object p0

    const-string v0, "messageSent.recipient"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Le/a/c/p/a;->x0(Lcom/truecaller/api/services/messenger/v1/models/Peer;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    const/4 v0, 0x1

    if-eqz p0, :cond_2

    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    move v2, v0

    :goto_3
    xor-int/2addr v0, v2

    if-eqz v0, :cond_3

    move-object v1, p0

    :cond_3
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static final h0(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Z
    .locals 1

    const-string v0, "bill"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Le/a/m0/a1$k;->F0(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final h1(Le/a/l/n2/f;)Z
    .locals 3

    const-string v0, "product"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/truecaller/premium/data/ProductKind;

    .line 1
    sget-object v1, Lcom/truecaller/premium/data/ProductKind;->CONSUMABLE_GOLD_YEARLY:Lcom/truecaller/premium/data/ProductKind;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/truecaller/premium/data/ProductKind;->CONSUMABLE_YEARLY:Lcom/truecaller/premium/data/ProductKind;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object p0, p0, Le/a/l/n2/f;->k:Lcom/truecaller/premium/data/ProductKind;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static h2(Le/a/a/d/m;)Le/a/a/d/s;
    .locals 1

    .line 1
    iget-object p0, p0, Le/a/a/d/m;->b:Le/a/a/d/s;

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method public static final h3(Lcom/truecaller/api/services/messenger/v1/models/Peer$User;Ljava/lang/Boolean;Ljava/lang/Integer;)Lcom/truecaller/data/entity/messaging/Participant;
    .locals 5

    const-string v0, "$this$toParticipant"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->hasPhoneNumber()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/truecaller/data/entity/messaging/Participant$b;

    invoke-direct {v0, v1}, Lcom/truecaller/data/entity/messaging/Participant$b;-><init>(I)V

    const/16 v2, 0x2b

    invoke-static {v2}, Le/d/c/a/a;->w(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->getPhoneNumber()Lcom/google/protobuf/Int64Value;

    move-result-object v3

    const-string v4, "phoneNumber"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/protobuf/Int64Value;->getValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    iput-object v2, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/truecaller/data/entity/messaging/Participant$b;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Lcom/truecaller/data/entity/messaging/Participant$b;-><init>(I)V

    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->getId()Ljava/lang/String;

    move-result-object v2

    .line 5
    iput-object v2, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    :goto_0
    const-string v2, "if (hasPhoneNumber()) {\n\u2026rmalizedAddress(id)\n    }"

    .line 6
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 9
    iput p1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->x:I

    if-eqz p2, :cond_1

    .line 10
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 11
    :cond_1
    iput v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->y:I

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->getId()Ljava/lang/String;

    move-result-object p0

    .line 13
    iput-object p0, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->c:Ljava/lang/String;

    .line 14
    invoke-virtual {v0}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object p0

    const-string p1, "builder.setImPeerId(id).build()"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final i(Le/a/a/k/a/b2;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ls1/i;

    invoke-direct {p0}, Ls1/i;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const-string p0, "group"

    goto :goto_1

    :cond_2
    const-string p0, "121"

    :goto_1
    return-object p0
.end method

.method public static synthetic i0(Le/a/a/c/c/q;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-interface {p0, p1}, Le/a/a/c/c/q;->Y4(Z)V

    return-void
.end method

.method public static final i1(Lcom/truecaller/messaging/data/types/Message;)Z
    .locals 1

    const-string v0, "$this$isDowngraded"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    instance-of v0, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;

    if-eqz v0, :cond_0

    const-string v0, "null cannot be cast to non-null type com.truecaller.messaging.transport.im.ImTransportInfo"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;

    .line 2
    iget p0, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->i:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static i2()Le/a/l/a/e0;
    .locals 3

    .line 1
    sget v0, Le/a/l/r;->a:I

    .line 2
    new-instance v0, Le/a/l/a/f0;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "Locale.getDefault()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Le/a/l/a/f0;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method

.method public static final i3(Lcom/truecaller/api/services/messenger/v1/models/Peer;)Lcom/truecaller/data/entity/messaging/Participant;
    .locals 2

    const-string v0, "$this$toParticipant"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getTypeCase()Lcom/truecaller/api/services/messenger/v1/models/Peer$TypeCase;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getUser()Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    move-result-object p0

    const-string v0, "user"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {p0, v1, v1, v0}, Le/a/c/p/a;->k3(Lcom/truecaller/api/services/messenger/v1/models/Peer$User;Ljava/lang/Boolean;Ljava/lang/Integer;I)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object p0

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getGroup()Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;

    move-result-object p0

    const-string v0, "group"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/truecaller/data/entity/messaging/Participant$b;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/truecaller/data/entity/messaging/Participant$b;-><init>(I)V

    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;->getId()Ljava/lang/String;

    move-result-object p0

    .line 5
    iput-object p0, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object p0

    const-string v0, "Participant.Builder(Part\u2026alizedAddress(id).build()"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method

.method public static final j(Landroid/content/res/Resources;III)Ljava/lang/String;
    .locals 2

    if-nez p3, :cond_0

    .line 1
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(zeroResId)"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-virtual {p0, p1, p3, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getQuantityString(id, quantity, quantity)"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public static final j0(Lcom/truecaller/messaging/data/types/Message;)Z
    .locals 5

    const-string v0, "$this$forbiddenToForward"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/messaging/data/types/Message;->k()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/truecaller/messaging/data/types/Message;->g:I

    and-int/lit16 v0, v0, 0xfe

    if-gtz v0, :cond_4

    iget-object p0, p0, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    const-string v0, "entities"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    array-length v0, p0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p0, v3

    .line 3
    iget v4, v4, Lcom/truecaller/messaging/data/types/Entity;->c:I

    if-eqz v4, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    if-eqz v4, :cond_1

    move p0, v1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move p0, v2

    :goto_2
    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :cond_4
    :goto_3
    return v1
.end method

.method public static final j1(Le/a/a/g/l0/c;)Z
    .locals 1

    const-string v0, "$this$isDownloadable"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p0, p0, Le/a/a/g/l0/c;->i:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static j2(Le/a/c/a/c/e/a;Le/a/c/h/h;Le/a/b0/m/c/a;Le/a/c/a/i/h;Le/a/c/b/j;)Le/a/c/a/c/h/l/c;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "messageLocator"

    invoke-static {p1, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "addressProfileLoader"

    invoke-static {p2, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "lifeCycleAwareAnalyticsLogger"

    invoke-static {p3, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "insightsStatusProvider"

    invoke-static {p4, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p0, Le/a/c/a/c/h/l/c;

    invoke-direct {p0, p1, p2, p3, p4}, Le/a/c/a/c/h/l/c;-><init>(Le/a/c/h/h;Le/a/b0/m/c/a;Le/a/c/a/i/h;Le/a/c/b/j;)V

    return-object p0
.end method

.method public static final j3(Le/a/a/g/l0/c;)Lcom/truecaller/data/entity/messaging/Participant;
    .locals 2

    const-string v0, "$this$toParticipant"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/truecaller/data/entity/messaging/Participant$b;

    .line 2
    iget v1, p0, Le/a/a/g/l0/c;->t:I

    .line 3
    invoke-direct {v0, v1}, Lcom/truecaller/data/entity/messaging/Participant$b;-><init>(I)V

    .line 4
    iget-object v1, p0, Le/a/a/g/l0/c;->u:Ljava/lang/String;

    .line 5
    iput-object v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    .line 6
    iget-object p0, p0, Le/a/a/g/l0/c;->v:Ljava/lang/String;

    .line 7
    iput-object p0, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->l:Ljava/lang/String;

    .line 8
    invoke-virtual {v0}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object p0

    const-string v0, "Participant.Builder(part\u2026icipantName)\n    .build()"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final k(Le/a/a/k/a/b2;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ls1/i;

    invoke-direct {p0}, Ls1/i;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const-string p0, "48h"

    goto :goto_1

    :cond_2
    const-string p0, "6h"

    :goto_1
    return-object p0
.end method

.method public static synthetic k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;
    .locals 0

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Le/a/b0/b/e$a;->a:Le/a/b0/b/e$a;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Le/a/f4/b/h/g;->c(Le/a/b0/b/e;)Lp3/a/q1/c;

    move-result-object p0

    return-object p0
.end method

.method public static final k1(Lcom/truecaller/messaging/data/types/Conversation;)Z
    .locals 1

    const-string v0, "$this$isDraft"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p0, p0, Lcom/truecaller/messaging/data/types/Conversation;->e:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static k2(Le/a/c/a/c/e/a;Le/a/c/h/h;Le/a/b0/m/c/a;Le/a/c/a/i/h;Le/a/c/b/j;)Le/a/c/a/c/h/l/d;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "messageLocator"

    invoke-static {p1, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "addressProfileLoader"

    invoke-static {p2, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "lifeCycleAwareAnalyticsLogger"

    invoke-static {p3, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "insightsStatusProvider"

    invoke-static {p4, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p0, Le/a/c/a/c/h/l/d;

    invoke-direct {p0, p1, p2, p3, p4}, Le/a/c/a/c/h/l/d;-><init>(Le/a/c/h/h;Le/a/b0/m/c/a;Le/a/c/a/i/h;Le/a/c/b/j;)V

    return-object p0
.end method

.method public static synthetic k3(Lcom/truecaller/api/services/messenger/v1/models/Peer$User;Ljava/lang/Boolean;Ljava/lang/Integer;I)Lcom/truecaller/data/entity/messaging/Participant;
    .locals 0

    and-int/lit8 p1, p3, 0x1

    and-int/lit8 p1, p3, 0x2

    const/4 p1, 0x0

    .line 1
    invoke-static {p0, p1, p1}, Le/a/c/p/a;->h3(Lcom/truecaller/api/services/messenger/v1/models/Peer$User;Ljava/lang/Boolean;Ljava/lang/Integer;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object p0

    return-object p0
.end method

.method public static final l(Lcom/truecaller/api/services/messenger/v1/models/MessageContent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent;->getMessageEntitiesList()Ljava/util/List;

    move-result-object p0

    const-string v0, "messageEntitiesList"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity;

    .line 4
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$MessageEntity;->hasMention()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static final l0(Lcom/truecaller/messaging/data/types/Conversation;Lcom/truecaller/messaging/data/types/InboxTab;)Ljava/lang/String;
    .locals 5

    const-string v0, "$this$getAvailabilityIdentifier"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tab"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v0}, Le/a/c/p/a;->p1([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v0

    .line 2
    sget-object v1, Lcom/truecaller/messaging/data/types/InboxTab;->SPAM:Lcom/truecaller/messaging/data/types/InboxTab;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 3
    :goto_0
    sget-object v4, Lcom/truecaller/messaging/data/types/InboxTab;->OTHERS:Lcom/truecaller/messaging/data/types/InboxTab;

    if-ne p1, v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    const/4 p1, 0x0

    if-nez v0, :cond_4

    if-nez v2, :cond_4

    if-eqz v1, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    iget-object p0, p0, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    const-string v0, "participants"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Le/q/f/a/d/a;->s0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz p0, :cond_4

    .line 5
    iget v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    if-eqz v0, :cond_3

    goto :goto_2

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    :cond_4
    :goto_2
    return-object p1
.end method

.method public static final l1(Lcom/truecaller/messaging/data/types/Message;)Z
    .locals 1

    const-string v0, "$this$isDraft"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p0, p0, Lcom/truecaller/messaging/data/types/Message;->g:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static l2(Le/a/a/c/a5;)Le/a/p5/h0;
    .locals 2

    .line 1
    new-instance v0, Le/a/p5/i0;

    iget-object p0, p0, Le/a/a/c/a5;->f:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {p0, v1}, Le/a/l4/k;->E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    move-result-object p0

    invoke-direct {v0, p0}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static final l3(Le/a/c/w/o0/k/c;)Le/a/c/w/o0/k/b;
    .locals 6

    const-string v0, "$this$toQueryFilters"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object p0, p0, Le/a/c/w/o0/k/c;->a:Ljava/util/List;

    .line 6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/c/w/o0/k/e;

    .line 7
    instance-of v5, v4, Le/a/c/w/o0/k/e$d;

    if-eqz v5, :cond_1

    invoke-static {v4}, Le/a/c/p/a;->X2(Le/a/c/w/o0/k/e;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    instance-of v5, v4, Le/a/c/w/o0/k/e$a;

    if-eqz v5, :cond_2

    invoke-static {v4}, Le/a/c/p/a;->X2(Le/a/c/w/o0/k/e;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    instance-of v5, v4, Le/a/c/w/o0/k/e$b;

    if-eqz v5, :cond_3

    invoke-static {v4}, Le/a/c/p/a;->X2(Le/a/c/w/o0/k/e;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_3
    instance-of v5, v4, Le/a/c/w/o0/k/e$c;

    if-eqz v5, :cond_0

    invoke-static {v4}, Le/a/c/p/a;->X2(Le/a/c/w/o0/k/e;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_4
    new-instance p0, Le/a/c/w/o0/k/b;

    invoke-direct {p0, v0, v1, v2, v3}, Le/a/c/w/o0/k/b;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method public static final m(Lcom/truecaller/messaging/data/types/Message;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/messaging/data/types/Message;->g:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object p0, p0, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget p0, p0, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    or-int/lit8 v1, v1, 0x2

    :cond_1
    return v1
.end method

.method public static final m0(Lcom/truecaller/data/entity/Contact;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Lcom/truecaller/data/entity/Number;

    const-string v2, "it"

    .line 5
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v0}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    goto :goto_1

    :cond_2
    sget-object p0, Ls1/u/u;->a:Ls1/u/u;

    :goto_1
    return-object p0
.end method

.method public static final m1(Lcom/truecaller/messaging/conversation/draft/DraftArguments;)Z
    .locals 2

    const-string v0, "$this$isEdit"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/truecaller/messaging/conversation/draft/DraftArguments;->b:Ljava/util/List;

    .line 2
    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/messaging/data/types/Draft;

    .line 4
    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Draft;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public static m2(Le/a/a/c/n/t;)Le/a/p5/h0;
    .locals 1

    .line 1
    new-instance v0, Le/a/p5/i0;

    iget-object p0, p0, Le/a/a/c/n/t;->a:Landroid/content/Context;

    invoke-direct {v0, p0}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static final m3(Lcom/truecaller/insights/models/updates/UpdateCategory;)Lcom/truecaller/insights/smartcards/SmartCardCategory;
    .locals 1

    const-string v0, "$this$toSmartCardCategory"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    .line 2
    new-instance p0, Ls1/i;

    invoke-direct {p0}, Ls1/i;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Transaction:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto/16 :goto_0

    .line 3
    :pswitch_1
    sget-object p0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Loan:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto/16 :goto_0

    .line 4
    :pswitch_2
    sget-object p0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Loan:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto/16 :goto_0

    .line 5
    :pswitch_3
    sget-object p0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Loan:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto/16 :goto_0

    .line 6
    :pswitch_4
    sget-object p0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Loan:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto/16 :goto_0

    .line 7
    :pswitch_5
    sget-object p0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Transaction:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto/16 :goto_0

    .line 8
    :pswitch_6
    sget-object p0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Transaction:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto/16 :goto_0

    .line 9
    :pswitch_7
    sget-object p0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Transaction:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto/16 :goto_0

    .line 10
    :pswitch_8
    sget-object p0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Transaction:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto/16 :goto_0

    .line 11
    :pswitch_9
    sget-object p0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Transaction:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto/16 :goto_0

    .line 12
    :pswitch_a
    sget-object p0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Promotion:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto/16 :goto_0

    .line 13
    :pswitch_b
    sget-object p0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->MissedCall:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto :goto_0

    .line 14
    :pswitch_c
    sget-object p0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Betting:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto :goto_0

    .line 15
    :pswitch_d
    sget-object p0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->MissedCall:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto :goto_0

    .line 16
    :pswitch_e
    sget-object p0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Balance:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto :goto_0

    .line 17
    :pswitch_f
    sget-object p0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->VoiceMail:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto :goto_0

    .line 18
    :pswitch_10
    sget-object p0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->MissedCall:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto :goto_0

    .line 19
    :pswitch_11
    sget-object p0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->SecurityAlert:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto :goto_0

    .line 20
    :pswitch_12
    sget-object p0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->DataUsage:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto :goto_0

    .line 21
    :pswitch_13
    sget-object p0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Investments:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto :goto_0

    .line 22
    :pswitch_14
    sget-object p0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Balance:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto :goto_0

    .line 23
    :pswitch_15
    sget-object p0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Transaction:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto :goto_0

    .line 24
    :pswitch_16
    sget-object p0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->WeatherAlert:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto :goto_0

    .line 25
    :pswitch_17
    sget-object p0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Vaccine:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto :goto_0

    .line 26
    :pswitch_18
    sget-object p0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Tax:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto :goto_0

    .line 27
    :pswitch_19
    sget-object p0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->School:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto :goto_0

    .line 28
    :pswitch_1a
    sget-object p0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Prescription:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto :goto_0

    .line 29
    :pswitch_1b
    sget-object p0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Delivery:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto :goto_0

    .line 30
    :pswitch_1c
    sget-object p0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Appointment:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto :goto_0

    .line 31
    :pswitch_1d
    sget-object p0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Recharge:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto :goto_0

    .line 32
    :pswitch_1e
    sget-object p0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Bill:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto :goto_0

    .line 33
    :pswitch_1f
    sget-object p0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Event:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto :goto_0

    .line 34
    :pswitch_20
    sget-object p0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Travel:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto :goto_0

    .line 35
    :pswitch_21
    sget-object p0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Transaction:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto :goto_0

    .line 36
    :pswitch_22
    sget-object p0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Loan:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto :goto_0

    .line 37
    :pswitch_23
    sget-object p0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Transaction:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto :goto_0

    .line 38
    :pswitch_24
    sget-object p0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Transaction:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final n(Ljava/lang/String;)Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;
    .locals 3

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$b;

    move-result-object v0

    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group$a;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3
    iget-object v2, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;

    invoke-static {v2, p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;->access$1200(Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$b;->a(Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group$a;)Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$b;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    const-string v0, "InputPeer.newBuilder().s\u2026).setId(groupId)).build()"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    return-object p0
.end method

.method public static final n0(Le/a/c/v/i/g;)Ljava/lang/String;
    .locals 2

    const-string v0, "$this$getBillType"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Le/a/c/v/i/g;->a:Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getSubCategory()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x121b836a

    if-eq v0, v1, :cond_2

    const v1, 0xf393b3

    if-eq v0, v1, :cond_1

    const v1, 0x7cf97383

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "prepaid_expiry"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "PrepaidExpiry"

    goto :goto_1

    :cond_1
    const-string v0, "prepaid_success"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "PrepaidSuccess"

    goto :goto_1

    :cond_2
    const-string v0, "credit_card"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "CreditCard"

    goto :goto_1

    :cond_3
    :goto_0
    const-string p0, "Bill"

    :goto_1
    return-object p0
.end method

.method public static final n1(Lcom/truecaller/messaging/data/types/Message;)Z
    .locals 4

    const-string v0, "$this$isEdited"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/Message;->S:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static n2(Le/a/a/b/o;)Le/a/p5/h0;
    .locals 1

    .line 1
    new-instance v0, Le/a/p5/i0;

    iget-object p0, p0, Le/a/a/b/o;->a:Landroid/content/Context;

    invoke-direct {v0, p0}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static n3(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_0

    const-string p1, "\\s+"

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "$this$toSnakeCase"

    .line 1
    invoke-static {p0, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "separator"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string p2, "(this as java.lang.String).toLowerCase()"

    invoke-static {p0, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Le/d/c/a/a;->b0(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 3
    sget-object v6, Le/a/c/c0/h;->b:Le/a/c/c0/h;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x1e

    const-string v1, "_"

    invoke-static/range {v0 .. v7}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final o(Lcom/truecaller/data/entity/messaging/Participant;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->r:I

    const/16 v1, 0x80

    invoke-static {v0, v1}, Le/a/m0/a1$k;->o(II)Z

    move-result v0

    if-nez v0, :cond_1

    iget p0, p0, Lcom/truecaller/data/entity/messaging/Participant;->r:I

    const/16 v0, 0x200

    invoke-static {p0, v0}, Le/a/m0/a1$k;->o(II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final o0(Le/m/a/g/e/e;)Landroid/widget/FrameLayout;
    .locals 2

    const-string v0, "$this$getBottomSheet"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ln3/r/a/k;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    instance-of v0, p0, Le/m/a/g/e/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p0, v1

    :cond_0
    check-cast p0, Le/m/a/g/e/d;

    if-eqz p0, :cond_1

    .line 2
    sget v0, Lcom/google/android/material/R$id;->design_bottom_sheet:I

    invoke-virtual {p0, v0}, Ln3/b/a/p;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static final o1(Lcom/truecaller/messaging/data/types/Conversation;)Z
    .locals 1

    const-string v0, "$this$isGroup"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p0, p0, Lcom/truecaller/messaging/data/types/Conversation;->c:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static o2(Le/a/c/a/c/e/a;Le/a/c/q/d;Ls1/w/f;Le/a/c/b/j;Le/a/c/h/e;)Le/a/c/a/c/f/g;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "businessInsightsManager"

    invoke-static {p1, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ioContext"

    invoke-static {p2, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "insightsStatusProvider"

    invoke-static {p3, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "insightsFilterFetcher"

    invoke-static {p4, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p0, Le/a/c/a/c/f/g;

    invoke-direct {p0, p1, p2, p3, p4}, Le/a/c/a/c/f/g;-><init>(Le/a/c/q/d;Ls1/w/f;Le/a/c/b/j;Le/a/c/h/e;)V

    return-object p0
.end method

.method public static o3(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_0

    const-string p1, "\\s+"

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "$this$toTitleCase"

    .line 1
    invoke-static {p0, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "separator"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string p2, "(this as java.lang.String).toLowerCase()"

    invoke-static {p0, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Le/d/c/a/a;->b0(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 3
    sget-object v6, Le/a/c/c0/i;->b:Le/a/c/c0/i;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x1e

    const-string v1, " "

    invoke-static/range {v0 .. v7}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final p(Ljava/lang/String;Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;
    .locals 11

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    const-string v0, " "

    .line 2
    invoke-static {p0, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f120c2f

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Le/a/a/e/j;->b:Le/a/a/e/j;

    const/16 v10, 0x1e

    const-string v4, ", "

    move-object v3, p1

    invoke-static/range {v3 .. v10}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final p0(Le/m/a/g/e/e;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/g/e/e;",
            ")",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$getBottomSheetBehavior"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Le/a/c/p/a;->o0(Le/m/a/g/e/e;)Landroid/widget/FrameLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static p1([Lcom/truecaller/data/entity/messaging/Participant;)Z
    .locals 2

    .line 1
    array-length v0, p0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    invoke-static {p0}, Le/a/c/p/a;->r1([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static p2(Le/a/a/c/i/c;)Le/a/p5/h0;
    .locals 1

    .line 1
    new-instance v0, Le/a/p5/i0;

    iget-object p0, p0, Le/a/a/c/i/c;->a:Landroid/content/Context;

    invoke-direct {v0, p0}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static final p3(Le/a/c/r/j/a;)Le/a/c/a/l/c;
    .locals 3

    const-string v0, "$this$toUiActionData"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Le/a/c/r/j/a$a$b;

    const-string v1, "PrepaidExpiry"

    if-eqz v0, :cond_1

    new-instance v0, Le/a/c/a/l/c;

    move-object v2, p0

    check-cast v2, Le/a/c/r/j/a$a$b;

    .line 2
    iget-object v2, v2, Le/a/c/r/j/a$a$b;->h:Ljava/lang/String;

    .line 3
    invoke-static {v2, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Recharge"

    goto :goto_0

    :cond_0
    const-string v1, "Pay Bill"

    :goto_0
    invoke-direct {v0, v1, p0}, Le/a/c/a/l/c;-><init>(Ljava/lang/String;Le/a/c/r/j/a;)V

    goto/16 :goto_2

    .line 4
    :cond_1
    instance-of v0, p0, Le/a/c/r/j/a$c;

    if-eqz v0, :cond_2

    new-instance v0, Le/a/c/a/l/c;

    const-string v1, "Dismiss"

    invoke-direct {v0, v1, p0}, Le/a/c/a/l/c;-><init>(Ljava/lang/String;Le/a/c/r/j/a;)V

    goto/16 :goto_2

    .line 5
    :cond_2
    instance-of v0, p0, Le/a/c/r/j/a$g;

    if-eqz v0, :cond_3

    new-instance v0, Le/a/c/a/l/c;

    const-string v1, "Send Feedback"

    invoke-direct {v0, v1, p0}, Le/a/c/a/l/c;-><init>(Ljava/lang/String;Le/a/c/r/j/a;)V

    goto :goto_2

    .line 6
    :cond_3
    instance-of v0, p0, Le/a/c/r/j/a$a$a;

    if-eqz v0, :cond_5

    new-instance v0, Le/a/c/a/l/c;

    move-object v2, p0

    check-cast v2, Le/a/c/r/j/a$a$a;

    .line 7
    iget-object v2, v2, Le/a/c/r/j/a$a$a;->g:Ljava/lang/String;

    .line 8
    invoke-static {v2, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Already Recharged"

    goto :goto_1

    :cond_4
    const-string v1, "Already Paid"

    :goto_1
    invoke-direct {v0, v1, p0}, Le/a/c/a/l/c;-><init>(Ljava/lang/String;Le/a/c/r/j/a;)V

    goto :goto_2

    .line 9
    :cond_5
    instance-of v0, p0, Le/a/c/r/j/a$d;

    if-eqz v0, :cond_6

    new-instance v0, Le/a/c/a/l/c;

    const-string v1, ""

    invoke-direct {v0, v1, p0}, Le/a/c/a/l/c;-><init>(Ljava/lang/String;Le/a/c/r/j/a;)V

    goto :goto_2

    .line 10
    :cond_6
    instance-of v0, p0, Le/a/c/r/j/a$h$b;

    if-eqz v0, :cond_7

    new-instance v0, Le/a/c/a/l/c;

    invoke-virtual {p0}, Le/a/c/r/j/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Le/a/c/a/l/c;-><init>(Ljava/lang/String;Le/a/c/r/j/a;)V

    goto :goto_2

    .line 11
    :cond_7
    instance-of v0, p0, Le/a/c/r/j/a$h$a;

    if-eqz v0, :cond_8

    new-instance v0, Le/a/c/a/l/c;

    invoke-virtual {p0}, Le/a/c/r/j/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Le/a/c/a/l/c;-><init>(Ljava/lang/String;Le/a/c/r/j/a;)V

    goto :goto_2

    .line 12
    :cond_8
    instance-of v0, p0, Le/a/c/r/j/a$f$a;

    if-eqz v0, :cond_9

    new-instance v0, Le/a/c/a/l/c;

    invoke-virtual {p0}, Le/a/c/r/j/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Le/a/c/a/l/c;-><init>(Ljava/lang/String;Le/a/c/r/j/a;)V

    goto :goto_2

    .line 13
    :cond_9
    instance-of v0, p0, Le/a/c/r/j/a$e;

    if-eqz v0, :cond_a

    new-instance v0, Le/a/c/a/l/c;

    invoke-virtual {p0}, Le/a/c/r/j/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Le/a/c/a/l/c;-><init>(Ljava/lang/String;Le/a/c/r/j/a;)V

    :goto_2
    return-object v0

    .line 14
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "UiActionData type not supported yet javaClass"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final q(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/common/ui/banner/BannerViewX;
    .locals 9

    const v0, 0x7f0a01ec

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/truecaller/common/ui/banner/BannerViewX;

    .line 2
    new-instance v8, Lg3;

    const/4 v1, 0x0

    move-object v0, v8

    move-object v2, v7

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lg3;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v8}, Lcom/truecaller/common/ui/banner/BannerViewX;->setPrimaryButtonCLickListener(Ls1/z/b/l;)V

    .line 3
    new-instance v8, Lg3;

    const/4 v1, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lg3;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v8}, Lcom/truecaller/common/ui/banner/BannerViewX;->setSecondaryButtonCLickListener(Ls1/z/b/l;)V

    const-string p1, "findViewById<BannerViewX\u2026r, this))\n        }\n    }"

    .line 4
    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/truecaller/common/ui/banner/BannerViewX;

    return-object p0
.end method

.method public static final q0(Ljava/util/Collection;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Le/a/c/w/o0/k/e;",
            ">;)",
            "Ljava/util/Set<",
            "Le/a/c/w/o0/k/e$a;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$getCardCategories"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Le/a/c/w/o0/k/e$a;

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {v0}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final q1(Lcom/truecaller/messaging/data/types/Conversation;)Z
    .locals 1

    const-string v0, "$this$isGroupInvitation"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/truecaller/messaging/data/types/Conversation;->z:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-static {p0}, Le/a/c/p/a;->t1(Lcom/truecaller/messaging/data/types/ImGroupInfo;)Z

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic q2(Le/a/a/g/w;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ls1/w/d;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    move-object p3, v0

    .line 1
    :cond_2
    invoke-interface {p0, p1, p2, p3, p4}, Le/a/a/g/w;->n(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final q3(Lcom/truecaller/insights/models/InsightsDomain;Le/a/c/f/h;Ljava/util/List;)Le/a/c/q/j;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/InsightsDomain;",
            "Le/a/c/f/h;",
            "Ljava/util/List<",
            "+",
            "Le/a/c/r/j/a;",
            ">;)",
            "Le/a/c/q/j;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "$this$toUpcomingData"

    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "uiSchemaBinder"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "actionsList"

    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v5, v0, Lcom/truecaller/insights/models/InsightsDomain$Bill;

    const/16 v6, 0x8

    const/4 v7, 0x7

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v15, 0x9

    if-eqz v5, :cond_0

    check-cast v0, Lcom/truecaller/insights/models/InsightsDomain$Bill;

    const-string v5, "$this$toBillUpcomingData"

    .line 2
    invoke-static {v0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v3, v15, [Lcom/truecaller/insights/binders/utils/BillUiProperties;

    .line 3
    sget-object v4, Lcom/truecaller/insights/binders/utils/BillUiProperties;->DUE_AMT:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v4, v3, v14

    .line 4
    sget-object v4, Lcom/truecaller/insights/binders/utils/BillUiProperties;->UI_DUE_DATE:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v4, v3, v13

    .line 5
    sget-object v4, Lcom/truecaller/insights/binders/utils/BillUiProperties;->TRX_CURRENCY:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v4, v3, v12

    .line 6
    sget-object v4, Lcom/truecaller/insights/binders/utils/BillUiProperties;->UI_DUE_AMT:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v4, v3, v11

    .line 7
    sget-object v4, Lcom/truecaller/insights/binders/utils/BillUiProperties;->UI_TAGS:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v4, v3, v10

    .line 8
    sget-object v4, Lcom/truecaller/insights/binders/utils/BillUiProperties;->UI_TRX_TYPE:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v4, v3, v9

    .line 9
    sget-object v4, Lcom/truecaller/insights/binders/utils/BillUiProperties;->UI_DUEINS_TYPE:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v4, v3, v8

    .line 10
    sget-object v4, Lcom/truecaller/insights/binders/utils/BillUiProperties;->BILL_DATE_TIME:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v4, v3, v7

    .line 11
    sget-object v4, Lcom/truecaller/insights/binders/utils/BillUiProperties;->PAST_UI_DUE_DATE:Lcom/truecaller/insights/binders/utils/BillUiProperties;

    aput-object v4, v3, v6

    .line 12
    invoke-static {v3}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 13
    invoke-interface {v1, v0, v3}, Le/a/c/f/h;->a(Lcom/truecaller/insights/models/InsightsDomain;Ljava/util/List;)Le/a/c/r/b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 14
    new-instance v3, Le/a/c/q/j$a;

    .line 15
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getMsgId()J

    move-result-wide v15

    .line 16
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getConversationId()J

    move-result-wide v17

    .line 17
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getSender()Ljava/lang/String;

    move-result-object v19

    .line 18
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain;->getCategory()Ljava/lang/String;

    move-result-object v20

    .line 19
    move-object/from16 v24, v1

    check-cast v24, Le/a/c/r/b$b;

    .line 20
    invoke-static/range {p2 .. p2}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Le/a/c/r/j/a;

    .line 21
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Le/a/c/r/j/a;

    .line 22
    invoke-static {v2, v12}, Ls1/u/i;->s(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v23

    .line 23
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getSpamCategory()I

    move-result v25

    .line 24
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->isIM()Z

    move-result v26

    move-object v14, v3

    .line 25
    invoke-direct/range {v14 .. v26}, Le/a/c/q/j$a;-><init>(JJLjava/lang/String;Ljava/lang/String;Le/a/c/r/j/a;Le/a/c/r/j/a;Ljava/util/List;Le/a/c/r/b$b;IZ)V

    goto/16 :goto_0

    .line 26
    :cond_0
    instance-of v5, v0, Lcom/truecaller/insights/models/InsightsDomain$f;

    if-eqz v5, :cond_2

    check-cast v0, Lcom/truecaller/insights/models/InsightsDomain$f;

    const-string v5, "$this$toTravelUpcomingData"

    .line 27
    invoke-static {v0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x10

    new-array v3, v3, [Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    .line 28
    sget-object v4, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->LOCATION:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    aput-object v4, v3, v14

    .line 29
    sget-object v4, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->PNR:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    aput-object v4, v3, v13

    .line 30
    sget-object v4, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->TRAVEL_TYPE:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    aput-object v4, v3, v12

    .line 31
    sget-object v4, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->DATETIME:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    aput-object v4, v3, v11

    .line 32
    sget-object v4, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->UI_DATE:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    aput-object v4, v3, v10

    .line 33
    sget-object v4, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->SEAT:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    aput-object v4, v3, v9

    .line 34
    sget-object v4, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->MORE_INFO:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    aput-object v4, v3, v8

    .line 35
    sget-object v4, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->CATEGORY:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    aput-object v4, v3, v7

    .line 36
    sget-object v4, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->MESSAGE_ID:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    aput-object v4, v3, v6

    .line 37
    sget-object v4, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->SENDER_ID:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    aput-object v4, v3, v15

    .line 38
    sget-object v4, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->CONTENT_TITLE:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    const/16 v5, 0xa

    aput-object v4, v3, v5

    .line 39
    sget-object v4, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->ICON:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    const/16 v5, 0xb

    aput-object v4, v3, v5

    .line 40
    sget-object v4, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->ALERT_TYPE:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    const/16 v5, 0xc

    aput-object v4, v3, v5

    .line 41
    sget-object v4, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->ENABLE_EXPERIMENTAL_SENDER:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    const/16 v5, 0xd

    aput-object v4, v3, v5

    .line 42
    sget-object v4, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->UI_TAGS:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    const/16 v5, 0xe

    aput-object v4, v3, v5

    .line 43
    sget-object v4, Lcom/truecaller/insights/binders/utils/TravelUiProperties;->TRAVEL_DATE_TIME:Lcom/truecaller/insights/binders/utils/TravelUiProperties;

    const/16 v5, 0xf

    aput-object v4, v3, v5

    .line 44
    invoke-static {v3}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 45
    invoke-interface {v1, v0, v3}, Le/a/c/f/h;->a(Lcom/truecaller/insights/models/InsightsDomain;Ljava/util/List;)Le/a/c/r/b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 46
    new-instance v3, Le/a/c/q/j$b;

    .line 47
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$f;->getMsgId()J

    move-result-wide v15

    .line 48
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$f;->getConversationId()J

    move-result-wide v17

    .line 49
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$f;->getSender()Ljava/lang/String;

    move-result-object v19

    .line 50
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain;->getCategory()Ljava/lang/String;

    move-result-object v20

    .line 51
    move-object/from16 v24, v1

    check-cast v24, Le/a/c/r/b$f;

    .line 52
    invoke-static/range {p2 .. p2}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Le/a/c/r/j/a;

    .line 53
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Le/a/c/r/j/a;

    .line 54
    invoke-static {v2, v12}, Ls1/u/i;->s(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v23

    .line 55
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$f;->getSpamCategory()I

    move-result v25

    .line 56
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$f;->isIM()Z

    move-result v26

    move-object v14, v3

    .line 57
    invoke-direct/range {v14 .. v26}, Le/a/c/q/j$b;-><init>(JJLjava/lang/String;Ljava/lang/String;Le/a/c/r/j/a;Le/a/c/r/j/a;Ljava/util/List;Le/a/c/r/b$f;IZ)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return-object v3

    .line 58
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Binder for "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/InsightsDomain;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not defined yet"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final r(Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;)Landroid/text/style/CharacterStyle;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_5

    const/4 v1, 0x2

    if-eq p0, v0, :cond_4

    if-eq p0, v1, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ls1/i;

    invoke-direct {p0}, Ls1/i;-><init>()V

    throw p0

    :cond_1
    :goto_0
    new-instance p0, Landroid/text/style/TypefaceSpan;

    const-string v0, "monospace"

    invoke-direct {p0, v0}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 3
    :cond_2
    new-instance p0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {p0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    goto :goto_1

    .line 4
    :cond_3
    new-instance p0, Landroid/text/style/UnderlineSpan;

    invoke-direct {p0}, Landroid/text/style/UnderlineSpan;-><init>()V

    goto :goto_1

    .line 5
    :cond_4
    new-instance p0, Landroid/text/style/StyleSpan;

    invoke-direct {p0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    goto :goto_1

    .line 6
    :cond_5
    new-instance p0, Landroid/text/style/StyleSpan;

    invoke-direct {p0, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    :goto_1
    return-object p0
.end method

.method public static final r0(Le/a/c/r/b$b;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/r/b$b;->o:Ljava/lang/String;

    const-string v1, "PrepaidExpiry"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Le/a/c/r/b$b;->e:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    const-string v0, "Plan expiring on "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5
    iget-object p0, p0, Le/a/c/r/b$b;->e:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    const-string p0, "Plan expiring"

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Le/a/c/r/b$b;->o:Ljava/lang/String;

    const-string v2, "PrepaidSuccess"

    .line 8
    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Recharge successful"

    goto :goto_1

    .line 9
    :cond_2
    iget-object v0, p0, Le/a/c/r/b$b;->d:Ljava/lang/String;

    .line 10
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/4 v2, 0x0

    int-to-float v3, v2

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_3

    const-string p0, "No payment due"

    goto :goto_1

    .line 11
    :cond_3
    iget-object v0, p0, Le/a/c/r/b$b;->e:Ljava/lang/String;

    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    const-string v0, "Bill "

    if-eqz v1, :cond_5

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 13
    iget-object p0, p0, Le/a/c/r/b$b;->h:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 15
    :cond_5
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 16
    iget-object v1, p0, Le/a/c/r/b$b;->h:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object p0, p0, Le/a/c/r/b$b;->e:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static r1([Lcom/truecaller/data/entity/messaging/Participant;)Z
    .locals 3

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    aget-object p0, p0, v1

    iget p0, p0, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static final r2(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/InsightsDomain$Bill;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/InsightsDomain$Bill;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$removeDuplicatePdoBills"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_0
    if-ltz v3, :cond_4

    .line 5
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/truecaller/insights/models/InsightsDomain$Bill;

    .line 6
    sget-object v6, Lcom/truecaller/insights/utils/DateFormat;->MMMM_yyyy:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual {v6}, Lcom/truecaller/insights/utils/DateFormat;->formatter()Lw3/b/a/i0/b;

    move-result-object v6

    invoke-virtual {v5}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getBillDateTime()Lw3/b/a/b;

    move-result-object v7

    invoke-virtual {v6, v7}, Lw3/b/a/i0/b;->f(Lw3/b/a/z;)Ljava/lang/String;

    move-result-object v6

    .line 7
    new-instance v7, Ls1/o;

    invoke-virtual {v5}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getSender()Ljava/lang/String;

    move-result-object v8

    const-string v9, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v8, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v10, "(this as java.lang.String).toLowerCase()"

    invoke-static {v8, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getInsNum()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v8, v11, v6}, Ls1/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    new-instance v8, Ls1/o;

    invoke-virtual {v5}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getSender()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueAmt()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10, v6}, Ls1/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v5}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getInsNum()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    move v6, v4

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_2

    .line 10
    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 11
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_1
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 13
    :cond_2
    invoke-interface {v1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 14
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_3
    :goto_2
    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 16
    :cond_4
    invoke-static {v2}, Ls1/u/i;->x0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final r3(Landroid/service/notification/StatusBarNotification;Landroid/content/Context;)Le/a/i4/v;
    .locals 4

    const-string v0, "$this$toWhatsAppNotification"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const-string v1, "notification.extras.getS\u2026cation.EXTRA_TITLE) ?: \"\""

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$this$getOngoingVideoCallString"

    .line 2
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v1, "com.whatsapp"

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    const-string v2, "video_ongoing_call"

    const-string v3, "string"

    .line 4
    invoke-virtual {p1, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.text"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    invoke-static {v2, p1, v3}, Ls1/f0/v;->z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_2

    :cond_2
    move p1, v1

    .line 7
    :goto_2
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz p0, :cond_3

    array-length v1, p0

    .line 8
    :cond_3
    new-instance p0, Le/a/i4/v;

    invoke-direct {p0, v0, p1, v1}, Le/a/i4/v;-><init>(Ljava/lang/String;ZI)V

    return-object p0
.end method

.method public static final s(Lp3/a/i1;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/i1;->a:Lp3/a/g1;

    const-string v1, "status"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v0, Lp3/a/g1;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 4
    iget-object p0, p0, Lp3/a/i1;->a:Lp3/a/g1;

    .line 5
    invoke-static {p0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lp3/a/g1;->a:Lp3/a/g1$b;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    iget-object v2, p0, Lp3/a/i1;->a:Lp3/a/g1;

    .line 10
    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v2, v2, Lp3/a/g1;->a:Lp3/a/g1$b;

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    iget-object p0, p0, Lp3/a/i1;->a:Lp3/a/g1;

    .line 14
    invoke-static {p0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object p0, p0, Lp3/a/g1;->b:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final s0()Le/m/d/n/i;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Le/m/d/g;->b()Le/m/d/g;

    move-result-object v0

    .line 2
    const-class v1, Le/m/d/n/i;

    .line 3
    invoke-virtual {v0}, Le/m/d/g;->a()V

    .line 4
    iget-object v0, v0, Le/m/d/g;->d:Le/m/d/m/t;

    invoke-virtual {v0, v1}, Le/m/d/m/n;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Le/m/d/n/i;

    const-string v1, "FirebaseCrashlytics component is not present."

    .line 6
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static final s1(Lcom/truecaller/messaging/data/types/Message;)Z
    .locals 1

    const-string v0, "$this$isIncoming"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p0, p0, Lcom/truecaller/messaging/data/types/Message;->g:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final s2(Landroid/media/AudioManager;)Le/a/a/c/s8/c;
    .locals 3

    const-string v0, "$this$requestAudioFocusForVoiceClips"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x4

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 2
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v2, 0x2

    .line 4
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 6
    new-instance v2, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v2, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 7
    sget-object v1, Lk;->d:Lk;

    invoke-virtual {v2, v1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    .line 8
    invoke-virtual {v1, v0}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    .line 11
    new-instance p0, Le/a/a/c/s8/e;

    const-string v1, "audioFocusRequest"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Le/a/a/c/s8/e;-><init>(Landroid/media/AudioFocusRequest;)V

    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lk;->b:Lk;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 13
    new-instance p0, Le/a/a/c/s8/d;

    sget-object v0, Lk;->c:Lk;

    invoke-direct {p0, v0}, Le/a/a/c/s8/d;-><init>(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    :goto_0
    return-object p0
.end method

.method public static final s3([Lcom/truecaller/messaging/data/types/Mention;Ljava/lang/String;Z)Ls1/k;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/truecaller/messaging/data/types/Mention;",
            "Ljava/lang/String;",
            "Z)",
            "Ls1/k<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Mention;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "$this$transformMentions"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "text"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const/4 v14, 0x0

    .line 3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 4
    array-length v6, v0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v0, v7

    invoke-virtual {v8}, Lcom/truecaller/messaging/data/types/Mention;->getOffset()I

    move-result v9

    if-ne v9, v5, :cond_0

    const/4 v9, 0x1

    goto :goto_2

    :cond_0
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_3
    move-object v15, v8

    if-eqz v15, :cond_4

    if-eqz p2, :cond_3

    .line 5
    invoke-virtual {v15}, Lcom/truecaller/messaging/data/types/Mention;->getPublicName()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_3
    invoke-virtual {v15}, Lcom/truecaller/messaging/data/types/Mention;->getPrivateName()Ljava/lang/String;

    move-result-object v6

    :goto_4
    move-object v13, v6

    .line 6
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    new-instance v12, Lcom/truecaller/messaging/data/types/Mention;

    .line 8
    invoke-virtual {v15}, Lcom/truecaller/messaging/data/types/Mention;->getId()J

    move-result-wide v7

    .line 9
    invoke-virtual {v15}, Lcom/truecaller/messaging/data/types/Mention;->getImId()Ljava/lang/String;

    move-result-object v9

    .line 10
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v11

    .line 11
    invoke-virtual {v15}, Lcom/truecaller/messaging/data/types/Mention;->getPrivateName()Ljava/lang/String;

    move-result-object v16

    .line 12
    invoke-virtual {v15}, Lcom/truecaller/messaging/data/types/Mention;->getPublicName()Ljava/lang/String;

    move-result-object v17

    move-object v6, v12

    move v10, v14

    move-object v4, v12

    move-object/from16 v12, v16

    move-object/from16 v16, v13

    move-object/from16 v13, v17

    .line 13
    invoke-direct/range {v6 .. v13}, Lcom/truecaller/messaging/data/types/Mention;-><init>(JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {v15}, Lcom/truecaller/messaging/data/types/Mention;->getLength()I

    move-result v4

    add-int/2addr v4, v5

    .line 16
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v14

    move v14, v5

    move v5, v4

    goto :goto_0

    .line 17
    :cond_4
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 18
    :cond_5
    new-instance v0, Ls1/k;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "result.toString()"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final t(Lcom/truecaller/messaging/mediamanager/AttachmentType;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string p0, "link"

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ls1/i;

    invoke-direct {p0}, Ls1/i;-><init>()V

    throw p0

    :cond_1
    const-string p0, "audio"

    goto :goto_0

    :cond_2
    const-string p0, "document"

    goto :goto_0

    :cond_3
    const-string p0, "media"

    :goto_0
    return-object p0
.end method

.method public static final t0(Le/a/c/r/b$f;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/r/b$f;->e:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    iget-object v1, p0, Le/a/c/r/b$f;->d:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object p0, p0, Le/a/c/r/b$f;->e:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Le/a/c/r/b$f;->d:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public static final t1(Lcom/truecaller/messaging/data/types/ImGroupInfo;)Z
    .locals 1

    const-string v0, "$this$isInvitation"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p0, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->f:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic t2(Le/a/a/s0/d;Ljava/lang/String;IZLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-interface {p0, p1, p2, p3, p4}, Le/a/a/s0/d;->a(Ljava/lang/String;IZLs1/w/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t3([Lcom/truecaller/messaging/data/types/Mention;Ljava/lang/String;ZI)Ls1/k;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 1
    :cond_0
    invoke-static {p0, p1, p2}, Le/a/c/p/a;->s3([Lcom/truecaller/messaging/data/types/Mention;Ljava/lang/String;Z)Ls1/k;

    move-result-object p0

    return-object p0
.end method

.method public static final u(Lp3/a/g1;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lp3/a/g1;->a:Lp3/a/g1$b;

    .line 2
    iget v1, v0, Lp3/a/g1$b;->a:I

    add-int/lit16 v1, v1, 0x2710

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v2, 0x5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lp3/a/g1;->b:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v2, -0x4ae29b76

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "REQUEST_THROTTLED"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 v1, 0x6

    goto :goto_0

    :cond_3
    const/4 v1, 0x7

    goto :goto_0

    .line 7
    :cond_4
    iget-object p0, p0, Lp3/a/g1;->b:Ljava/lang/String;

    if-nez p0, :cond_5

    goto :goto_0

    .line 8
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v3, -0x4dc39401

    if-eq v0, v3, :cond_7

    const v3, 0x6c3fecc7

    if-eq v0, v3, :cond_6

    goto :goto_0

    :cond_6
    const-string v0, "MEDIA_NOT_SUPPORTED"

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    move v1, v2

    goto :goto_0

    :cond_7
    const-string v0, "MESSAGE_TOO_LONG"

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 v1, 0x4

    :cond_8
    :goto_0
    return v1
.end method

.method public static final u0(Le/a/a/c/m5;Le/a/p5/c0;)Ljava/lang/String;
    .locals 3

    const-string v0, "$this$getDeleteForRecipientCaption"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Le/a/a/c/m5;->o()[Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {v0}, Le/a/a/i1/h;->f([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    const p0, 0x7f120202

    new-array v0, v1, [Ljava/lang/Object;

    .line 2
    invoke-interface {p1, p0, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "resourceProvider.getStri\u2026sagesDeleteForAllMembers)"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const v0, 0x7f120203

    new-array v2, v2, [Ljava/lang/Object;

    .line 3
    invoke-interface {p0}, Le/a/a/c/m5;->o()[Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Le/q/f/a/d/a;->s0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz p0, :cond_1

    invoke-static {p0}, Le/a/a/i1/h;->c(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    aput-object p0, v2, v1

    invoke-interface {p1, v0, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "resourceProvider.getStri\u2026irst()?.getDisplayName())"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method

.method public static final u1(Le/a/a/d/s;)Z
    .locals 7

    const-string v0, "$this$isMmsForward"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Le/a/a/d/s$c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Le/a/a/d/s$c;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 2
    iget-object v0, v0, Le/a/a/d/s$c;->a:Ljava/util/ArrayList;

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/truecaller/messaging/ForwardContentItem;

    .line 4
    iget-object v5, v5, Lcom/truecaller/messaging/ForwardContentItem;->c:Lcom/truecaller/messaging/data/types/BinaryEntity;

    if-eqz v5, :cond_3

    .line 5
    invoke-virtual {v5}, Lcom/truecaller/messaging/data/types/BinaryEntity;->l()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Lcom/truecaller/messaging/data/types/BinaryEntity;->w()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Lcom/truecaller/messaging/data/types/BinaryEntity;->h()Z

    move-result v6

    if-nez v6, :cond_2

    .line 6
    iget-boolean v6, v5, Lcom/truecaller/messaging/data/types/BinaryEntity;->t:Z

    if-nez v6, :cond_2

    .line 7
    invoke-virtual {v5}, Lcom/truecaller/messaging/data/types/BinaryEntity;->t()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Lcom/truecaller/messaging/data/types/BinaryEntity;->e()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v5, v2

    goto :goto_1

    :cond_3
    move v5, v3

    :goto_1
    if-eqz v5, :cond_1

    goto :goto_2

    :cond_4
    move-object v4, v1

    :goto_2
    if-eqz v4, :cond_5

    move v0, v2

    goto :goto_3

    :cond_5
    move v0, v3

    :goto_3
    if-nez v0, :cond_b

    .line 8
    instance-of v0, p0, Le/a/a/d/s$b;

    if-nez v0, :cond_6

    move-object p0, v1

    :cond_6
    check-cast p0, Le/a/a/d/s$b;

    if-eqz p0, :cond_9

    .line 9
    iget-object v0, p0, Le/a/a/d/s$b;->a:Landroid/content/Intent;

    .line 10
    invoke-static {v0}, Le/a/b0/q/t;->a(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    move v0, v3

    goto :goto_5

    :cond_8
    :goto_4
    move v0, v2

    :goto_5
    if-nez v0, :cond_9

    .line 11
    iget-object p0, p0, Le/a/a/d/s$b;->a:Landroid/content/Intent;

    .line 12
    invoke-static {p0}, Le/a/c/p/a;->J2(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_9

    move p0, v2

    goto :goto_6

    :cond_9
    move p0, v3

    :goto_6
    if-eqz p0, :cond_a

    goto :goto_7

    :cond_a
    move v2, v3

    :cond_b
    :goto_7
    return v2
.end method

.method public static final u2(Ljava/lang/String;)Le/a/c/v/h/e;
    .locals 2

    const-string v0, "$this$resolveCategory"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x1f1c07

    if-ne v0, v1, :cond_0

    const-string v0, "BILL"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Le/a/c/v/h/e$a;->c:Le/a/c/v/h/e$a;

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown category"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic u3(Le/a/c/r/h/b;Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 1
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Le/a/c/r/h/b;->b(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final v(Lcom/truecaller/messaging/data/types/Message;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Message;->P:Lcom/truecaller/messaging/data/types/ImForwardInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    iget-object v2, v0, Lcom/truecaller/messaging/data/types/ImForwardInfo;->a:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 3
    iget-object v3, v0, Lcom/truecaller/messaging/data/types/ImForwardInfo;->b:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 4
    iget-object v0, v0, Lcom/truecaller/messaging/data/types/ImForwardInfo;->c:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo$a;

    move-result-object v4

    .line 6
    iget-object p0, p0, Lcom/truecaller/messaging/data/types/Message;->P:Lcom/truecaller/messaging/data/types/ImForwardInfo;

    if-eqz p0, :cond_0

    .line 7
    iget-object v1, p0, Lcom/truecaller/messaging/data/types/ImForwardInfo;->d:Ljava/lang/String;

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 8
    :goto_0
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9
    iget-object p0, v4, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo;

    invoke-static {p0, v1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo;->access$1000(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11
    iget-object p0, v4, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo;

    invoke-static {p0, v2}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo;->access$700(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$b;

    move-result-object p0

    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User$a;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14
    iget-object v2, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User;

    invoke-static {v2, v3}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User;->access$100(Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User;

    invoke-virtual {p0, v1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$b;->b(Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User;)Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$b;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    .line 16
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17
    iget-object v1, v4, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo;

    invoke-static {v1, p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo;->access$100(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo;Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;)V

    if-eqz v0, :cond_2

    .line 18
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$b;

    move-result-object p0

    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User$a;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 20
    iget-object v2, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User;

    invoke-static {v2, v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User;->access$100(Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User;

    invoke-virtual {p0, v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$b;->b(Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User;)Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$b;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    .line 22
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 23
    iget-object v0, v4, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo;

    invoke-static {v0, p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo;->access$400(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo;Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;)V

    .line 24
    :cond_2
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo;

    :cond_3
    return-object v1
.end method

.method public static v0(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->r:I

    const/16 v1, 0x40

    invoke-static {v0, v1}, Le/a/m0/a1$k;->o(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->s:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lw3/c/a/a/a/h;->l(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    invoke-virtual {v0}, Le/a/b0/g/a;->N()Le/a/b0/c;

    move-result-object v0

    invoke-interface {v0}, Le/a/b0/c;->b()Le/a/u3/g;

    move-result-object v0

    invoke-virtual {v0}, Le/a/u3/g;->m()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    invoke-static {v1}, Lw3/c/a/a/a/h;->l(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " ("

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v1, p0, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    invoke-static {v0}, Lw3/c/a/a/a/h;->l(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object p0, p0, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    return-object p0

    .line 7
    :cond_2
    invoke-static {p0}, Le/a/c/p/a;->J0(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final v1(Lcom/truecaller/messaging/data/types/Conversation;J)Z
    .locals 8

    const-string v0, "$this$isMuted"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->P:Lw3/b/a/b;

    const-string v1, "muted"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-wide v2, v0, Lw3/b/a/e0/e;->a:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_1

    :cond_0
    move v4, v5

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    int-to-long v6, v0

    cmp-long v0, v2, v6

    if-nez v0, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    iget-object p0, p0, Lcom/truecaller/messaging/data/types/Conversation;->P:Lw3/b/a/b;

    invoke-static {p0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-wide v0, p0, Lw3/b/a/e0/e;->a:J

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    :goto_0
    return v4
.end method

.method public static final v2(Ljava/lang/String;)Le/a/c/r/m/b;
    .locals 14

    sget-object v0, Le/a/c/r/m/b$n;->b:Le/a/c/r/m/b$n;

    sget-object v1, Le/a/c/r/m/b$q;->b:Le/a/c/r/m/b$q;

    sget-object v2, Le/a/c/r/m/b$f;->b:Le/a/c/r/m/b$f;

    sget-object v3, Le/a/c/r/m/b$b0;->b:Le/a/c/r/m/b$b0;

    sget-object v4, Le/a/c/r/m/b$u;->b:Le/a/c/r/m/b$u;

    sget-object v5, Le/a/c/r/m/b$p;->b:Le/a/c/r/m/b$p;

    sget-object v6, Le/a/c/r/m/b$r;->b:Le/a/c/r/m/b$r;

    sget-object v7, Le/a/c/r/m/b$d;->b:Le/a/c/r/m/b$d;

    sget-object v8, Le/a/c/r/m/b$m;->b:Le/a/c/r/m/b$m;

    sget-object v9, Le/a/c/r/m/b$b;->b:Le/a/c/r/m/b$b;

    sget-object v10, Le/a/c/r/m/b$l;->b:Le/a/c/r/m/b$l;

    sget-object v11, Le/a/c/r/m/b$w;->b:Le/a/c/r/m/b$w;

    const-string v12, "label"

    invoke-static {p0, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "Transaction"

    const/4 v13, 0x1

    .line 1
    invoke-static {p0, v12, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_0

    :goto_0
    move-object v0, v11

    goto/16 :goto_b

    :cond_0
    const-string v12, "Loan"

    .line 2
    invoke-static {p0, v12, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_1

    :goto_1
    move-object v0, v10

    goto/16 :goto_b

    :cond_1
    const-string v12, "Travel"

    .line 3
    invoke-static {p0, v12, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_2

    sget-object v0, Le/a/c/r/m/b$x;->b:Le/a/c/r/m/b$x;

    goto/16 :goto_b

    :cond_2
    const-string v12, "Flight"

    .line 4
    invoke-static {p0, v12, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_3

    sget-object v0, Le/a/c/r/m/b$i;->b:Le/a/c/r/m/b$i;

    goto/16 :goto_b

    :cond_3
    const-string v12, "Train"

    .line 5
    invoke-static {p0, v12, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_4

    sget-object v0, Le/a/c/r/m/b$v;->b:Le/a/c/r/m/b$v;

    goto/16 :goto_b

    :cond_4
    const-string v12, "Bus"

    .line 6
    invoke-static {p0, v12, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_5

    sget-object v0, Le/a/c/r/m/b$e;->b:Le/a/c/r/m/b$e;

    goto/16 :goto_b

    :cond_5
    const-string v12, "Event"

    .line 7
    invoke-static {p0, v12, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_6

    sget-object v0, Le/a/c/r/m/b$h;->b:Le/a/c/r/m/b$h;

    goto/16 :goto_b

    :cond_6
    const-string v12, "Bill"

    .line 8
    invoke-static {p0, v12, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_7

    :goto_2
    move-object v0, v7

    goto/16 :goto_b

    :cond_7
    const-string v12, "Recharge"

    .line 9
    invoke-static {p0, v12, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_8

    :goto_3
    move-object v0, v6

    goto/16 :goto_b

    :cond_8
    const-string v12, "Appointment"

    .line 10
    invoke-static {p0, v12, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_9

    sget-object v0, Le/a/c/r/m/b$a;->b:Le/a/c/r/m/b$a;

    goto/16 :goto_b

    :cond_9
    const-string v12, "Delivery"

    .line 11
    invoke-static {p0, v12, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_a

    sget-object v0, Le/a/c/r/m/b$g;->b:Le/a/c/r/m/b$g;

    goto/16 :goto_b

    :cond_a
    const-string v12, "Prescription"

    .line 12
    invoke-static {p0, v12, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_b

    :goto_4
    move-object v0, v5

    goto/16 :goto_b

    :cond_b
    const-string v12, "School"

    .line 13
    invoke-static {p0, v12, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_c

    sget-object v0, Le/a/c/r/m/b$s;->b:Le/a/c/r/m/b$s;

    goto/16 :goto_b

    :cond_c
    const-string v12, "Tax"

    .line 14
    invoke-static {p0, v12, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_d

    :goto_5
    move-object v0, v4

    goto/16 :goto_b

    :cond_d
    const-string v12, "Vaccine"

    .line 15
    invoke-static {p0, v12, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_e

    sget-object v0, Le/a/c/r/m/b$z;->b:Le/a/c/r/m/b$z;

    goto/16 :goto_b

    :cond_e
    const-string v12, "Weather alert"

    .line 16
    invoke-static {p0, v12, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_f

    :goto_6
    move-object v0, v3

    goto/16 :goto_b

    :cond_f
    const-string v12, "Balance"

    .line 17
    invoke-static {p0, v12, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_10

    :goto_7
    move-object v0, v9

    goto/16 :goto_b

    :cond_10
    const-string v12, "Investments"

    .line 18
    invoke-static {p0, v12, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_11

    sget-object v0, Le/a/c/r/m/b$k;->b:Le/a/c/r/m/b$k;

    goto/16 :goto_b

    :cond_11
    const-string v12, "Data usage"

    .line 19
    invoke-static {p0, v12, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_12

    :goto_8
    move-object v0, v2

    goto/16 :goto_b

    :cond_12
    const-string v12, "Security alert"

    .line 20
    invoke-static {p0, v12, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_13

    sget-object v0, Le/a/c/r/m/b$t;->b:Le/a/c/r/m/b$t;

    goto/16 :goto_b

    :cond_13
    const-string v12, "Missed call"

    .line 21
    invoke-static {p0, v12, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_14

    :goto_9
    move-object v0, v8

    goto/16 :goto_b

    :cond_14
    const-string v12, "Voice mail"

    .line 22
    invoke-static {p0, v12, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_15

    sget-object v0, Le/a/c/r/m/b$a0;->b:Le/a/c/r/m/b$a0;

    goto/16 :goto_b

    :cond_15
    const-string v12, "Betting"

    .line 23
    invoke-static {p0, v12, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_16

    sget-object v0, Le/a/c/r/m/b$c;->b:Le/a/c/r/m/b$c;

    goto/16 :goto_b

    :cond_16
    const-string v12, "Promotion"

    .line 24
    invoke-static {p0, v12, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_17

    :goto_a
    move-object v0, v1

    goto/16 :goto_b

    :cond_17
    const-string v12, "Cheque status"

    .line 25
    invoke-static {p0, v12, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_18

    goto/16 :goto_0

    :cond_18
    const-string v12, "Transaction declined"

    .line 26
    invoke-static {p0, v12, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_19

    goto/16 :goto_0

    :cond_19
    const-string v12, "Loan update"

    .line 27
    invoke-static {p0, v12, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_1a

    goto/16 :goto_1

    :cond_1a
    const-string v12, "Finance"

    .line 28
    invoke-static {p0, v12, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const-string v12, "Transfer"

    .line 29
    invoke-static {p0, v12, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const-string v12, "Cab"

    .line 30
    invoke-static {p0, v12, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_1d

    goto/16 :goto_b

    :cond_1d
    const-string v12, "Weather"

    .line 31
    invoke-static {p0, v12, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_1e

    goto/16 :goto_6

    :cond_1e
    const-string v3, "NON IMPORTANT"

    .line 32
    invoke-static {p0, v3, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1f

    goto/16 :goto_b

    :cond_1f
    const-string v0, "Payment reminder"

    .line 33
    invoke-static {p0, v0, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_20

    goto/16 :goto_2

    :cond_20
    const-string v0, "Mobile recharge"

    .line 34
    invoke-static {p0, v0, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_21

    goto/16 :goto_3

    :cond_21
    const-string v0, "Rx"

    .line 35
    invoke-static {p0, v0, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_22

    goto/16 :goto_4

    :cond_22
    const-string v0, "Tax returns"

    .line 36
    invoke-static {p0, v0, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_23

    goto/16 :goto_5

    :cond_23
    const-string v0, "Payment successful"

    .line 37
    invoke-static {p0, v0, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_24

    goto/16 :goto_0

    :cond_24
    const-string v0, "Mobile balance"

    .line 38
    invoke-static {p0, v0, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_25

    goto/16 :goto_7

    :cond_25
    const-string v0, "Mobile data"

    .line 39
    invoke-static {p0, v0, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_26

    goto/16 :goto_8

    :cond_26
    const-string v0, "Call notification"

    .line 40
    invoke-static {p0, v0, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_27

    goto/16 :goto_9

    :cond_27
    const-string v0, "Low balance"

    .line 41
    invoke-static {p0, v0, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_28

    goto/16 :goto_7

    :cond_28
    const-string v0, "Missed calls"

    .line 42
    invoke-static {p0, v0, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_29

    goto/16 :goto_9

    :cond_29
    const-string v0, "Offers"

    .line 43
    invoke-static {p0, v0, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto/16 :goto_a

    :cond_2a
    const-string v0, "Transaction successful"

    .line 44
    invoke-static {p0, v0, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto/16 :goto_0

    :cond_2b
    const-string v0, "Transaction pending"

    .line 45
    invoke-static {p0, v0, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto/16 :goto_0

    :cond_2c
    const-string v0, "Transaction processing"

    .line 46
    invoke-static {p0, v0, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto/16 :goto_0

    :cond_2d
    const-string v0, "Payment received"

    .line 47
    invoke-static {p0, v0, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2e

    goto/16 :goto_0

    :cond_2e
    const-string v0, "Loan approved"

    .line 48
    invoke-static {p0, v0, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2f

    goto/16 :goto_1

    :cond_2f
    const-string v0, "Loan due"

    .line 49
    invoke-static {p0, v0, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_30

    goto/16 :goto_1

    :cond_30
    const-string v0, "Loan overdue"

    .line 50
    invoke-static {p0, v0, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_31

    goto/16 :goto_1

    :cond_31
    const-string v0, "Loan closed"

    .line 51
    invoke-static {p0, v0, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_32

    goto/16 :goto_1

    :cond_32
    const-string v0, "Beneficiary credited"

    .line 52
    invoke-static {p0, v0, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_33

    goto/16 :goto_0

    .line 53
    :cond_33
    sget-object v0, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    new-instance v1, Le/a/c/r/m/a;

    invoke-direct {v1, p0}, Le/a/c/r/m/a;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 54
    invoke-virtual {v0, v1, v2}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 55
    new-instance v0, Le/a/c/r/m/b$y;

    invoke-direct {v0, p0}, Le/a/c/r/m/b$y;-><init>(Ljava/lang/String;)V

    :goto_b
    return-object v0
.end method

.method public static synthetic v3(Le/a/a/k/a/a/i;Ljava/lang/String;JIJLjava/lang/Integer;ILjava/lang/Object;)Z
    .locals 9

    and-int/lit8 v0, p8, 0x10

    const/4 v8, 0x0

    .line 1
    move-object v1, p0

    check-cast v1, Le/a/a/k/a/a/k;

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v8}, Le/a/a/k/a/a/k;->c(Ljava/lang/String;JIJLjava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public static final w(Lcom/truecaller/messaging/data/types/Mention;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;
    .locals 4

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$a;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$Mention;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$Mention$a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/truecaller/messaging/data/types/Mention;->getImId()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v3, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v3, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$Mention;

    invoke-static {v3, v2}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$Mention;->access$17800(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$Mention;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$Mention;

    .line 6
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7
    iget-object v2, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    invoke-static {v2, v1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;->access$18800(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$Mention;)V

    .line 8
    invoke-virtual {p0}, Lcom/truecaller/messaging/data/types/Mention;->getOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$a;->b(I)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$a;

    .line 9
    invoke-virtual {p0}, Lcom/truecaller/messaging/data/types/Mention;->getLength()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$a;->a(I)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$a;

    .line 10
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    const-string v0, "InputMessageContent.Mess\u2026(length)\n        .build()"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity;

    return-object p0
.end method

.method public static final w0(Ljava/util/Collection;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Le/a/c/w/o0/k/e;",
            ">;)",
            "Ljava/util/Set<",
            "Le/a/c/w/o0/k/e$b;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$getGrammars"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Le/a/c/w/o0/k/e$b;

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {v0}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final w1(Lcom/truecaller/messaging/data/types/ImGroupInfo;)Z
    .locals 2

    const-string v0, "$this$isMuted"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p0, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->h:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static final w2(Lq3/a/n;Le/a/l/n2/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/n<",
            "-",
            "Le/a/l/n2/j;",
            ">;",
            "Le/a/l/n2/j;",
            ")V"
        }
    .end annotation

    const-string v0, "$this$resumeIfActive"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lq3/a/n;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0, p1}, Ls1/w/d;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static w3(Ljava/util/List;Lcom/truecaller/messaging/data/types/Message;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/truecaller/messaging/data/types/Message;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Message;->g()Z

    move-result v0

    const-string v1, "Can update only already stored messages"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    .line 2
    iget-wide v0, p1, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 3
    invoke-static {v0, v1}, Le/a/b0/q/g0;->A(J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 4
    iget v1, p1, Lcom/truecaller/messaging/data/types/Message;->k:I

    packed-switch v1, :pswitch_data_0

    .line 5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p2, "Unsupported transport for message: "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p1, p1, Lcom/truecaller/messaging/data/types/Message;->k:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :pswitch_0
    iget-object v1, p1, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 7
    check-cast v1, Lcom/truecaller/messaging/transport/status/StatusTransportInfo;

    .line 8
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 9
    iget-object v1, v1, Lcom/truecaller/messaging/transport/status/StatusTransportInfo;->b:Ljava/lang/String;

    const-string v3, "raw_id"

    .line 10
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 12
    :pswitch_1
    iget-object v1, p1, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 13
    check-cast v1, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;

    .line 14
    invoke-static {v1}, Le/a/c/p/a;->O0(Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 15
    :pswitch_2
    iget-object v1, p1, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 16
    check-cast v1, Lcom/truecaller/messaging/transport/im/ImTransportInfo;

    .line 17
    invoke-static {v1}, Le/a/c/p/a;->P0(Lcom/truecaller/messaging/transport/im/ImTransportInfo;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 18
    :pswitch_3
    iget-object v1, p1, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 19
    check-cast v1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    .line 20
    invoke-static {v1}, Le/a/c/p/a;->Q0(Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 21
    :pswitch_4
    iget-object v1, p1, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 22
    check-cast v1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;

    .line 23
    invoke-static {v1}, Le/a/c/p/a;->R0(Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 24
    :goto_0
    :pswitch_5
    iget-boolean v1, p1, Lcom/truecaller/messaging/data/types/Message;->i:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "read"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 25
    iget-boolean v1, p1, Lcom/truecaller/messaging/data/types/Message;->h:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "seen"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 26
    iget-boolean v1, p1, Lcom/truecaller/messaging/data/types/Message;->j:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "locked"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 27
    iget v1, p1, Lcom/truecaller/messaging/data/types/Message;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 28
    iget-object v1, p1, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    .line 29
    iget-wide v1, v1, Lw3/b/a/e0/e;->a:J

    .line 30
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 31
    iget-object v1, p1, Lcom/truecaller/messaging/data/types/Message;->d:Lw3/b/a/b;

    .line 32
    iget-wide v1, v1, Lw3/b/a/e0/e;->a:J

    .line 33
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "date_sent"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 34
    iget v1, p1, Lcom/truecaller/messaging/data/types/Message;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "transport"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 35
    iget p1, p1, Lcom/truecaller/messaging/data/types/Message;->w:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "retry_count"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    if-ltz p2, :cond_0

    const-string p1, "conversation_id"

    .line 36
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 37
    :cond_0
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public static final x(Lcom/truecaller/api/services/messenger/v1/events/Event;)Lcom/truecaller/api/services/messenger/v1/models/Peer$TypeCase;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getPayloadCase()Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :goto_0
    const/4 p0, 0x0

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getReactionSent()Lcom/truecaller/api/services/messenger/v1/events/Event$ReactionSent;

    move-result-object p0

    const-string v0, "reactionSent"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$ReactionSent;->getRecipient()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object p0

    const-string v0, "reactionSent.recipient"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getTypeCase()Lcom/truecaller/api/services/messenger/v1/models/Peer$TypeCase;

    move-result-object p0

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getMessageSent()Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;

    move-result-object p0

    const-string v0, "messageSent"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;->getRecipient()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object p0

    const-string v0, "messageSent.recipient"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getTypeCase()Lcom/truecaller/api/services/messenger/v1/models/Peer$TypeCase;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static final x0(Lcom/truecaller/api/services/messenger/v1/models/Peer;)Ljava/lang/String;
    .locals 3

    const-string v0, "$this$getGroupId"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getTypeCase()Lcom/truecaller/api/services/messenger/v1/models/Peer$TypeCase;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, v2, :cond_1

    :goto_0
    move-object p0, v1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getGroup()Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;

    move-result-object p0

    const-string v0, "group"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;->getId()Ljava/lang/String;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_3

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v2

    :goto_3
    xor-int/2addr v0, v2

    if-eqz v0, :cond_4

    move-object v1, p0

    :cond_4
    return-object v1
.end method

.method public static final x1(Lcom/truecaller/messaging/data/types/Message;)Z
    .locals 1

    const-string v0, "$this$isOutgoing"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p0, p0, Lcom/truecaller/messaging/data/types/Message;->g:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final x2(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/16 v1, 0x7c

    const/4 v2, 0x0

    aput-char v1, v0, v2

    const/4 v1, 0x6

    .line 1
    invoke-static {p0, v0, v2, v2, v1}, Ls1/f0/v;->T(Ljava/lang/CharSequence;[CZII)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Ls1/u/s;->a:Ls1/u/s;

    :goto_0
    return-object p0
.end method

.method public static synthetic x3(Le/a/i4/e;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/app/PendingIntent;
    .locals 0

    and-int/lit8 p3, p4, 0x4

    if-eqz p3, :cond_0

    const-string p3, "Opened"

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 1
    :goto_0
    invoke-interface {p0, p1, p2, p3}, Le/a/i4/e;->h(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static final y(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    const-string v0, "$this$addAnalyticsParams"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsPeer"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsUnreadPeriod"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics_peer"

    .line 1
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "analytics_unread_period"

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public static final y0(Lw3/b/a/p;)Ljava/lang/String;
    .locals 4

    const-string v0, "$this$getHumanReadableDate"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/truecaller/insights/utils/DateFormat;->d:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual {v1}, Lcom/truecaller/insights/utils/DateFormat;->formatter()Lw3/b/a/i0/b;

    move-result-object v1

    invoke-virtual {v1, p0}, Lw3/b/a/i0/b;->g(Lw3/b/a/b0;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v1, p0, Lw3/b/a/p;->b:Lw3/b/a/a;

    .line 3
    invoke-virtual {v1}, Lw3/b/a/a;->g()Lw3/b/a/c;

    move-result-object v1

    .line 4
    iget-wide v2, p0, Lw3/b/a/p;->a:J

    .line 5
    invoke-virtual {v1, v2, v3}, Lw3/b/a/c;->c(J)I

    move-result v1

    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    rem-int/lit8 v1, v1, 0xa

    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const-string v1, "th"

    goto :goto_1

    :cond_1
    const-string v1, "rd"

    goto :goto_1

    :cond_2
    const-string v1, "nd"

    goto :goto_1

    :cond_3
    const-string v1, "st"

    .line 7
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/truecaller/insights/utils/DateFormat;->MMM:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual {v1}, Lcom/truecaller/insights/utils/DateFormat;->formatter()Lw3/b/a/i0/b;

    move-result-object v1

    invoke-virtual {v1, p0}, Lw3/b/a/i0/b;->g(Lw3/b/a/b0;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final y1(Lw3/b/a/p;)Z
    .locals 1

    const-string v0, "$this$isPastDay"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lw3/b/a/p;->h()Lw3/b/a/p;

    move-result-object v0

    invoke-static {v0, p0}, Lw3/b/a/h;->r(Lw3/b/a/b0;Lw3/b/a/b0;)Lw3/b/a/h;

    move-result-object p0

    const-string v0, "Days.daysBetween(LocalDate.now(), this)"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget p0, p0, Lw3/b/a/e0/i;->a:I

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic y2(Le/a/a/c1/d;Le/a/a/c1/b$e;ZLjava/lang/String;JILjava/lang/Object;)Le/a/r2/x;
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const-wide/16 p4, 0x0

    :cond_0
    move-wide v4, p4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 1
    invoke-interface/range {v0 .. v5}, Le/a/a/c1/d;->b(Le/a/a/c1/b$e;ZLjava/lang/String;J)Le/a/r2/x;

    move-result-object p0

    return-object p0
.end method

.method public static final z(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    const-string v0, "$this$addNotificationParams"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "peer"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xbe30

    const-string v2, "tc_notification_id"

    if-eq v0, v1, :cond_1

    const v1, 0x5e0f67f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "group"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f0a0985

    invoke-virtual {p0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v0, "121"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f0a0986

    invoke-virtual {p0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static final z0(Le/a/c/a/p/c/c;)Ljava/lang/String;
    .locals 5

    const-string v0, "$this$getHumanReadableDateTime"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Le/a/c/a/p/c/c;->a()Lw3/b/a/b;

    move-result-object p0

    .line 2
    new-instance v0, Lw3/b/a/b;

    invoke-direct {v0}, Lw3/b/a/b;-><init>()V

    .line 3
    sget-object v1, Lcom/truecaller/insights/utils/DateFormat;->MMMM:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual {v1}, Lcom/truecaller/insights/utils/DateFormat;->formatter()Lw3/b/a/i0/b;

    move-result-object v1

    invoke-virtual {v1, p0}, Lw3/b/a/i0/b;->f(Lw3/b/a/z;)Ljava/lang/String;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/truecaller/insights/utils/DateFormat;->MMMM_yyyy:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual {v2}, Lcom/truecaller/insights/utils/DateFormat;->formatter()Lw3/b/a/i0/b;

    move-result-object v2

    invoke-virtual {v2, p0}, Lw3/b/a/i0/b;->f(Lw3/b/a/z;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lw3/b/a/b;->Q()Lw3/b/a/b$a;

    move-result-object v3

    invoke-virtual {v0}, Lw3/b/a/b;->Q()Lw3/b/a/b$a;

    move-result-object v4

    invoke-static {v3, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {p0}, Lw3/b/a/b;->A()Lw3/b/a/b$a;

    move-result-object v3

    invoke-virtual {v0}, Lw3/b/a/b;->A()Lw3/b/a/b$a;

    move-result-object v4

    invoke-static {v3, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p0, "THIS MONTH - "

    invoke-static {p0, v1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lw3/b/a/b;->Q()Lw3/b/a/b$a;

    move-result-object p0

    invoke-virtual {v0}, Lw3/b/a/b;->Q()Lw3/b/a/b$a;

    move-result-object v0

    invoke-static {p0, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "justMonth"

    invoke-static {v1, p0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "monthYear"

    .line 8
    invoke-static {v2, p0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    return-object v1
.end method

.method public static final z1(Lcom/truecaller/messaging/data/types/Message;)Z
    .locals 6

    const-string v0, "$this$isRichText"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    const-string v0, "entities"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_1

    aget-object v4, p0, v2

    .line 3
    invoke-virtual {v4}, Lcom/truecaller/messaging/data/types/Entity;->r()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v3

    .line 4
    :goto_1
    instance-of p0, v4, Lcom/truecaller/messaging/data/types/TextEntity;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    move-object v3, v4

    :goto_2
    check-cast v3, Lcom/truecaller/messaging/data/types/TextEntity;

    const/4 p0, 0x1

    if-eqz v3, :cond_3

    .line 5
    iget-boolean v0, v3, Lcom/truecaller/messaging/data/types/TextEntity;->j:Z

    if-ne v0, p0, :cond_3

    move v1, p0

    :cond_3
    return v1
.end method

.method public static final z2(Ljava/util/List;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "$this$secondOrNull"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
