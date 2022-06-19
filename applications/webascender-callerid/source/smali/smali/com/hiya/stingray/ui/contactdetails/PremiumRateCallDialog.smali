.class public Lcom/hiya/stingray/ui/contactdetails/PremiumRateCallDialog;
.super Lcom/hiya/stingray/ui/common/g;
.source "SourceFile"


# instance fields
.field private A:Ljava/lang/String;

.field callBtn:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902fc
    .end annotation
.end field

.field cancelBtn:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902fd
    .end annotation
.end field

.field premiumRateWarningTV:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902fe
    .end annotation
.end field

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/g;-><init>()V

    return-void
.end method

.method static synthetic t1(Lcom/hiya/stingray/ui/contactdetails/PremiumRateCallDialog;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/contactdetails/PremiumRateCallDialog;->z:Ljava/lang/String;

    return-object p0
.end method

.method public static u1(Ljava/lang/String;Lcom/hiya/stingray/t/r0;)Lcom/hiya/stingray/ui/contactdetails/PremiumRateCallDialog;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    new-instance v0, Lcom/hiya/stingray/ui/contactdetails/PremiumRateCallDialog;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/contactdetails/PremiumRateCallDialog;-><init>()V

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "PREMIUM_KEY"

    .line 4
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/hiya/stingray/t/r0;->e()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/hiya/stingray/t/r0;->e()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PREMIUM_TOOLKIT"

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/g;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "PREMIUM_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/PremiumRateCallDialog;->z:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const v0, 0x7f1102c7

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PREMIUM_TOOLKIT"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/PremiumRateCallDialog;->A:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c011e

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    iget-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/PremiumRateCallDialog;->premiumRateWarningTV:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/hiya/stingray/ui/contactdetails/PremiumRateCallDialog;->A:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/PremiumRateCallDialog;->callBtn:Landroid/widget/Button;

    new-instance p3, Lcom/hiya/stingray/ui/contactdetails/PremiumRateCallDialog$a;

    invoke-direct {p3, p0}, Lcom/hiya/stingray/ui/contactdetails/PremiumRateCallDialog$a;-><init>(Lcom/hiya/stingray/ui/contactdetails/PremiumRateCallDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/PremiumRateCallDialog;->cancelBtn:Landroid/widget/Button;

    new-instance p3, Lcom/hiya/stingray/ui/contactdetails/PremiumRateCallDialog$b;

    invoke-direct {p3, p0}, Lcom/hiya/stingray/ui/contactdetails/PremiumRateCallDialog$b;-><init>(Lcom/hiya/stingray/ui/contactdetails/PremiumRateCallDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
