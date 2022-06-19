.class public final Lcom/hiya/stingray/ui/v/a;
.super Lcom/hiya/stingray/ui/common/i;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/v/g;
.implements Lcom/hiya/stingray/ui/local/dialer/f$a;
.implements Lcom/hiya/stingray/ui/local/common/g$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/v/a$a;
    }
.end annotation


# instance fields
.field public l:Lcom/hiya/stingray/ui/v/f;

.field public m:Lcom/hiya/stingray/manager/u3;

.field public n:Lcom/hiya/stingray/t/i1/t;

.field public o:Lcom/hiya/stingray/t/i1/c0;

.field public p:Lcom/hiya/stingray/ui/v/b;

.field private q:Lcom/hiya/stingray/ui/local/dialer/f;

.field private r:Landroid/widget/EditText;

.field private s:Lcom/hiya/stingray/ui/v/a$a;

.field private t:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/i;-><init>()V

    return-void
.end method

.method public static final synthetic g1(Lcom/hiya/stingray/ui/v/a;)Lcom/hiya/stingray/ui/local/dialer/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/v/a;->q:Lcom/hiya/stingray/ui/local/dialer/f;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "dialerViewHelper"

    invoke-static {p0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic h1(Lcom/hiya/stingray/ui/v/a;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/v/a;->r:Landroid/widget/EditText;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "phoneNumber"

    invoke-static {p0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic i1(Lcom/hiya/stingray/ui/v/a;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/v/a;->p1(Z)V

    return-void
.end method

.method private final j1()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "clipboard"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 3
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "clipData"

    .line 4
    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5
    :try_start_0
    invoke-virtual {v1, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "text"

    .line 6
    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlin/c0/j;

    const-string v4, "[\\s0-9\\-()+]+"

    invoke-direct {v1, v4}, Lkotlin/c0/j;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lkotlin/c0/j;->c(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hiya/stingray/util/c0;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/hiya/stingray/ui/v/a;->r:Landroid/widget/EditText;

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    const-string v5, "phoneNumber.text"

    invoke-static {v1, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    invoke-static {v1, v0, v3, v5, v4}, Lkotlin/c0/m;->I(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    invoke-direct {p0, v2}, Lcom/hiya/stingray/ui/v/a;->p1(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "phoneNumber"

    .line 10
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    throw v4

    :catch_0
    move-exception v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "Failed to get clipboard data. Might be containing data other than text."

    .line 11
    invoke-static {v0, v1}, Lr/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method private final p1(Z)V
    .locals 4

    .line 1
    sget v0, Lcom/hiya/stingray/o;->r3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/v/a;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "rightButton"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/hiya/stingray/util/e0;->z(Landroid/view/View;Z)V

    .line 2
    sget v0, Lcom/hiya/stingray/o;->B3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/v/a;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 3
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/v/a;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v2, "searchBar"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    const v3, 0x7f080138

    invoke-virtual {p1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    :cond_1
    move-object p1, v2

    .line 5
    :goto_0
    invoke-virtual {v1, v0, v2, p1, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public J()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/v/a;->q:Lcom/hiya/stingray/ui/local/dialer/f;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/local/dialer/f;->i(Z)V

    return-void

    :cond_0
    const-string v0, "dialerViewHelper"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public M()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/hiya/stingray/ui/local/common/g$a$a;->a(Lcom/hiya/stingray/ui/local/common/g$a;)Z

    move-result v0

    return v0
.end method

.method public P(Z)V
    .locals 2

    .line 1
    sget v0, Lcom/hiya/stingray/o;->T3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/v/a;->f1(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "shadow"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/hiya/stingray/util/e0;->z(Landroid/view/View;Z)V

    return-void
.end method

.method public Z0()V
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/ui/v/a;->t:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public f1(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/ui/v/a;->t:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/v/a;->t:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/v/a;->t:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/v/a;->t:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public i()V
    .locals 7

    .line 1
    new-instance v6, Landroidx/appcompat/app/b$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {v6, v0}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/hiya/stingray/util/e0;->c(Landroidx/appcompat/app/b$a;Ljava/lang/Integer;Ljava/lang/Integer;ZILjava/lang/Object;)Landroidx/appcompat/app/b$a;

    invoke-virtual {v6}, Landroidx/appcompat/app/b$a;->a()Landroidx/appcompat/app/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 v0, 0x0

    throw v0
.end method

.method public final k1()Lcom/hiya/stingray/ui/v/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/v/a;->p:Lcom/hiya/stingray/ui/v/b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "analytics"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final l1()Lcom/hiya/stingray/t/i1/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/v/a;->n:Lcom/hiya/stingray/t/i1/t;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "displayTypeMapper"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final m1()Lcom/hiya/stingray/t/i1/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/v/a;->o:Lcom/hiya/stingray/t/i1/c0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "identityTypeMapper"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public n0(Lcom/hiya/stingray/t/d0;)V
    .locals 2

    const-string v0, "callLogItem"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/v/a;->r:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailActivity;->O(Landroid/content/Context;Lcom/hiya/stingray/t/d0;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    :cond_1
    const-string p1, "phoneNumber"

    .line 3
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public final n1()Lcom/hiya/stingray/manager/u3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/v/a;->m:Lcom/hiya/stingray/manager/u3;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "premiumManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/v/a;->l:Lcom/hiya/stingray/ui/v/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/hiya/stingray/ui/v/a;->r:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/v/f;->x(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "phoneNumber"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "presenter"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public final o1()Lcom/hiya/stingray/ui/v/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/v/a;->l:Lcom/hiya/stingray/ui/v/f;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/i;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->a1()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->n0(Lcom/hiya/stingray/ui/v/a;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/v/a;->l:Lcom/hiya/stingray/ui/v/f;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/hiya/stingray/ui/common/k;->s(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string p1, "presenter"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0c007e

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onDestroyView()V

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/v/a;->Z0()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/v/a;->l:Lcom/hiya/stingray/ui/v/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/v/f;->p()V

    .line 3
    invoke-direct {p0}, Lcom/hiya/stingray/ui/v/a;->j1()V

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 4
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/hiya/stingray/ui/common/i;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/hiya/stingray/o;->B3:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/v/a;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const-string p2, "searchBar"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/hiya/stingray/ui/v/a;->r:Landroid/widget/EditText;

    const/4 p2, 0x0

    const-string v0, "phoneNumber"

    if-eqz p1, :cond_6

    const v1, 0x7f1100e6

    .line 3
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 4
    new-instance p1, Lcom/hiya/stingray/ui/local/dialer/f;

    sget v1, Lcom/hiya/stingray/o;->B0:I

    invoke-virtual {p0, v1}, Lcom/hiya/stingray/ui/v/a;->f1(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/FrameLayout;

    const-string v1, "dialpadWrapper"

    invoke-static {v3, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/hiya/stingray/ui/v/a;->r:Landroid/widget/EditText;

    if-eqz v4, :cond_5

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/hiya/stingray/ui/local/dialer/f;-><init>(Landroid/view/ViewGroup;Landroid/widget/EditText;Ljava/lang/ref/WeakReference;ZZ)V

    iput-object p1, p0, Lcom/hiya/stingray/ui/v/a;->q:Lcom/hiya/stingray/ui/local/dialer/f;

    .line 5
    new-instance p1, Lcom/hiya/stingray/ui/v/a$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "context!!"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p0, v0}, Lcom/hiya/stingray/ui/v/a$a;-><init>(Lcom/hiya/stingray/ui/v/a;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/hiya/stingray/ui/v/a;->s:Lcom/hiya/stingray/ui/v/a$a;

    .line 6
    sget p1, Lcom/hiya/stingray/o;->n3:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/v/a;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "recyclerView"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 7
    iget-object v0, p0, Lcom/hiya/stingray/ui/v/a;->s:Lcom/hiya/stingray/ui/v/a$a;

    const-string v3, "lookupHistoryAdapter"

    if-eqz v0, :cond_3

    new-instance v4, Lcom/hiya/stingray/ui/v/a$b;

    invoke-direct {v4, p0}, Lcom/hiya/stingray/ui/v/a$b;-><init>(Lcom/hiya/stingray/ui/v/a;)V

    invoke-virtual {v0, v4}, Lcom/hiya/stingray/ui/v/a$a;->i(Lkotlin/w/b/l;)V

    .line 8
    iget-object v0, p0, Lcom/hiya/stingray/ui/v/a;->s:Lcom/hiya/stingray/ui/v/a$a;

    if-eqz v0, :cond_2

    new-instance v4, Lcom/hiya/stingray/ui/v/a$c;

    invoke-direct {v4, p0}, Lcom/hiya/stingray/ui/v/a$c;-><init>(Lcom/hiya/stingray/ui/v/a;)V

    invoke-virtual {v0, v4}, Lcom/hiya/stingray/ui/v/a$a;->g(Lkotlin/w/b/l;)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/v/a;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hiya/stingray/ui/v/a;->s:Lcom/hiya/stingray/ui/v/a$a;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 10
    sget v0, Lcom/hiya/stingray/o;->h2:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/v/a;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v2, 0x7f080149

    invoke-virtual {v0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageResource(I)V

    .line 11
    sget v0, Lcom/hiya/stingray/o;->r3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/v/a;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/hiya/stingray/ui/v/a$d;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/v/a$d;-><init>(Lcom/hiya/stingray/ui/v/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    new-instance v3, Lcom/hiya/stingray/ui/premium/t;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v4, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/v/a;->f1(I)Landroid/view/View;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v6, 0x0

    sget p1, Lcom/hiya/stingray/o;->I3:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/v/a;->f1(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x14

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/hiya/stingray/ui/premium/t;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ScrollView;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;ILkotlin/w/c/g;)V

    return-void

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw p2

    .line 13
    :cond_1
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 14
    :cond_2
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 15
    :cond_3
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 16
    :cond_4
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw p2

    .line 17
    :cond_5
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 18
    :cond_6
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2
.end method

.method public q0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/v/a;->l:Lcom/hiya/stingray/ui/v/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/hiya/stingray/ui/v/a;->r:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hiya/stingray/ui/v/f;->w(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/v/a;->p:Lcom/hiya/stingray/ui/v/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/v/b;->b()V

    return-void

    :cond_0
    const-string v0, "analytics"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "phoneNumber"

    .line 3
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "presenter"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/ui/v/a;->j1()V

    :cond_0
    return-void
.end method

.method public t(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/t0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "history"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/v/a;->s:Lcom/hiya/stingray/ui/v/a$a;

    const-string v1, "lookupHistoryAdapter"

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/v/a$a;->h(Ljava/util/List;)V

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    const-string v3, "recyclerView"

    if-eqz p1, :cond_3

    .line 3
    new-instance p1, Lcom/hiya/stingray/ui/common/n;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v4, "activity!!"

    invoke-static {v5, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const v6, 0x7f06019a

    const v7, 0x7f0c0068

    const v8, 0x7f0903bb

    .line 5
    iget-object v9, p0, Lcom/hiya/stingray/ui/v/a;->s:Lcom/hiya/stingray/ui/v/a$a;

    if-eqz v9, :cond_1

    move-object v4, p1

    .line 6
    invoke-direct/range {v4 .. v9}, Lcom/hiya/stingray/ui/common/n;-><init>(Landroid/content/Context;IIILandroidx/recyclerview/widget/RecyclerView$g;)V

    const v1, 0x7f1102da

    .line 7
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "getString(R.string.recent_lookups)"

    invoke-static {v1, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "(this as java.lang.String).toUpperCase()"

    invoke-static {v1, v4}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/hiya/stingray/ui/common/n$c;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Lcom/hiya/stingray/ui/common/n$c;-><init>(ILjava/lang/CharSequence;)V

    invoke-static {v4}, Lkotlin/s/k;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/hiya/stingray/ui/common/n;->h(Ljava/util/List;)V

    .line 8
    sget v1, Lcom/hiya/stingray/o;->n3:I

    invoke-virtual {p0, v1}, Lcom/hiya/stingray/ui/v/a;->f1(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v4, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lcom/hiya/stingray/ui/common/o;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    if-eqz v8, :cond_0

    const-string v2, "context!!"

    invoke-static {v8, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x7f07005e

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 10
    invoke-direct {v6, v7, v2, p1}, Lcom/hiya/stingray/ui/common/o;-><init>(Landroid/content/Context;ILcom/hiya/stingray/ui/common/n;)V

    .line 11
    invoke-virtual {v6, v5}, Lcom/hiya/stingray/ui/common/o;->h(Z)V

    .line 12
    invoke-virtual {v6, v0}, Lcom/hiya/stingray/ui/common/o;->g(Z)V

    .line 13
    invoke-static {v4, v6}, Lcom/hiya/stingray/util/e0;->C(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 14
    invoke-virtual {p0, v1}, Lcom/hiya/stingray/ui/v/a;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 16
    :cond_1
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 17
    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 18
    :cond_3
    sget p1, Lcom/hiya/stingray/o;->n3:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/v/a;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hiya/stingray/ui/v/a;->s:Lcom/hiya/stingray/ui/v/a$a;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    :goto_0
    return-void

    :cond_4
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 19
    :cond_5
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2
.end method

.method public w0(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/hiya/stingray/ui/local/dialer/f$a$a;->a(Lcom/hiya/stingray/ui/local/dialer/f$a;Z)V

    return-void
.end method
