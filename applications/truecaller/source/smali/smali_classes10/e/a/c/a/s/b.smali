.class public final Le/a/c/a/s/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic a:Lcom/truecaller/insights/ui/widget/SearchEditText;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/widget/SearchEditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/c/a/s/b;->a:Lcom/truecaller/insights/ui/widget/SearchEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    const-string v0, "arg0"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p2, "s"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    const-string p2, "s"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/c/a/s/b;->a:Lcom/truecaller/insights/ui/widget/SearchEditText;

    .line 2
    sget p2, Lcom/truecaller/insights/ui/widget/SearchEditText;->h:I

    .line 3
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p2}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x1

    xor-int/2addr p2, p3

    if-eqz p2, :cond_1

    .line 4
    iget-boolean p2, p1, Lcom/truecaller/insights/ui/widget/SearchEditText;->e:Z

    const/4 p4, 0x3

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p1, Lcom/truecaller/insights/ui/widget/SearchEditText;->d:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object p3, v0, p3

    .line 7
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 8
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object p4, v1, p4

    .line 9
    invoke-virtual {p1, p2, p3, v0, p4}, Landroid/widget/AutoCompleteTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v0, 0x0

    aget-object p2, p2, v0

    .line 11
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object p3, v0, p3

    .line 12
    iget-object v0, p1, Lcom/truecaller/insights/ui/widget/SearchEditText;->d:Landroid/graphics/drawable/Drawable;

    .line 13
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object p4, v1, p4

    .line 14
    invoke-virtual {p1, p2, p3, v0, p4}, Landroid/widget/AutoCompleteTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p1}, Lcom/truecaller/insights/ui/widget/SearchEditText;->a()V

    :goto_0
    return-void
.end method
