.class public Le/a/e/c2/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/components/EditBase;


# direct methods
.method public constructor <init>(Lcom/truecaller/ui/components/EditBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/c2/c0;->a:Lcom/truecaller/ui/components/EditBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    .line 1
    iget-object p1, p0, Le/a/e/c2/c0;->a:Lcom/truecaller/ui/components/EditBase;

    .line 2
    sget p2, Lcom/truecaller/ui/components/EditBase;->i:I

    .line 3
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p2}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x1

    xor-int/2addr p2, p3

    const/4 p4, 0x0

    if-eqz p2, :cond_1

    .line 4
    iget-boolean v0, p1, Lcom/truecaller/ui/components/EditBase;->e:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p1, Lcom/truecaller/ui/components/EditBase;->d:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, p3

    .line 7
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    .line 8
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v1, v4, v1

    .line 9
    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/widget/AutoCompleteTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, p4

    .line 11
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, p3

    iget-object v3, p1, Lcom/truecaller/ui/components/EditBase;->d:Landroid/graphics/drawable/Drawable;

    .line 12
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v1, v4, v1

    .line 13
    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/widget/AutoCompleteTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/truecaller/ui/components/EditBase;->a()V

    .line 15
    :goto_0
    iget-object p1, p1, Lcom/truecaller/ui/components/EditBase;->h:Lcom/truecaller/ui/components/EditBase$a;

    if-eqz p1, :cond_3

    .line 16
    check-cast p1, Le/a/w4/s/p;

    .line 17
    iget-object p1, p1, Le/a/w4/s/p;->a:Lcom/truecaller/search/global/GlobalSearchResultActivity;

    .line 18
    iget-object v0, p1, Lcom/truecaller/search/global/GlobalSearchResultActivity;->m:Landroid/view/View;

    if-nez p2, :cond_2

    iget-boolean p1, p1, Lcom/truecaller/search/global/GlobalSearchResultActivity;->u:Z

    if-eqz p1, :cond_2

    move p4, p3

    .line 19
    :cond_2
    invoke-static {v0, p4, p3}, Le/a/o5/j0;->v(Landroid/view/View;ZZ)Landroid/view/View;

    :cond_3
    return-void
.end method
