.class final Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$r$a;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$r;->onClick(Landroid/view/View;)V
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
.field final synthetic f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$r;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$r;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$r$a;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$r;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$r$a;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$r;

    iget-object v0, v0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$r;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->o1()Lcom/hiya/stingray/ui/local/settings/d;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$r$a;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$r;

    iget-object v1, v1, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$r;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/e;

    move-result-object v1

    const-string v2, "requireActivity()"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/hiya/stingray/ui/local/settings/d;->F(Landroid/content/Context;Z)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$r$a;->a(Z)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method
