.class final Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$o;
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

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$o;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$o;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->m1()Lcom/hiya/stingray/manager/e1;

    move-result-object p1

    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object v0

    const-string v1, "call_settings_picker"

    .line 2
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 3
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$o;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-virtual {v1}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->s1()Lcom/hiya/stingray/manager/u3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/u3;->P()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "scam"

    goto :goto_0

    :cond_0
    const-string v1, "scam_upsell"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/g0/c$a;->m(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 4
    invoke-virtual {v0}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v0

    const-string v1, "view_screen"

    .line 5
    invoke-virtual {p1, v1, v0}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    .line 6
    iget-object v2, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$o;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    const v3, 0x7f110087

    sget p1, Lcom/hiya/stingray/o;->w3:I

    invoke-virtual {v2, p1}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->f1(I)Landroid/view/View;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/widget/TextView;

    const-string p1, "scamDsc"

    invoke-static {v4, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$o;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->o1()Lcom/hiya/stingray/ui/local/settings/d;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$o;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/e;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/local/settings/d;->t(Landroid/content/Context;)Z

    move-result v5

    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$o;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-static {p1}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->h1(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-instance v9, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$o$a;

    invoke-direct {v9, p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$o$a;-><init>(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$o;)V

    const-string v8, "scam"

    invoke-static/range {v2 .. v9}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->k1(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;ILandroid/widget/TextView;Z[Ljava/lang/String;ZLjava/lang/String;Lkotlin/w/b/l;)V

    return-void
.end method
