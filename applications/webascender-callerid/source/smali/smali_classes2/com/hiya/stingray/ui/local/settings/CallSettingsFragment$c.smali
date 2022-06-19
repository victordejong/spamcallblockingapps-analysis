.class public final Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/login/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$c;->a:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$c;->a:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-static {v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->j1(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$c;->a:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    const v0, 0x7f1100c7

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.contact_permission_prompt)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/hiya/stingray/util/n;->f:[Ljava/lang/String;

    const-string v2, "CONTACTS_PERMISSIONS"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->D1(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$c;->a:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-static {v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->j1(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;)V

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$c;->a:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    sget v0, Lcom/hiya/stingray/o;->u3:I

    invoke-virtual {v1, v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    const-string v0, "savedContactsDsc"

    invoke-static {v3, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$c;->a:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->o1()Lcom/hiya/stingray/ui/local/settings/d;

    move-result-object v0

    iget-object v2, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$c;->a:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/e;

    move-result-object v2

    const-string v4, "requireActivity()"

    invoke-static {v2, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/hiya/stingray/ui/local/settings/d;->x(Landroid/content/Context;)Z

    move-result v4

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$c;->a:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-static {v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->i1(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;)[Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$c$a;

    invoke-direct {v8, p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$c$a;-><init>(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$c;)V

    const v2, 0x7f110086

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x30

    const/4 v10, 0x0

    invoke-static/range {v1 .. v10}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->C1(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;ILandroid/widget/TextView;Z[Ljava/lang/String;ZLjava/lang/String;Lkotlin/w/b/l;ILjava/lang/Object;)V

    return-void
.end method
