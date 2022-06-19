.class final Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->z1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$j;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Landroidx/appcompat/app/b$a;

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$j;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$j;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    const v1, 0x7f1101bc

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/b$a;->h(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;

    .line 2
    new-instance v0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$j$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$j$a;-><init>(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$j;)V

    const v1, 0x7f1100d3

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/b$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    .line 3
    sget-object v0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$j$b;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$j$b;

    const v1, 0x7f1100a3

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/b$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    .line 4
    invoke-virtual {p1}, Landroidx/appcompat/app/b$a;->s()Landroidx/appcompat/app/b;

    return-void
.end method
