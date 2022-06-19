.class public Le/a/r/w/e;
.super Le/a/r/w/k;
.source "SourceFile"

# interfaces
.implements Le/a/r/w/h;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Le/a/r/c/g;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public i:Le/a/r/w/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public j:Landroid/widget/ImageView;

.field public k:Landroid/view/View;

.field public l:Landroid/view/View;

.field public m:Lcom/truecaller/wizard/internal/components/EditText;

.field public n:Lcom/truecaller/wizard/internal/components/EditText;

.field public o:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/r/w/k;-><init>()V

    return-void
.end method


# virtual methods
.method public Am()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/truecaller/wizard/countries/CountyListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public C6(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string v2, "%s %s"

    .line 1
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v2, Ln3/b/a/g$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/truecaller/wizard/R$string;->EnterNumber_confirm_title:I

    .line 3
    invoke-virtual {v2, v3}, Ln3/b/a/g$a;->m(I)Ln3/b/a/g$a;

    sget v3, Lcom/truecaller/wizard/R$string;->EnterNumber_confirm_message:I

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v0, p1, v1

    .line 4
    invoke-virtual {p0, v3, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/a/b0/q/o;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v0, v2, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    .line 6
    sget p1, Lcom/truecaller/wizard/R$string;->StrConfirm:I

    new-instance v0, Le/a/r/w/c;

    invoke-direct {v0, p0, p2}, Le/a/r/w/c;-><init>(Le/a/r/w/e;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2, p1, v0}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    sget p1, Lcom/truecaller/wizard/R$string;->StrCancel:I

    const/4 p2, 0x0

    .line 8
    invoke-virtual {v2, p1, p2}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 9
    invoke-virtual {v2}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    return-void
.end method

.method public D5(Le/a/r/z/h;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Le/a/p5/s0/g;->t(Le/a/r/z/h;Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public Iq()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/r/w/e;->l:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Le/a/r/w/e;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    .line 3
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    return-void
.end method

.method public K3()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Le/a/r/w/b;

    invoke-direct {v1, p0}, Le/a/r/w/b;-><init>(Le/a/r/w/e;)V

    invoke-static {v0, v1}, Le/a/p5/s0/g;->B1(Landroid/content/Context;Ls1/z/b/l;)Ln3/b/a/g;

    return-void
.end method

.method public Lp()V
    .locals 1

    .line 1
    sget v0, Lcom/truecaller/wizard/R$string;->EnterNumberError_InvalidNumber:I

    invoke-virtual {p0, v0}, Le/a/r/t/e;->a(I)V

    return-void
.end method

.method public Mb()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r/w/e;->n:Lcom/truecaller/wizard/internal/components/EditText;

    invoke-virtual {v0}, Lcom/truecaller/wizard/internal/components/EditText;->d()Z

    move-result v0

    return v0
.end method

.method public Nh()V
    .locals 1

    .line 1
    sget v0, Lcom/truecaller/wizard/R$string;->EnterNumber:I

    invoke-virtual {p0, v0}, Le/a/r/t/e;->a(I)V

    return-void
.end method

.method public V4(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r/w/e;->m:Lcom/truecaller/wizard/internal/components/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public Ys()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/r/w/e;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 3
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 4
    iget-object v0, p0, Le/a/r/w/e;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public Zv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/r/t/e;->QA()Le/a/r/t/c;

    move-result-object v0

    const-string v1, "phoneNumber"

    .line 2
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "countryCode"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "dialingCode"

    invoke-static {p3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "numberSource"

    invoke-static {p4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "phone_number"

    .line 4
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "country_code"

    .line 5
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "dialing_code"

    .line 6
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "number_source"

    .line 7
    invoke-virtual {v1, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Page_Verification"

    .line 8
    invoke-virtual {v0, p1, v1}, Le/a/r/t/c;->Ia(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/r/w/e;->i:Le/a/r/w/g;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v0, Le/a/r/w/j;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "phoneNumber"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, v0, Le/a/r/w/j;->i:Le/a/r/c/a0/a;

    invoke-interface {v1, p1}, Le/a/r/c/a0/a;->d(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Le/a/r/w/j;->Ij(Lcom/truecaller/common/network/country/CountryListDto$a;)Ls1/s;

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public c4()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/r/t/e;->QA()Le/a/r/t/c;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Page_Privacy"

    .line 2
    invoke-virtual {v0, v2, v1}, Le/a/r/t/c;->Ia(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public e0()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/r/w/e;->n:Lcom/truecaller/wizard/internal/components/EditText;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Le/a/p5/s0/f;->W(Landroid/view/View;Z)V

    return-void
.end method

.method public hc()V
    .locals 1

    .line 1
    sget v0, Lcom/truecaller/wizard/R$string;->wizard_verification_error_no_mail_client:I

    invoke-virtual {p0, v0}, Le/a/r/t/e;->a(I)V

    return-void
.end method

.method public i0()V
    .locals 1

    .line 1
    sget v0, Lcom/truecaller/wizard/R$string;->WizardNetworkError:I

    invoke-virtual {p0, v0}, Le/a/r/t/e;->a(I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const-string p1, "country"

    .line 2
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/truecaller/wizard/countries/WizardCountryData;

    if-eqz p2, :cond_0

    .line 3
    iget-object p3, p0, Le/a/r/w/e;->i:Le/a/r/w/g;

    .line 4
    new-instance v0, Lcom/truecaller/common/network/country/CountryListDto$a;

    invoke-direct {v0}, Lcom/truecaller/common/network/country/CountryListDto$a;-><init>()V

    .line 5
    iget-object v1, p2, Lcom/truecaller/wizard/countries/WizardCountryData;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/truecaller/common/network/country/CountryListDto$a;->a:Ljava/lang/String;

    .line 6
    iget-object v1, p2, Lcom/truecaller/wizard/countries/WizardCountryData;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/truecaller/common/network/country/CountryListDto$a;->b:Ljava/lang/String;

    .line 7
    iget-object v1, p2, Lcom/truecaller/wizard/countries/WizardCountryData;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/truecaller/common/network/country/CountryListDto$a;->c:Ljava/lang/String;

    .line 8
    iget-object p2, p2, Lcom/truecaller/wizard/countries/WizardCountryData;->d:Ljava/lang/String;

    iput-object p2, v0, Lcom/truecaller/common/network/country/CountryListDto$a;->d:Ljava/lang/String;

    .line 9
    check-cast p3, Le/a/r/w/j;

    .line 10
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p3, v0}, Le/a/r/w/j;->Ij(Lcom/truecaller/common/network/country/CountryListDto$a;)Ls1/s;

    goto :goto_0

    :cond_0
    const-string p1, "country is null"

    .line 12
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lcom/truecaller/wizard/R$id;->nextButton:I

    if-ne p1, v0, :cond_2

    .line 3
    iget-object p1, p0, Le/a/r/w/e;->i:Le/a/r/w/g;

    iget-object v0, p0, Le/a/r/w/e;->n:Lcom/truecaller/wizard/internal/components/EditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Le/a/r/w/j;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "phoneNumber"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v1, p1, Le/a/r/w/j;->l:Le/a/p5/u;

    invoke-interface {v1}, Le/a/p5/u;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p1, v0}, Le/a/r/w/j;->Jj(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/r/w/h;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/r/w/h;->i0()V

    .line 8
    :cond_1
    iget-object p1, p1, Le/a/r/w/j;->m:Le/a/r/q/h;

    const-string v0, "EnterNumber"

    invoke-interface {p1, v0}, Le/a/r/q/h;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_2
    sget v0, Lcom/truecaller/wizard/R$id;->countrySpinner:I

    if-ne p1, v0, :cond_3

    .line 10
    iget-object p1, p0, Le/a/r/w/e;->i:Le/a/r/w/g;

    check-cast p1, Le/a/r/w/j;

    .line 11
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/w/h;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Le/a/r/w/h;->Am()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Le/a/r/t/e;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 1
    sget p3, Lcom/truecaller/wizard/R$layout;->wizard_fragment_enter_number:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    sget p2, Lcom/truecaller/wizard/R$id;->image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Le/a/r/w/e;->j:Landroid/widget/ImageView;

    .line 3
    sget p2, Lcom/truecaller/wizard/R$id;->bottomSection:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Le/a/r/w/e;->k:Landroid/view/View;

    .line 4
    sget p2, Lcom/truecaller/wizard/R$id;->spacer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Le/a/r/w/e;->l:Landroid/view/View;

    .line 5
    sget p2, Lcom/truecaller/wizard/R$id;->countrySpinner:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/truecaller/wizard/internal/components/EditText;

    iput-object p2, p0, Le/a/r/w/e;->m:Lcom/truecaller/wizard/internal/components/EditText;

    .line 6
    sget p2, Lcom/truecaller/wizard/R$id;->nextButton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Le/a/r/w/e;->o:Landroid/view/View;

    .line 7
    sget p2, Lcom/truecaller/wizard/R$id;->numberField:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/truecaller/wizard/internal/components/EditText;

    iput-object p2, p0, Le/a/r/w/e;->n:Lcom/truecaller/wizard/internal/components/EditText;

    .line 8
    iget-object p2, p0, Le/a/r/w/e;->j:Landroid/widget/ImageView;

    .line 9
    new-instance p3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    .line 10
    invoke-virtual {p0}, Le/a/r/w/k;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/truecaller/wizard/R$drawable;->wizard_anim_circular_background:I

    .line 11
    sget-object v4, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 12
    invoke-static {v2, v3}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v0

    .line 13
    invoke-virtual {p0}, Le/a/r/w/k;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/truecaller/wizard/R$drawable;->wizard_anim_phone_handle_center:I

    .line 14
    invoke-static {v0, v2}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    .line 15
    invoke-virtual {p0}, Le/a/r/w/k;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/truecaller/wizard/R$drawable;->wizard_anim_phone_body_center:I

    .line 16
    invoke-static {v3, v4}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v0

    .line 17
    invoke-direct {p3, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v1, 0x42480000    # 50.0f

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v2, v1, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v6, v1

    move-object v1, p3

    move v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 19
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Le/a/r/t/e;->onDestroyView()V

    .line 2
    iget-object v0, p0, Le/a/r/w/e;->i:Le/a/r/w/g;

    check-cast v0, Le/a/u2/a/a;

    invoke-virtual {v0}, Le/a/u2/a/a;->c()V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-eq p2, p1, :cond_0

    if-nez p2, :cond_1

    .line 1
    :cond_0
    iget-object p1, p0, Le/a/r/w/e;->i:Le/a/r/w/g;

    iget-object p2, p0, Le/a/r/w/e;->n:Lcom/truecaller/wizard/internal/components/EditText;

    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p1, Le/a/r/w/j;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "phoneNumber"

    invoke-static {p2, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, p2}, Le/a/r/w/j;->Jj(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p2, p0, Le/a/r/w/e;->m:Lcom/truecaller/wizard/internal/components/EditText;

    sget-object v0, Le/a/r/c/r;->a:Lcom/truecaller/wizard/internal/components/EditText$d;

    invoke-virtual {p2, v0}, Lcom/truecaller/wizard/internal/components/EditText;->setInputValidator(Lcom/truecaller/wizard/internal/components/EditText$d;)V

    .line 3
    iget-object p2, p0, Le/a/r/w/e;->n:Lcom/truecaller/wizard/internal/components/EditText;

    new-instance v0, Le/a/r/c/i;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Le/a/r/c/i;-><init>(I)V

    invoke-virtual {p2, v0}, Lcom/truecaller/wizard/internal/components/EditText;->setInputValidator(Lcom/truecaller/wizard/internal/components/EditText$d;)V

    .line 4
    iget-object p2, p0, Le/a/r/w/e;->n:Lcom/truecaller/wizard/internal/components/EditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 5
    iget-object p2, p0, Le/a/r/w/e;->i:Le/a/r/w/g;

    check-cast p2, Le/a/r/w/j;

    invoke-virtual {p2, p0}, Le/a/r/w/j;->Y0(Ljava/lang/Object;)V

    .line 6
    iget-object p2, p0, Le/a/r/w/e;->o:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p2, p0, Le/a/r/w/e;->m:Lcom/truecaller/wizard/internal/components/EditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object p2, p0, Le/a/r/w/e;->n:Lcom/truecaller/wizard/internal/components/EditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 9
    new-instance p2, Le/a/r/w/e$a;

    iget-object v0, p0, Le/a/r/w/e;->j:Landroid/widget/ImageView;

    invoke-direct {p2, p0, v0}, Le/a/r/w/e$a;-><init>(Le/a/r/w/e;Landroid/view/View;)V

    .line 10
    new-instance p2, Le/a/r/c/h;

    invoke-direct {p2, p1, p0}, Le/a/r/c/h;-><init>(Landroid/view/View;Le/a/r/c/g;)V

    .line 11
    iget-object p1, p0, Le/a/r/w/e;->j:Landroid/widget/ImageView;

    new-instance p2, Le/a/r/w/a;

    invoke-direct {p2, p0}, Le/a/r/w/a;-><init>(Le/a/r/w/e;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public s8(Z)V
    .locals 4

    .line 1
    sget-object v0, Le/a/r/z/o$c;->e:Le/a/r/z/o$c;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Le/a/r/w/d;

    invoke-direct {v2, p0}, Le/a/r/w/d;-><init>(Le/a/r/w/e;)V

    const/4 v3, 0x0

    .line 3
    invoke-static {v0, v1, p1, v2, v3}, Le/a/p5/s0/g;->D1(Le/a/r/z/o;Landroid/content/Context;ZLs1/z/b/a;Ls1/z/b/a;)V

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r/w/e;->n:Lcom/truecaller/wizard/internal/components/EditText;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Le/a/b0/q/o;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public zk()V
    .locals 1

    .line 1
    sget v0, Lcom/truecaller/wizard/R$string;->EnterCountry:I

    invoke-virtual {p0, v0}, Le/a/r/t/e;->a(I)V

    return-void
.end method
