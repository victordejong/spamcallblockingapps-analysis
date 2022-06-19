.class public final Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;
.super Le/a/k/a/e/m/a;
.source "SourceFile"

# interfaces
.implements Le/a/k/a/e/m/e;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u0002J\u000f\u0010\u0004\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\n\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\n\u0010\tJ\u000f\u0010\u000b\u001a\u00020\u0003H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u0005J\u0017\u0010\r\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\r\u0010\tJ\u0017\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\tJ\u0017\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\tJ\u000f\u0010\u0010\u001a\u00020\u0003H\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0005J\u0013\u0010\u0013\u001a\u00020\u0012*\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u001d\u0010\u001a\u001a\u00020\u00158B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u001d\u0010\u001e\u001a\u00020\u00118B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u0017\u001a\u0004\u0008\u001c\u0010\u001dR\"\u0010&\u001a\u00020\u001f8\u0000@\u0000X\u0081.\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Le/a/k/a/e/m/e;",
        "Ls1/s;",
        "N",
        "()V",
        "",
        "visible",
        "y",
        "(Z)V",
        "J0",
        "onAttachedToWindow",
        "checked",
        "Z",
        "r0",
        "k0",
        "onDetachedFromWindow",
        "",
        "",
        "g1",
        "(I)Ljava/lang/String;",
        "Le/a/k/m/u;",
        "w",
        "Ls1/g;",
        "getBinding",
        "()Le/a/k/m/u;",
        "binding",
        "x",
        "getPadding",
        "()I",
        "padding",
        "Le/a/k/a/e/m/d;",
        "v",
        "Le/a/k/a/e/m/d;",
        "getPresenter$video_caller_id_release",
        "()Le/a/k/a/e/m/d;",
        "setPresenter$video_caller_id_release",
        "(Le/a/k/a/e/m/d;)V",
        "presenter",
        "video-caller-id_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public v:Le/a/k/a/e/m/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final w:Ls1/g;

.field public final x:Ls1/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Le/a/k/a/e/m/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    sget-object p2, Ls1/h;->c:Ls1/h;

    new-instance v1, Le/a/k/a/e/m/b;

    invoke-direct {v1, p0, p1}, Le/a/k/a/e/m/b;-><init>(Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;Landroid/content/Context;)V

    invoke-static {p2, v1}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;->w:Ls1/g;

    .line 4
    new-instance p1, Le/a/k/a/e/m/c;

    invoke-direct {p1, p0}, Le/a/k/a/e/m/c;-><init>(Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;)V

    invoke-static {p2, p1}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;->x:Ls1/g;

    .line 5
    invoke-direct {p0}, Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;->getPadding()I

    move-result p1

    invoke-direct {p0}, Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;->getPadding()I

    move-result p2

    invoke-direct {p0}, Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;->getPadding()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 6
    invoke-direct {p0}, Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;->getBinding()Le/a/k/m/u;

    move-result-object p1

    .line 7
    iget-object p2, p1, Le/a/k/m/u;->i:Landroid/widget/TextView;

    const-string v0, "everyoneDesc"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/truecaller/videocallerid/R$string;->vid_settings_everyone_desc:I

    invoke-virtual {p0, v0}, Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;->g1(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p2, p1, Le/a/k/m/u;->l:Landroid/widget/TextView;

    const-string v0, "noOneDesc"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/truecaller/videocallerid/R$string;->vid_settings_no_one_desc:I

    invoke-virtual {p0, v0}, Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;->g1(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p1, Le/a/k/m/u;->b:Landroid/widget/TextView;

    const-string p2, "contactDesc"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lcom/truecaller/videocallerid/R$string;->vid_settings_contacts_desc:I

    invoke-virtual {p0, p2}, Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;->g1(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final getBinding()Le/a/k/m/u;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;->w:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/k/m/u;

    return-object v0
.end method

.method private final getPadding()I
    .locals 1

    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;->x:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public J0(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;->getBinding()Le/a/k/m/u;

    move-result-object v0

    iget-object v0, v0, Le/a/k/m/u;->k:Landroidx/constraintlayout/widget/Group;

    const-string v1, "binding.everyoneOptionGroup"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public N()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;->getBinding()Le/a/k/m/u;

    move-result-object v0

    iget-object v0, v0, Le/a/k/m/u;->h:Landroid/widget/RadioButton;

    const-string v1, "binding.everyOneRadioBtn"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 2
    invoke-direct {p0}, Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;->getBinding()Le/a/k/m/u;

    move-result-object v0

    iget-object v0, v0, Le/a/k/m/u;->f:Landroid/widget/RadioButton;

    const-string v2, "binding.contactRadioBtn"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 3
    invoke-virtual {p0, v1}, Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;->k0(Z)V

    return-void
.end method

.method public Z(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;->getBinding()Le/a/k/m/u;

    move-result-object v0

    iget-object v0, v0, Le/a/k/m/u;->h:Landroid/widget/RadioButton;

    const-string v1, "binding.everyOneRadioBtn"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method public final g1(I)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/truecaller/videocallerid/R$string;->video_caller_id:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(this, \u2026.string.video_caller_id))"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getPresenter$video_caller_id_release()Le/a/k/a/e/m/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;->v:Le/a/k/a/e/m/d;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public k0(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;->getBinding()Le/a/k/m/u;

    move-result-object v0

    iget-object v0, v0, Le/a/k/m/u;->n:Landroid/widget/RadioButton;

    const-string v1, "binding.noOneRadioBtn"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;->v:Le/a/k/a/e/m/d;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/k/a/e/m/f;

    invoke-virtual {v0, p0}, Le/a/k/a/e/m/f;->Y0(Ljava/lang/Object;)V

    .line 3
    invoke-direct {p0}, Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;->getBinding()Le/a/k/m/u;

    move-result-object v0

    .line 4
    iget-object v1, v0, Le/a/k/m/u;->g:Landroid/view/View;

    new-instance v2, Lf;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lf;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v1, v0, Le/a/k/m/u;->h:Landroid/widget/RadioButton;

    new-instance v2, Li0;

    invoke-direct {v2, v3, p0}, Li0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 6
    iget-object v1, v0, Le/a/k/m/u;->e:Landroid/view/View;

    new-instance v2, Lf;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0}, Lf;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v1, v0, Le/a/k/m/u;->f:Landroid/widget/RadioButton;

    new-instance v2, Li0;

    invoke-direct {v2, v3, p0}, Li0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 8
    iget-object v1, v0, Le/a/k/m/u;->m:Landroid/view/View;

    new-instance v2, Lf;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p0}, Lf;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, v0, Le/a/k/m/u;->n:Landroid/widget/RadioButton;

    new-instance v1, Li0;

    invoke-direct {v1, v3, p0}, Li0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 10
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;->v:Le/a/k/a/e/m/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Le/a/u2/a/b;

    .line 3
    iput-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public r0(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;->getBinding()Le/a/k/m/u;

    move-result-object v0

    iget-object v0, v0, Le/a/k/m/u;->f:Landroid/widget/RadioButton;

    const-string v1, "binding.contactRadioBtn"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method public final setPresenter$video_caller_id_release(Le/a/k/a/e/m/d;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;->v:Le/a/k/a/e/m/d;

    return-void
.end method

.method public y(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;->getBinding()Le/a/k/m/u;

    move-result-object v0

    iget-object v0, v0, Le/a/k/m/u;->d:Landroidx/constraintlayout/widget/Group;

    const-string v1, "binding.contactOptionGroup"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method
