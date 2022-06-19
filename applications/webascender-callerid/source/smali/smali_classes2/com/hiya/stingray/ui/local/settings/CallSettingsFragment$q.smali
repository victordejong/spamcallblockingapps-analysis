.class final Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$q;
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

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$q;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$q;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    sget p1, Lcom/hiya/stingray/o;->X2:I

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->f1(I)Landroid/view/View;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    const-string p1, "privateCallsDsc"

    invoke-static {v2, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$q;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->o1()Lcom/hiya/stingray/ui/local/settings/d;

    move-result-object p1

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$q;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/e;

    move-result-object v1

    const-string v3, "requireActivity()"

    invoke-static {v1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/hiya/stingray/ui/local/settings/d;->w(Landroid/content/Context;)Z

    move-result v3

    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$q;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-static {p1}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->h1(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;)[Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$q$a;

    invoke-direct {v7, p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$q$a;-><init>(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$q;)V

    const v1, 0x7f110085

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x30

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->C1(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;ILandroid/widget/TextView;Z[Ljava/lang/String;ZLjava/lang/String;Lkotlin/w/b/l;ILjava/lang/Object;)V

    return-void
.end method
