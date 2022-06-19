.class public final Le/a/d/y/b/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;


# direct methods
.method public constructor <init>(Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;)V
    .locals 0

    iput-object p1, p0, Le/a/d/y/b/j;->a:Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/d/y/b/j;->a:Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;

    invoke-virtual {p1}, Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;->getPresenter()Le/a/d/y/b/b;

    move-result-object p1

    check-cast p1, Le/a/d/y/b/h;

    .line 2
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/y/b/c;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Le/a/d/y/b/c;->getServiceType()Lcom/truecaller/voip/notification/inapp/ServiceType;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4
    iget-object p1, p1, Le/a/d/y/b/h;->g:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d/f;

    invoke-interface {p1}, Le/a/d/f;->p()V

    goto :goto_0

    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 5
    :cond_1
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/y/b/c;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Le/a/d/y/b/c;->g0()V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/y/b/c;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Le/a/d/y/b/c;->l0()V

    :cond_3
    :goto_0
    return-void
.end method
