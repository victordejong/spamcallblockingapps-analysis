.class public final Lcom/hiya/stingray/ui/premium/SoftPaywallActivity;
.super Lcom/hiya/stingray/ui/common/e;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/premium/z$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/premium/SoftPaywallActivity$a;
    }
.end annotation


# static fields
.field public static final s:Lcom/hiya/stingray/ui/premium/SoftPaywallActivity$a;


# instance fields
.field public r:Lcom/hiya/stingray/ui/premium/y;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hiya/stingray/ui/premium/SoftPaywallActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hiya/stingray/ui/premium/SoftPaywallActivity$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lcom/hiya/stingray/ui/premium/SoftPaywallActivity;->s:Lcom/hiya/stingray/ui/premium/SoftPaywallActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/e;-><init>()V

    return-void
.end method

.method public static final O(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/hiya/stingray/ui/premium/SoftPaywallActivity;->s:Lcom/hiya/stingray/ui/premium/SoftPaywallActivity$a;

    invoke-virtual {v0, p0}, Lcom/hiya/stingray/ui/premium/SoftPaywallActivity$a;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public g()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/n;->n()Landroidx/fragment/app/y;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/hiya/stingray/ui/premium/b0;

    invoke-direct {v1}, Lcom/hiya/stingray/ui/premium/b0;-><init>()V

    const v2, 0x7f090126

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/y;->r(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/y;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroidx/fragment/app/y;->g(Ljava/lang/String;)Landroidx/fragment/app/y;

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/y;->i()I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/e;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/e;->z()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->q0(Lcom/hiya/stingray/ui/premium/SoftPaywallActivity;)V

    const p1, 0x7f0c0027

    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/c;->setContentView(I)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/n;->n()Landroidx/fragment/app/y;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/SoftPaywallActivity;->r:Lcom/hiya/stingray/ui/premium/y;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/fragment/app/Fragment;

    const v1, 0x7f090126

    .line 6
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/y;->r(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/y;

    .line 7
    invoke-virtual {p1}, Landroidx/fragment/app/y;->i()I

    return-void

    .line 8
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type androidx.fragment.app.Fragment"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p1, "softPaywallFragment"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
