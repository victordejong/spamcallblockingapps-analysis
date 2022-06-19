.class public final Lcom/hiya/stingray/ui/login/verification/VerificationActivity;
.super Lcom/hiya/stingray/ui/common/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/login/verification/VerificationActivity$b;,
        Lcom/hiya/stingray/ui/login/verification/VerificationActivity$a;
    }
.end annotation


# static fields
.field public static final r:Lcom/hiya/stingray/ui/login/verification/VerificationActivity$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hiya/stingray/ui/login/verification/VerificationActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hiya/stingray/ui/login/verification/VerificationActivity$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lcom/hiya/stingray/ui/login/verification/VerificationActivity;->r:Lcom/hiya/stingray/ui/login/verification/VerificationActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/e;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/e;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0027

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/c;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "EXTRA_SOURCE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    instance-of v1, p1, Lcom/hiya/stingray/ui/login/verification/VerificationActivity$b;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p1

    :goto_1
    check-cast v0, Lcom/hiya/stingray/ui/login/verification/VerificationActivity$b;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/n;->n()Landroidx/fragment/app/y;

    move-result-object p1

    const v1, 0x7f090126

    .line 5
    sget-object v2, Lcom/hiya/stingray/ui/login/verification/j;->t:Lcom/hiya/stingray/ui/login/verification/j$a;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    sget-object v0, Lcom/hiya/stingray/ui/login/verification/VerificationActivity$b;->ONBAORDING:Lcom/hiya/stingray/ui/login/verification/VerificationActivity$b;

    .line 7
    :goto_2
    invoke-virtual {v2, v3, v0}, Lcom/hiya/stingray/ui/login/verification/j$a;->a(ZLcom/hiya/stingray/ui/login/verification/VerificationActivity$b;)Lcom/hiya/stingray/ui/login/verification/j;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/y;->r(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/y;

    .line 8
    invoke-virtual {p1}, Landroidx/fragment/app/y;->i()I

    return-void
.end method
