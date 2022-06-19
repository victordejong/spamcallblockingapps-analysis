.class final Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$j;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$j;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$j;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$j$a;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p2, "dialogInterface"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$j$a;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$j;

    iget-object p2, p2, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$j;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-virtual {p2}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->q1()Lcom/hiya/stingray/manager/y2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hiya/stingray/manager/y2;->h()V

    .line 2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$j$a;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$j;

    iget-object p1, p1, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$j;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$j$a;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$j;

    iget-object p2, p2, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$j;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    const v0, 0x7f1103f4

    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
