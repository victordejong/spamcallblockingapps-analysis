.class public final Le/a/i/e/g/a/f/b/k;
.super Le/a/i/e/g/a/f/b/f;
.source "SourceFile"


# static fields
.field public static final synthetic h:[Ls1/a/l;


# instance fields
.field public final b:I

.field public final c:Ls1/b0/c;

.field public final d:Ls1/b0/c;

.field public final e:Lcom/truecaller/ads/offline/dto/SelectInputItemUiComponent;

.field public final f:Ljava/lang/String;

.field public final g:Le/a/i/e/g/a/f/b/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-class v0, Le/a/i/e/g/a/f/b/k;

    const/4 v1, 0x2

    new-array v1, v1, [Ls1/a/l;

    const-string v2, "textInputLayout"

    const-string v3, "getTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;"

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Le/d/c/a/a;->e0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/h;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "autoCompleteTextView"

    const-string v3, "getAutoCompleteTextView()Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;"

    invoke-static {v0, v2, v3, v4}, Le/d/c/a/a;->e0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/h;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Le/a/i/e/g/a/f/b/k;->h:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/ads/offline/dto/SelectInputItemUiComponent;Ljava/lang/String;Le/a/i/e/g/a/f/b/h;Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p4}, Le/a/i/e/g/a/f/b/f;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Le/a/i/e/g/a/f/b/k;->e:Lcom/truecaller/ads/offline/dto/SelectInputItemUiComponent;

    iput-object p2, p0, Le/a/i/e/g/a/f/b/k;->f:Ljava/lang/String;

    iput-object p3, p0, Le/a/i/e/g/a/f/b/k;->g:Le/a/i/e/g/a/f/b/h;

    .line 2
    sget p1, Lcom/truecaller/ads/R$layout;->offline_leadgen_item_selectinput:I

    iput p1, p0, Le/a/i/e/g/a/f/b/k;->b:I

    .line 3
    new-instance p1, Ls1/b0/a;

    invoke-direct {p1}, Ls1/b0/a;-><init>()V

    .line 4
    iput-object p1, p0, Le/a/i/e/g/a/f/b/k;->c:Ls1/b0/c;

    .line 5
    new-instance p1, Ls1/b0/a;

    invoke-direct {p1}, Ls1/b0/a;-><init>()V

    .line 6
    iput-object p1, p0, Le/a/i/e/g/a/f/b/k;->d:Ls1/b0/c;

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/i/e/g/a/f/b/k;->b:I

    return v0
.end method

.method public c(Landroid/view/View;)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/truecaller/ads/R$id;->textInputLayout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.textInputLayout)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 2
    iget-object v1, p0, Le/a/i/e/g/a/f/b/k;->c:Ls1/b0/c;

    sget-object v2, Le/a/i/e/g/a/f/b/k;->h:[Ls1/a/l;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-interface {v1, p0, v4, v0}, Ls1/b0/c;->a(Ljava/lang/Object;Ls1/a/l;Ljava/lang/Object;)V

    .line 3
    sget v0, Lcom/truecaller/ads/R$id;->autoCompleteTextView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.autoCompleteTextView)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    .line 4
    iget-object v1, p0, Le/a/i/e/g/a/f/b/k;->d:Ls1/b0/c;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-interface {v1, p0, v2, v0}, Ls1/b0/c;->a(Ljava/lang/Object;Ls1/a/l;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Le/a/i/e/g/a/f/b/k;->e()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iget-object v1, p0, Le/a/i/e/g/a/f/b/k;->e:Lcom/truecaller/ads/offline/dto/SelectInputItemUiComponent;

    .line 6
    iget-object v1, v1, Lcom/truecaller/ads/offline/dto/SelectInputItemUiComponent;->g:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Le/a/i/e/g/a/f/b/k;->e:Lcom/truecaller/ads/offline/dto/SelectInputItemUiComponent;

    .line 9
    iget-object v0, v0, Lcom/truecaller/ads/offline/dto/SelectInputItemUiComponent;->k:Ljava/util/List;

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .line 12
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    if-nez v5, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_2
    iget-object v0, p0, Le/a/i/e/g/a/f/b/k;->d:Ls1/b0/c;

    sget-object v2, Le/a/i/e/g/a/f/b/k;->h:[Ls1/a/l;

    aget-object v2, v2, v4

    invoke-interface {v0, p0, v2}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    .line 14
    iget-object v2, p0, Le/a/i/e/g/a/f/b/k;->f:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-static {v2}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move v5, v3

    goto :goto_3

    :cond_4
    :goto_2
    move v5, v4

    :goto_3
    xor-int/2addr v4, v5

    if-eqz v4, :cond_5

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_6

    goto :goto_5

    :cond_6
    iget-object v2, p0, Le/a/i/e/g/a/f/b/k;->e:Lcom/truecaller/ads/offline/dto/SelectInputItemUiComponent;

    .line 15
    iget-object v2, v2, Lcom/truecaller/ads/offline/dto/SelectInputItemUiComponent;->i:Ljava/lang/String;

    .line 16
    :goto_5
    invoke-virtual {v0, v2, v3}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 17
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v3, Lcom/truecaller/ads/R$layout;->offline_leadgen_item_autocomplete_dropdown:I

    invoke-direct {v2, p1, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 18
    new-instance p1, Le/a/i/e/g/a/f/a/a;

    iget-object v1, p0, Le/a/i/e/g/a/f/b/k;->e:Lcom/truecaller/ads/offline/dto/SelectInputItemUiComponent;

    .line 19
    iget-object v1, v1, Lcom/truecaller/ads/offline/dto/SelectInputItemUiComponent;->h:Ljava/lang/String;

    .line 20
    iget-object v2, p0, Le/a/i/e/g/a/f/b/k;->g:Le/a/i/e/g/a/f/b/h;

    invoke-direct {p1, v1, v2}, Le/a/i/e/g/a/f/a/a;-><init>(Ljava/lang/String;Le/a/i/e/g/a/f/b/h;)V

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 21
    new-instance p1, Le/a/i/e/g/a/f/b/k$a;

    invoke-direct {p1, v0}, Le/a/i/e/g/a/f/b/k$a;-><init>(Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;)V

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/i/e/g/a/f/b/k;->e()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 2
    invoke-virtual {p0}, Le/a/i/e/g/a/f/b/k;->e()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final e()Lcom/google/android/material/textfield/TextInputLayout;
    .locals 3

    iget-object v0, p0, Le/a/i/e/g/a/f/b/k;->c:Ls1/b0/c;

    sget-object v1, Le/a/i/e/g/a/f/b/k;->h:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method
