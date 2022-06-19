.class public final synthetic Le/a/w4/s/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/truecaller/search/global/GlobalSearchResultActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/search/global/GlobalSearchResultActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/w4/s/l;->a:Lcom/truecaller/search/global/GlobalSearchResultActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Le/a/w4/s/l;->a:Lcom/truecaller/search/global/GlobalSearchResultActivity;

    .line 1
    iget-object v1, v0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->k:Lcom/truecaller/ui/components/EditBase;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 2
    iget-object v1, v0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->k:Lcom/truecaller/ui/components/EditBase;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0d043a

    const/4 v4, 0x0

    .line 3
    invoke-static {v0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f0a1179

    .line 4
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f120eec

    .line 5
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 6
    new-instance v4, Landroid/widget/PopupWindow;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v1, v5, v6, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 7
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 9
    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    .line 10
    iget-object v1, v0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->k:Lcom/truecaller/ui/components/EditBase;

    .line 11
    invoke-virtual {v4, v1, v3, v3, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 12
    iget-object v0, v0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->e:Le/a/w4/s/e0;

    invoke-interface {v0}, Le/a/w4/s/e0;->bj()V

    :cond_1
    return-void
.end method
