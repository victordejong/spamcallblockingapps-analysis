.class final Lcom/hiya/stingray/ui/onboarding/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/onboarding/d;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/onboarding/d;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/onboarding/d;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/onboarding/d$c;->f:Lcom/hiya/stingray/ui/onboarding/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/onboarding/d$c;->f:Lcom/hiya/stingray/ui/onboarding/d;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/e;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method
