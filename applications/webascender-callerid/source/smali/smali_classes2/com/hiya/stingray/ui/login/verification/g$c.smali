.class final Lcom/hiya/stingray/ui/login/verification/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/login/verification/g;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/login/verification/g;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/login/verification/g;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/login/verification/g$c;->f:Lcom/hiya/stingray/ui/login/verification/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/g$c;->f:Lcom/hiya/stingray/ui/login/verification/g;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/g$c;->f:Lcom/hiya/stingray/ui/login/verification/g;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/login/verification/g;->i1()Lcom/hiya/stingray/ui/login/verification/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/login/verification/i;->b()V

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
