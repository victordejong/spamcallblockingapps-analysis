.class public Le/a/e/j1;
.super Le/a/e/x0;
.source "SourceFile"


# instance fields
.field public e:Landroid/widget/Button;

.field public f:Landroid/widget/Button;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/ImageView;

.field public j:Landroid/widget/TextView;

.field public k:Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

.field public final l:Landroid/view/View$OnClickListener;

.field public final m:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/a/e/x0;-><init>()V

    .line 2
    new-instance v0, Le/a/e/j1$a;

    invoke-direct {v0, p0}, Le/a/e/j1$a;-><init>(Le/a/e/j1;)V

    iput-object v0, p0, Le/a/e/j1;->l:Landroid/view/View$OnClickListener;

    .line 3
    new-instance v0, Le/a/e/j1$b;

    invoke-direct {v0, p0}, Le/a/e/j1$b;-><init>(Le/a/e/j1;)V

    iput-object v0, p0, Le/a/e/j1;->m:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static WA(Le/a/e/j1;ZJ)V
    .locals 7

    const-wide/16 v0, 0x1

    cmp-long p2, p2, v0

    const/4 p3, 0x1

    if-nez p2, :cond_2

    .line 1
    iget-object p2, p0, Le/a/e/j1;->k:Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;->DENIED:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;->ACCEPTED:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

    :goto_0
    const/4 v1, 0x0

    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v2, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem;

    invoke-direct {v2}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem;-><init>()V

    .line 6
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem;->a:Ljava/lang/Long;

    .line 7
    iput-object v0, v2, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem;->b:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

    .line 8
    iput-object v1, v2, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem;->c:Ljava/lang/String;

    .line 9
    iget-object p2, p2, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->m:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance p2, Le/a/j4/b/a/f;

    .line 11
    sget-boolean v0, Lcom/truecaller/TrueApp;->r:Z

    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    .line 12
    invoke-direct {p2, v0}, Le/a/j4/b/a/f;-><init>(Landroid/content/Context;)V

    .line 13
    iget-object v0, p0, Le/a/e/j1;->k:Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Le/a/j4/b/a/i;->g(Ljava/util/Collection;)V

    .line 14
    invoke-virtual {p0}, Le/a/e/x0;->SA()Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p1, :cond_1

    const p1, 0x7f120406

    goto :goto_1

    :cond_1
    const p1, 0x7f12040b

    :goto_1
    new-array p2, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 15
    iget-object v1, p0, Le/a/e/j1;->k:Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    invoke-virtual {v1}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->m()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    .line 16
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/e/x0;->We(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Le/a/e/j1;->YA()V

    .line 18
    invoke-virtual {p0}, Le/a/e/j1;->XA()V

    .line 19
    invoke-virtual {p0, p3}, Le/a/e/j1;->V(Z)V

    goto :goto_2

    .line 20
    :cond_2
    invoke-virtual {p0, p3}, Le/a/e/j1;->V(Z)V

    const p1, 0x7f12027d

    .line 21
    invoke-virtual {p0, p1}, Le/a/e/x0;->TA(I)V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public final V(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/e/x0;->SA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/e/j1;->e:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Le/a/e/j1;->f:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final XA()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/e/j1;->k:Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    invoke-virtual {v0}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->q()Lcom/truecaller/network/notification/NotificationType;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/truecaller/network/notification/NotificationType;->CONTACT_REQUEST:Lcom/truecaller/network/notification/NotificationType;

    const v2, 0x7f12040f

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 3
    iget-object v0, p0, Le/a/e/j1;->g:Landroid/widget/TextView;

    iget-object v1, p0, Le/a/e/j1;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Le/a/e/j1;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Le/a/e/j1;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Le/a/e/j1;->k:Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    iget-object v0, v0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 6
    iget-object v1, p0, Le/a/e/j1;->e:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Le/a/e/j1;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1, v2, v4}, Le/a/e/j1;->ZA(Landroid/widget/Button;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v1, p0, Le/a/e/j1;->f:Landroid/widget/Button;

    invoke-virtual {p0, v1, v3, v3}, Le/a/e/j1;->ZA(Landroid/widget/Button;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v1, p0, Le/a/e/j1;->k:Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    iget-object v1, v1, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->m:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem;

    iget-object v0, v0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem;->b:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

    .line 9
    sget-object v1, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;->ACCEPTED:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

    if-ne v0, v1, :cond_0

    .line 10
    iget-object v0, p0, Le/a/e/j1;->h:Landroid/widget/TextView;

    const v1, 0x7f12040c

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 11
    :cond_0
    sget-object v1, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;->DENIED:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

    if-ne v0, v1, :cond_4

    .line 12
    iget-object v0, p0, Le/a/e/j1;->h:Landroid/widget/TextView;

    const v1, 0x7f120407

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 13
    :cond_1
    iget-object v0, p0, Le/a/e/j1;->e:Landroid/widget/Button;

    const v1, 0x7f12014d

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Le/a/e/j1;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v1, v2}, Le/a/e/j1;->ZA(Landroid/widget/Button;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object v0, p0, Le/a/e/j1;->f:Landroid/widget/Button;

    const v1, 0x7f12014f

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Le/a/e/j1;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v1, v2}, Le/a/e/j1;->ZA(Landroid/widget/Button;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 16
    :pswitch_0
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_1
    const v0, 0x7f12040e

    .line 17
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_2
    const v0, 0x7f120409

    .line 18
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_3
    const v0, 0x7f12040a

    .line 19
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 20
    :cond_3
    :pswitch_4
    iget-object v0, p0, Le/a/e/j1;->k:Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    const-string v1, "bbt"

    .line 21
    invoke-virtual {v0, v1}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 22
    :goto_0
    iget-object v0, p0, Le/a/e/j1;->e:Landroid/widget/Button;

    iget-object v1, p0, Le/a/e/j1;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v3, v1}, Le/a/e/j1;->ZA(Landroid/widget/Button;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public final YA()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/e/j1;->k:Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->u(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Le/a/e/j1;->g:Landroid/widget/TextView;

    iget-object v1, p0, Le/a/e/j1;->k:Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    .line 3
    iget-object v1, v1, Le/a/e/c2/i0;->h:Ljava/lang/CharSequence;

    .line 4
    invoke-static {v0, v1}, Le/a/o5/j0;->t(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Le/a/e/j1;->h:Landroid/widget/TextView;

    iget-object v1, p0, Le/a/e/j1;->k:Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    .line 6
    iget-object v1, v1, Le/a/e/c2/i0;->i:Ljava/lang/CharSequence;

    .line 7
    invoke-static {v0, v1}, Le/a/o5/j0;->t(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Le/a/e/j1;->k:Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    invoke-virtual {v0}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->p()Ljava/lang/Long;

    move-result-object v0

    .line 9
    iget-object v1, p0, Le/a/e/j1;->j:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object v1, p0, Le/a/e/j1;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Le/a/b0/q/m;->k(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Le/a/e/j1;->k:Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    invoke-virtual {v0}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->r()I

    move-result v0

    .line 12
    iget-object v1, p0, Le/a/e/j1;->k:Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    invoke-virtual {v1}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lw3/c/a/a/a/h;->m(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    invoke-static {p0}, Le/a/m0/a1$k;->M1(Landroidx/fragment/app/Fragment;)Le/a/z3/e;

    move-result-object v1

    iget-object v2, p0, Le/a/e/j1;->k:Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    .line 14
    invoke-virtual {v2}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/a/z3/e;->B(Ljava/lang/String;)Le/a/z3/d;

    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Le/a/z3/d;->h0(I)Le/a/z3/d;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Le/a/z3/d;->d0()Le/a/z3/d;

    move-result-object v0

    iget-object v1, p0, Le/a/e/j1;->i:Landroid/widget/ImageView;

    .line 17
    invoke-virtual {v0, v1}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, p0, Le/a/e/j1;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public final ZA(Landroid/widget/Button;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d04eb

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Le/a/e/x0;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v0, "arg_notification"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 4
    :try_start_0
    new-instance p2, Le/m/e/g0/a;

    invoke-direct {p2, v0}, Le/m/e/g0/a;-><init>(Ljava/io/Reader;)V

    .line 5
    invoke-static {p2}, Le/m/e/v;->a(Le/m/e/g0/a;)Le/m/e/q;

    move-result-object v0

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    instance-of v1, v0, Le/m/e/s;

    if-nez v1, :cond_1

    .line 8
    invoke-virtual {p2}, Le/m/e/g0/a;->D0()Le/m/e/g0/b;

    move-result-object p2

    sget-object v1, Le/m/e/g0/b;->j:Le/m/e/g0/b;

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Le/m/e/z;

    const-string p2, "Did not consume the entire document."

    invoke-direct {p1, p2}, Le/m/e/z;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Le/m/e/g0/d; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {v0}, Le/m/e/q;->d()Le/m/e/t;

    move-result-object p2

    .line 11
    :try_start_1
    new-instance v0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    invoke-direct {v0, p2}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;-><init>(Le/m/e/t;)V

    iput-object v0, p0, Le/a/e/j1;->k:Lcom/truecaller/notifications/internal/InternalTruecallerNotification;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const p2, 0x7f0a0750

    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Le/a/e/j1;->e:Landroid/widget/Button;

    const p2, 0x7f0a074f

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Le/a/e/j1;->f:Landroid/widget/Button;

    const p2, 0x7f0a0b22

    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Le/a/e/j1;->g:Landroid/widget/TextView;

    const p2, 0x7f0a0b1e

    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Le/a/e/j1;->h:Landroid/widget/TextView;

    const p2, 0x7f0a0b1f

    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Le/a/e/j1;->i:Landroid/widget/ImageView;

    const p2, 0x7f0a0b21

    .line 17
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Le/a/e/j1;->j:Landroid/widget/TextView;

    .line 18
    iget-object p1, p0, Le/a/e/j1;->h:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07030d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 19
    iget-object p1, p0, Le/a/e/j1;->k:Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    invoke-virtual {p1}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->m()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lw3/c/a/a/a/h;->m(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    check-cast p1, Le/a/e/w0;

    invoke-virtual {p1}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object p1

    .line 21
    iget-object p2, p0, Le/a/e/j1;->k:Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    invoke-virtual {p2}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->m()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ln3/b/a/a;->y(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 22
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    check-cast p1, Le/a/e/w0;

    invoke-virtual {p1}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object p1

    const p2, 0x7f120774

    .line 23
    invoke-virtual {p1, p2}, Ln3/b/a/a;->x(I)V

    .line 24
    :goto_1
    invoke-virtual {p0}, Le/a/e/j1;->YA()V

    .line 25
    invoke-virtual {p0}, Le/a/e/j1;->XA()V

    return-void

    .line 26
    :catch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :catch_1
    move-exception p1

    .line 27
    new-instance p2, Le/m/e/z;

    invoke-direct {p2, p1}, Le/m/e/z;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 28
    new-instance p2, Le/m/e/r;

    invoke-direct {p2, p1}, Le/m/e/r;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    .line 29
    new-instance p2, Le/m/e/z;

    invoke-direct {p2, p1}, Le/m/e/z;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
