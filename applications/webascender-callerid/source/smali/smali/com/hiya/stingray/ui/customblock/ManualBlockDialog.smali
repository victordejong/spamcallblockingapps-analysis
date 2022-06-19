.class public Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;
.super Lcom/hiya/stingray/ui/common/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$d;,
        Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;
    }
.end annotation


# instance fields
.field A:Lcom/hiya/stingray/manager/e1;

.field B:Lcom/hiya/stingray/q/d/f;

.field private C:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;

.field blockPrompt:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900ab
    .end annotation
.end field

.field countryCodeEdit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090130
    .end annotation
.end field

.field numberEdit:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900aa
    .end annotation
.end field

.field numberErrorMsg:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901a2
    .end annotation
.end field

.field z:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/g;-><init>()V

    return-void
.end method

.method private A1(Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;->BEGINS_WITH:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;

    if-ne p1, v0, :cond_2

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->B:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {p1}, Lcom/hiya/stingray/q/d/f;->u()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x7

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->B:Lcom/hiya/stingray/q/d/f;

    .line 3
    invoke-virtual {p1}, Lcom/hiya/stingray/q/d/f;->r()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->z:Lh/a;

    invoke-interface {p1}, Lh/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v3, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->B:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v3}, Lcom/hiya/stingray/q/d/f;->r()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/hiya/stingray/util/q;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->numberEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->B:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v1}, Lcom/hiya/stingray/q/d/f;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v3, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->z:Lh/a;

    invoke-interface {v3}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/hiya/stingray/util/q;->c(Landroid/content/Context;Ljava/lang/String;)Lkotlin/l;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Lkotlin/l;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 9
    invoke-virtual {p1}, Lkotlin/l;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 10
    invoke-virtual {p1}, Lkotlin/l;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 11
    iget-object v1, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->numberEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Lkotlin/l;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->blockPrompt:Landroid/widget/TextView;

    const v0, 0x7f110051

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->numberEdit:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->w1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private B1()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListFragment;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/hiya/stingray/ui/common/SinglePanelFragmentActivity;->O(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x1f44

    .line 2
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private C1(Z)V
    .locals 4

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->numberEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060177

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroidx/core/content/c/f;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 3
    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->numberErrorMsg:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->numberEdit:Landroid/widget/EditText;

    const v1, 0x7f110239

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->numberEdit:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->numberEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 8
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->numberErrorMsg:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private D1(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->numberEdit:Landroid/widget/EditText;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->w1()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic t1(Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;)Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->C:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;

    return-object p0
.end method

.method static synthetic u1(Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->C1(Z)V

    return-void
.end method

.method static synthetic v1(Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->B1()V

    return-void
.end method

.method private w1()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->C:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;

    sget-object v1, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;->BEGINS_WITH:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;

    if-ne v0, v1, :cond_0

    const v0, 0x7f110053

    goto :goto_0

    :cond_0
    const v0, 0x7f110052

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private z1()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/i18n/phonenumbers/h;->t()Lcom/google/i18n/phonenumbers/h;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->z:Lh/a;

    invoke-interface {v1}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/h;->q(Ljava/lang/String;)I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->countryCodeEdit:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->D1(I)V

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->countryCodeEdit:Landroid/widget/TextView;

    new-instance v1, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$c;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$c;-><init>(Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic g1(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->x1(Landroid/os/Bundle;)Landroidx/appcompat/app/b;

    move-result-object p1

    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x232a

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    const/16 p2, 0x1f44

    if-ne p1, p2, :cond_2

    if-eqz p3, :cond_1

    const-string p1, "country_prefix"

    .line 1
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "country_code"

    .line 2
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-static {}, Lcom/google/i18n/phonenumbers/h;->t()Lcom/google/i18n/phonenumbers/h;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/i18n/phonenumbers/h;->q(Ljava/lang/String;)I

    move-result p2

    .line 4
    iget-object p3, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->countryCodeEdit:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-direct {p0, p2}, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->D1(I)V

    goto :goto_1

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "countryCodeIso was null from data"

    .line 6
    invoke-static {p2, p1}, Lr/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/g;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/g;->q1()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->P(Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;)V

    return-void
.end method

.method public x1(Landroid/os/Bundle;)Landroidx/appcompat/app/b;
    .locals 4

    .line 1
    new-instance p1, Landroidx/appcompat/app/b$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$d;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00ca

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 5
    invoke-static {p0, v1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 6
    iget-object v2, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->C:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;

    invoke-direct {p0, v2}, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->A1(Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;)V

    .line 7
    invoke-direct {p0}, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->z1()V

    .line 8
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/b$a;->r(Landroid/view/View;)Landroidx/appcompat/app/b$a;

    const v1, 0x7f11004e

    .line 9
    invoke-virtual {p1, v1, v3}, Landroidx/appcompat/app/b$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    new-instance v1, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$a;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$a;-><init>(Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;)V

    const v2, 0x7f1100a3

    .line 10
    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/app/b$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    .line 11
    invoke-virtual {p1}, Landroidx/appcompat/app/b$a;->a()Landroidx/appcompat/app/b;

    move-result-object p1

    .line 12
    new-instance v1, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;

    invoke-direct {v1, p0, v0, p1}, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;-><init>(Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$d;Landroidx/appcompat/app/b;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 14
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->blockPrompt:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 16
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->blockPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 17
    :cond_1
    new-instance v0, Lcom/hiya/stingray/util/g0/c$a;

    invoke-direct {v0}, Lcom/hiya/stingray/util/g0/c$a;-><init>()V

    .line 18
    iget-object v1, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->C:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;

    sget-object v2, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;->FULL_NUMBER:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;

    if-ne v1, v2, :cond_2

    const-string v1, "block_entered_number"

    .line 19
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    goto :goto_0

    :cond_2
    const-string v1, "block_begins_with"

    .line 20
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 21
    :goto_0
    iget-object v1, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->A:Lcom/hiya/stingray/manager/e1;

    const-string v2, "dialog"

    .line 22
    invoke-virtual {v0, v2}, Lcom/hiya/stingray/util/g0/c$a;->m(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    invoke-virtual {v0}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v0

    const-string v2, "user_prompt_view"

    .line 23
    invoke-virtual {v1, v2, v0}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-object p1
.end method

.method public y1(Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->C:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;

    return-void
.end method
