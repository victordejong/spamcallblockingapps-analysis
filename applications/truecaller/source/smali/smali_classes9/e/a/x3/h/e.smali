.class public Le/a/x3/h/e;
.super Le/a/x3/h/j;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public e:Lcom/truecaller/forcedupdate/UpdateType;

.field public f:Landroidx/cardview/widget/CardView;

.field public g:Le/a/x3/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public h:Le/a/x3/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/x3/h/j;-><init>()V

    return-void
.end method


# virtual methods
.method public QA()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/x3/h/e;->e:Lcom/truecaller/forcedupdate/UpdateType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    sget v0, Lcom/truecaller/forcedupdate/ui/R$color;->fu_grey:I

    return v0

    .line 3
    :cond_1
    sget v0, Lcom/truecaller/forcedupdate/ui/R$color;->fu_red:I

    return v0

    .line 4
    :cond_2
    sget v0, Lcom/truecaller/forcedupdate/ui/R$color;->fu_blue:I

    return v0
.end method

.method public RA()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/x3/h/e;->e:Lcom/truecaller/forcedupdate/UpdateType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    sget v0, Lcom/truecaller/forcedupdate/ui/R$drawable;->fu_img_discontinued:I

    return v0

    .line 3
    :cond_1
    sget v0, Lcom/truecaller/forcedupdate/ui/R$drawable;->fu_img_required:I

    return v0

    .line 4
    :cond_2
    sget v0, Lcom/truecaller/forcedupdate/ui/R$drawable;->fu_img_optional:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/truecaller/forcedupdate/ui/R$id;->btn_action:I

    if-ne v0, v1, :cond_1

    .line 2
    :try_start_0
    iget-object p1, p0, Le/a/x3/h/e;->e:Lcom/truecaller/forcedupdate/UpdateType;

    sget-object v0, Lcom/truecaller/forcedupdate/UpdateType;->DISCONTINUED:Lcom/truecaller/forcedupdate/UpdateType;

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Le/a/x3/h/j;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    iget-object v0, p0, Le/a/x3/h/e;->g:Le/a/x3/a;

    invoke-interface {v0, p1}, Le/a/x3/a;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Le/a/x3/h/j;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    iget-object v0, p0, Le/a/x3/h/e;->g:Le/a/x3/a;

    iget-object v1, p0, Le/a/x3/h/e;->h:Le/a/x3/c;

    invoke-interface {v1}, Le/a/x3/c;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "forcedUpdate"

    invoke-interface {v0, p1, v1, v2}, Le/a/x3/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-static {p1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/truecaller/forcedupdate/ui/R$id;->btn_dismiss:I

    if-ne p1, v0, :cond_2

    .line 9
    iget-object p1, p0, Le/a/x3/h/e;->h:Le/a/x3/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Le/a/x3/c;->a(J)V

    .line 10
    invoke-virtual {p0}, Le/a/x3/h/j;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Le/a/x3/h/j;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "updateType"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    sget-object v0, Lcom/truecaller/forcedupdate/UpdateType;->Companion:Lcom/truecaller/forcedupdate/UpdateType$a;

    invoke-virtual {v0, p1}, Lcom/truecaller/forcedupdate/UpdateType$a;->a(Ljava/lang/String;)Lcom/truecaller/forcedupdate/UpdateType;

    move-result-object p1

    iput-object p1, p0, Le/a/x3/h/e;->e:Lcom/truecaller/forcedupdate/UpdateType;

    .line 6
    :cond_0
    iget-object p1, p0, Le/a/x3/h/e;->e:Lcom/truecaller/forcedupdate/UpdateType;

    if-eqz p1, :cond_2

    sget-object v0, Lcom/truecaller/forcedupdate/UpdateType;->NONE:Lcom/truecaller/forcedupdate/UpdateType;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p1, "Update type not specified"

    .line 7
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->report([Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    sget p3, Lcom/truecaller/forcedupdate/ui/R$layout;->fu_update:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p0}, Le/a/x3/h/e;->QA()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 2
    sget p2, Lcom/truecaller/forcedupdate/ui/R$id;->btn_action:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/cardview/widget/CardView;

    iput-object p2, p0, Le/a/x3/h/e;->f:Landroidx/cardview/widget/CardView;

    .line 3
    invoke-virtual {p2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    sget p2, Lcom/truecaller/forcedupdate/ui/R$id;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 5
    iget-object v0, p0, Le/a/x3/h/e;->e:Lcom/truecaller/forcedupdate/UpdateType;

    invoke-virtual {v0}, Lcom/truecaller/forcedupdate/UpdateType;->getTitle()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 6
    new-instance v0, Le/a/x3/h/a;

    invoke-direct {v0, p0}, Le/a/x3/h/a;-><init>(Le/a/x3/h/e;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 7
    sget p2, Lcom/truecaller/forcedupdate/ui/R$id;->description:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v0, p0, Le/a/x3/h/e;->e:Lcom/truecaller/forcedupdate/UpdateType;

    invoke-virtual {v0}, Lcom/truecaller/forcedupdate/UpdateType;->getDescription()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 8
    sget p2, Lcom/truecaller/forcedupdate/ui/R$id;->btn_action_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v0, p0, Le/a/x3/h/e;->e:Lcom/truecaller/forcedupdate/UpdateType;

    invoke-virtual {v0}, Lcom/truecaller/forcedupdate/UpdateType;->getAction()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 9
    sget p2, Lcom/truecaller/forcedupdate/ui/R$id;->image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Le/a/x3/h/e;->RA()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10
    sget p2, Lcom/truecaller/forcedupdate/ui/R$id;->btn_dismiss:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 11
    iget-object p2, p0, Le/a/x3/h/e;->e:Lcom/truecaller/forcedupdate/UpdateType;

    invoke-virtual {p2}, Lcom/truecaller/forcedupdate/UpdateType;->getSkippable()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 12
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    :cond_1
    :goto_0
    iget-object p1, p0, Le/a/x3/h/e;->g:Le/a/x3/a;

    iget-object p2, p0, Le/a/x3/h/e;->e:Lcom/truecaller/forcedupdate/UpdateType;

    invoke-interface {p1, p2}, Le/a/x3/a;->b(Lcom/truecaller/forcedupdate/UpdateType;)V

    return-void
.end method
