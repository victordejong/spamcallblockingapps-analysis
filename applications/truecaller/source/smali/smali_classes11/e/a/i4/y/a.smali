.class public final synthetic Le/a/i4/y/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/e/c2/t$a;


# instance fields
.field public final synthetic a:Le/a/i4/y/d;


# direct methods
.method public synthetic constructor <init>(Le/a/i4/y/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i4/y/a;->a:Le/a/i4/y/d;

    return-void
.end method


# virtual methods
.method public final a(IJ)V
    .locals 4

    iget-object p2, p0, Le/a/i4/y/a;->a:Le/a/i4/y/d;

    .line 1
    iget-object p3, p2, Le/a/i4/y/d;->f:Le/a/i4/y/e;

    .line 2
    iget-object p3, p3, Le/a/i4/y/e;->b:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/truecaller/ui/SingleActivity$FragmentSingle;->NOTIFICATION_MESSAGES:Lcom/truecaller/ui/SingleActivity$FragmentSingle;

    invoke-static {v1, v2, v0}, Lcom/truecaller/ui/SingleActivity;->va(Landroid/content/Context;Lcom/truecaller/ui/SingleActivity$FragmentSingle;Z)Landroid/content/Intent;

    move-result-object v1

    .line 5
    invoke-virtual {p3}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->a()Le/m/e/t;

    move-result-object v2

    invoke-virtual {v2}, Le/m/e/q;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "arg_notification"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p2, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 7
    :goto_0
    iget-object v1, p2, Le/a/i4/y/d;->i:Le/a/j4/b/a/f;

    .line 8
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    aput-object p3, v2, v0

    .line 9
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 10
    sget-object v2, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;->VIEWED:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;

    invoke-virtual {v1, v0, v2}, Le/a/j4/b/a/f;->p(Ljava/util/Collection;Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;)V

    .line 11
    iget-object p2, p2, Le/a/i4/y/d;->f:Le/a/i4/y/e;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(I)V

    .line 12
    invoke-virtual {p3}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->q()Lcom/truecaller/network/notification/NotificationType;

    move-result-object p1

    .line 13
    sget-object p2, Lcom/truecaller/network/notification/NotificationType;->DEFAULT_SMS_PROMO:Lcom/truecaller/network/notification/NotificationType;

    if-ne p1, p2, :cond_1

    const-string p1, "Dsan3-VisitNotification"

    .line 14
    invoke-static {p1}, Le/a/e/a2;->L(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
