.class Lcom/hiya/stingray/ui/contactdetails/PremiumRateCallDialog$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/contactdetails/PremiumRateCallDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/contactdetails/PremiumRateCallDialog;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/contactdetails/PremiumRateCallDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/PremiumRateCallDialog$a;->f:Lcom/hiya/stingray/ui/contactdetails/PremiumRateCallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/PremiumRateCallDialog$a;->f:Lcom/hiya/stingray/ui/contactdetails/PremiumRateCallDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/PremiumRateCallDialog$a;->f:Lcom/hiya/stingray/ui/contactdetails/PremiumRateCallDialog;

    invoke-static {v0}, Lcom/hiya/stingray/ui/contactdetails/PremiumRateCallDialog;->t1(Lcom/hiya/stingray/ui/contactdetails/PremiumRateCallDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hiya/stingray/util/u;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/PremiumRateCallDialog$a;->f:Lcom/hiya/stingray/ui/contactdetails/PremiumRateCallDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/d;->c1()V

    return-void
.end method
