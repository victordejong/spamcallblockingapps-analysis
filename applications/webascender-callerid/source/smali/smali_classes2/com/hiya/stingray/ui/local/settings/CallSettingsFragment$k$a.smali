.class final Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k$a;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/l<",
        "Ljava/lang/Boolean;",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k$a;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k$a;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k;

    iget-object v0, v0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->p1()Lcom/hiya/stingray/manager/j2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/j2;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k$a;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k;

    iget-object v0, v0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->p1()Lcom/hiya/stingray/manager/j2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/manager/j2;->f(Z)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k$a;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k;

    iget-object p1, p1, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->t1()Lcom/hiya/stingray/manager/g1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/g1;->j()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k$a;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k;

    iget-object p1, p1, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->p1()Lcom/hiya/stingray/manager/j2;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k$a;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k;

    iget-object v0, v0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    const/16 v1, 0x1688

    invoke-virtual {p1, v0, v1}, Lcom/hiya/stingray/manager/j2;->e(Landroidx/fragment/app/Fragment;I)Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k$a;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k;

    iget-object p1, p1, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/hiya/stingray/util/x;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k$a;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k;

    iget-object p1, p1, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/hiya/stingray/util/x;->d(Landroid/content/Context;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k$a;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k;

    iget-object p1, p1, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->p1()Lcom/hiya/stingray/manager/j2;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/manager/j2;->f(Z)V

    .line 8
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k$a;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k;

    iget-object p1, p1, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->t1()Lcom/hiya/stingray/manager/g1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/g1;->j()V

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k$a;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k;

    iget-object p1, p1, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-static {p1}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->g1(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k$a;->a(Z)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method
