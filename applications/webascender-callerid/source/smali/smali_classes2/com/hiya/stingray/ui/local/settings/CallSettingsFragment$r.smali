.class final Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$r;
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

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$r;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$r;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->r1()Lcom/hiya/stingray/ui/login/o;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$r;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/util/n;->f:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/hiya/stingray/ui/login/o;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v2, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$r;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    const v3, 0x7f110086

    sget p1, Lcom/hiya/stingray/o;->u3:I

    invoke-virtual {v2, p1}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->f1(I)Landroid/view/View;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/widget/TextView;

    const-string p1, "savedContactsDsc"

    invoke-static {v4, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$r;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->o1()Lcom/hiya/stingray/ui/local/settings/d;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$r;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/e;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/local/settings/d;->x(Landroid/content/Context;)Z

    move-result v5

    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$r;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-static {p1}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->i1(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$r$a;

    invoke-direct {v9, p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$r$a;-><init>(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$r;)V

    const/16 v10, 0x30

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->C1(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;ILandroid/widget/TextView;Z[Ljava/lang/String;ZLjava/lang/String;Lkotlin/w/b/l;ILjava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$r;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->r1()Lcom/hiya/stingray/ui/login/o;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$r;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/e;

    move-result-object v0

    iget-object v2, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$r;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    const/16 v3, 0x1775

    invoke-virtual {p1, v0, v2, v1, v3}, Lcom/hiya/stingray/ui/login/o;->g(Landroid/app/Activity;Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)Z

    :goto_0
    return-void
.end method
