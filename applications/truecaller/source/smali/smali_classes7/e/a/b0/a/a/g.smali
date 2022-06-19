.class public Le/a/b0/a/a/g;
.super Ln3/b/a/p;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final c:Landroid/widget/ListAdapter;

.field public final d:Z

.field public e:Landroid/widget/AdapterView$OnItemClickListener;

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListAdapter;)V
    .locals 1

    .line 1
    sget v0, Lcom/truecaller/common/R$style;->Theme_AppCompat_Light_Dialog_Alert:I

    invoke-direct {p0, p1, v0}, Ln3/b/a/p;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p2, p0, Le/a/b0/a/a/g;->c:Landroid/widget/ListAdapter;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Le/a/b0/a/a/g;->d:Z

    .line 4
    invoke-virtual {p0}, Ln3/b/a/p;->a()Ln3/b/a/j;

    move-result-object p2

    invoke-virtual {p2, p1}, Ln3/b/a/j;->u(I)Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/b0/a/a/g;->d:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/b0/a/a/g;->c:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final d(I)V
    .locals 1

    .line 1
    sget v0, Lcom/truecaller/common/R$id;->title:I

    invoke-virtual {p0, v0}, Ln3/b/a/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ln3/b/a/p;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/truecaller/common/R$layout;->dialog_filterable:I

    invoke-virtual {p0, p1}, Ln3/b/a/p;->setContentView(I)V

    .line 3
    sget p1, Lcom/truecaller/common/R$id;->editor:I

    invoke-virtual {p0, p1}, Ln3/b/a/p;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 4
    iget-boolean v0, p0, Le/a/b0/a/a/g;->d:Z

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 7
    iget v0, p0, Le/a/b0/a/a/g;->g:I

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 9
    iget v0, p0, Le/a/b0/a/a/g;->f:I

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 11
    :cond_1
    :goto_0
    iget p1, p0, Le/a/b0/a/a/g;->h:I

    invoke-virtual {p0, p1}, Le/a/b0/a/a/g;->d(I)V

    .line 12
    sget p1, Lcom/truecaller/common/R$id;->list:I

    invoke-virtual {p0, p1}, Ln3/b/a/p;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 13
    iget-object v0, p0, Le/a/b0/a/a/g;->c:Landroid/widget/ListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 14
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln3/b/a/p;->dismiss()V

    .line 2
    iget-object v0, p0, Le/a/b0/a/a/g;->e:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 3
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    .line 1
    iput p1, p0, Le/a/b0/a/a/g;->h:I

    .line 2
    invoke-virtual {p0, p1}, Le/a/b0/a/a/g;->d(I)V

    return-void
.end method
