.class public Lcom/freshchat/consumer/sdk/m/f;
.super Lcom/freshchat/consumer/sdk/m/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/m/f$a;
    }
.end annotation


# instance fields
.field private calendarMessageMeta:Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;

.field private oY:Ljava/lang/String;

.field private oZ:Landroid/widget/TextView;

.field private pa:Lcom/freshchat/consumer/sdk/m/f$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/m/y;-><init>()V

    return-void
.end method

.method public static a(ILcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/m/f;
    .locals 3

    new-instance v0, Lcom/freshchat/consumer/sdk/m/f;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/m/f;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "Orientation"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "MessageMeta"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "AgentProfilePicUrl"

    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/m/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/m/f;->hN()V

    return-void
.end method

.method private g(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_calendar_dialog_duration_textview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/m/f;->oZ:Landroid/widget/TextView;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_calendar_cancel_invite_imageview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v0, Lcom/freshchat/consumer/sdk/m/g;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/m/g;-><init>(Lcom/freshchat/consumer/sdk/m/f;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private hN()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->m(Landroid/content/Context;)Ln3/b/a/g$a;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_calendar_cancel_booking_prompt_message:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1
    iget-object v2, v0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v1, v2, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    .line 2
    sget v1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_calendar_cancel_booking_prompt_cancel:I

    new-instance v2, Lcom/freshchat/consumer/sdk/m/h;

    invoke-direct {v2, p0}, Lcom/freshchat/consumer/sdk/m/h;-><init>(Lcom/freshchat/consumer/sdk/m/f;)V

    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    sget v1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_calendar_cancel_booking_prompt_continue:I

    new-instance v2, Lcom/freshchat/consumer/sdk/m/i;

    invoke-direct {v2, p0}, Lcom/freshchat/consumer/sdk/m/i;-><init>(Lcom/freshchat/consumer/sdk/m/f;)V

    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    invoke-virtual {v0}, Ln3/b/a/g$a;->a()Ln3/b/a/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private hO()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "Calendar"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->K(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/freshchat/consumer/sdk/m/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;I)V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/m/f;->pa:Lcom/freshchat/consumer/sdk/m/f$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/m/f;->calendarMessageMeta:Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;

    invoke-interface {v0, v1, p1, p2}, Lcom/freshchat/consumer/sdk/m/f$a;->b(Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;I)V

    :cond_0
    invoke-virtual {p0}, Le/m/a/g/e/e;->dismiss()V

    return-void
.end method

.method public a(Lcom/freshchat/consumer/sdk/m/a$a;Landroid/os/Bundle;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/m/a$a;->hE()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/m/a;

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    .line 1
    new-instance v0, Ln3/r/a/a;

    invoke-direct {v0, p2}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 2
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/m/f;->hO()Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "Calendar"

    if-eqz p2, :cond_1

    :try_start_1
    sget p2, Lcom/freshchat/consumer/sdk/R$anim;->freshchat_slide_in_right:I

    sget v2, Lcom/freshchat/consumer/sdk/R$anim;->freshchat_slide_out_left:I

    invoke-virtual {v0, p2, v2}, Ln3/r/a/f0;->n(II)Ln3/r/a/f0;

    sget p2, Lcom/freshchat/consumer/sdk/R$id;->freshchat_calendar_child_fragment_container:I

    invoke-virtual {v0, p2, p1, v1}, Ln3/r/a/f0;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ln3/r/a/f0;->e(Ljava/lang/String;)Ln3/r/a/f0;

    goto :goto_0

    :cond_1
    sget p2, Lcom/freshchat/consumer/sdk/R$id;->freshchat_calendar_child_fragment_container:I

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, p2, p1, v1, v2}, Ln3/r/a/a;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 4
    :goto_0
    invoke-virtual {v0}, Ln3/r/a/a;->f()I
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    :goto_1
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public bo(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/m/f;->oZ:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/m/f;->oZ:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public getCalendarMessageMeta()Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/m/f;->calendarMessageMeta:Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;

    return-object v0
.end method

.method public hK()V
    .locals 3

    const-string v0, "Orientation"

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/m/y;->setOrientation(I)V

    :cond_0
    const-string v0, "MessageMeta"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/m/f;->calendarMessageMeta:Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;

    const-string v0, "AgentProfilePicUrl"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/m/f;->oY:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Le/m/a/g/e/e;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public hL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/m/f;->oY:Ljava/lang/String;

    return-object v0
.end method

.method public hM()V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/m/f;->pa:Lcom/freshchat/consumer/sdk/m/f$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/m/f;->calendarMessageMeta:Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;

    invoke-interface {v0, v1}, Lcom/freshchat/consumer/sdk/m/f$a;->b(Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;)V

    :cond_0
    invoke-virtual {p0}, Le/m/a/g/e/e;->dismiss()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Ln3/r/a/k;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    instance-of v0, p1, Lcom/freshchat/consumer/sdk/m/f$a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/freshchat/consumer/sdk/m/f$a;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/m/f;->pa:Lcom/freshchat/consumer/sdk/m/f$a;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/freshchat/consumer/sdk/m/y;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/m/f;->hK()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    sget p3, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_fragment_calendar_bottomsheet_dialog:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Ln3/r/a/k;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/m/f;->pa:Lcom/freshchat/consumer/sdk/m/f$a;

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;Landroid/view/View;)V

    :cond_0
    invoke-super {p0, p1}, Ln3/r/a/k;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/m/f;->g(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/m/f;->hO()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/freshchat/consumer/sdk/m/a$a;->oN:Lcom/freshchat/consumer/sdk/m/a$a;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/freshchat/consumer/sdk/m/f;->a(Lcom/freshchat/consumer/sdk/m/a$a;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
