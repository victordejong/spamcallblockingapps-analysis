.class public Lcom/hiya/stingray/ui/contactdetails/ContactDetailActivity;
.super Lcom/hiya/stingray/ui/common/e;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/common/error/b$c;


# instance fields
.field r:Lcom/hiya/stingray/util/a0;

.field s:Lcom/hiya/stingray/ui/common/error/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/e;-><init>()V

    return-void
.end method

.method public static O(Landroid/content/Context;Lcom/hiya/stingray/t/d0;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hiya/stingray/ui/contactdetails/ContactDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "CALL_LOG_SELECTED_ITEM_KEY"

    .line 2
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method private Q(Lcom/hiya/stingray/t/d0;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/n;->n()Landroidx/fragment/app/y;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->n1(Lcom/hiya/stingray/t/d0;)Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;

    move-result-object p1

    const v1, 0x7f090158

    .line 3
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/y;->r(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/y;

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/y;->i()I

    return-void
.end method


# virtual methods
.method public P()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailActivity;->r:Lcom/hiya/stingray/util/a0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->u(Z)V

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailActivity;->s:Lcom/hiya/stingray/ui/common/error/e;

    iget-object v2, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailActivity;->r:Lcom/hiya/stingray/util/a0;

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/e;->L()Li/c/b0/b/v;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/hiya/stingray/t/e1/c;

    .line 4
    invoke-virtual/range {v1 .. v6}, Lcom/hiya/stingray/ui/common/error/e;->h(Lcom/hiya/stingray/util/a0;Li/c/b0/b/v;Landroidx/fragment/app/n;Ljava/lang/String;Ljava/lang/Class;)Li/c/b0/c/c;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/e;->A()Li/c/b0/c/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public a(Lcom/hiya/stingray/exception/a;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Lcom/hiya/stingray/exception/a;->getErrorCodeCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Error dialog has been acknowledged Error Code %d"

    invoke-static {p1, v0}, Lr/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/e;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/e;->z()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->x0(Lcom/hiya/stingray/ui/contactdetails/ContactDetailActivity;)V

    const p1, 0x7f0c004d

    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/c;->setContentView(I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "CALL_LOG_SELECTED_ITEM_KEY"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/t/d0;

    .line 7
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailActivity;->Q(Lcom/hiya/stingray/t/d0;)V

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Intent must contain CallLogItem"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/e;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailActivity;->P()V

    return-void
.end method
