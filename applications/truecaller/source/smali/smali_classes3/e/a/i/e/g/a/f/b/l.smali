.class public final Le/a/i/e/g/a/f/b/l;
.super Le/a/i/e/g/a/f/b/f;
.source "SourceFile"


# static fields
.field public static final synthetic h:[Ls1/a/l;


# instance fields
.field public final b:I

.field public final c:Ls1/b0/c;

.field public final d:Ls1/b0/c;

.field public final e:Lcom/truecaller/ads/offline/dto/TextInputItemUiComponent;

.field public final f:Ljava/lang/String;

.field public final g:Le/a/i/e/g/a/f/b/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-class v0, Le/a/i/e/g/a/f/b/l;

    const/4 v1, 0x2

    new-array v1, v1, [Ls1/a/l;

    const-string v2, "textInputLayout"

    const-string v3, "getTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;"

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Le/d/c/a/a;->e0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/h;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "textInputEditText"

    const-string v3, "getTextInputEditText()Lcom/google/android/material/textfield/TextInputEditText;"

    invoke-static {v0, v2, v3, v4}, Le/d/c/a/a;->e0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/h;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Le/a/i/e/g/a/f/b/l;->h:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/ads/offline/dto/TextInputItemUiComponent;Ljava/lang/String;Le/a/i/e/g/a/f/b/h;Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p4}, Le/a/i/e/g/a/f/b/f;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Le/a/i/e/g/a/f/b/l;->e:Lcom/truecaller/ads/offline/dto/TextInputItemUiComponent;

    iput-object p2, p0, Le/a/i/e/g/a/f/b/l;->f:Ljava/lang/String;

    iput-object p3, p0, Le/a/i/e/g/a/f/b/l;->g:Le/a/i/e/g/a/f/b/h;

    .line 2
    sget p1, Lcom/truecaller/ads/R$layout;->offline_leadgen_item_textinput:I

    iput p1, p0, Le/a/i/e/g/a/f/b/l;->b:I

    .line 3
    new-instance p1, Ls1/b0/a;

    invoke-direct {p1}, Ls1/b0/a;-><init>()V

    .line 4
    iput-object p1, p0, Le/a/i/e/g/a/f/b/l;->c:Ls1/b0/c;

    .line 5
    new-instance p1, Ls1/b0/a;

    invoke-direct {p1}, Ls1/b0/a;-><init>()V

    .line 6
    iput-object p1, p0, Le/a/i/e/g/a/f/b/l;->d:Ls1/b0/c;

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/i/e/g/a/f/b/l;->b:I

    return v0
.end method

.method public c(Landroid/view/View;)V
    .locals 5

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
    iget-object v1, p0, Le/a/i/e/g/a/f/b/l;->c:Ls1/b0/c;

    sget-object v2, Le/a/i/e/g/a/f/b/l;->h:[Ls1/a/l;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-interface {v1, p0, v4, v0}, Ls1/b0/c;->a(Ljava/lang/Object;Ls1/a/l;Ljava/lang/Object;)V

    .line 3
    sget v0, Lcom/truecaller/ads/R$id;->textInputEditText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById(R.id.textInputEditText)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    .line 4
    iget-object v0, p0, Le/a/i/e/g/a/f/b/l;->d:Ls1/b0/c;

    const/4 v1, 0x1

    aget-object v4, v2, v1

    invoke-interface {v0, p0, v4, p1}, Ls1/b0/c;->a(Ljava/lang/Object;Ls1/a/l;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Le/a/i/e/g/a/f/b/l;->e()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    iget-object v0, p0, Le/a/i/e/g/a/f/b/l;->e:Lcom/truecaller/ads/offline/dto/TextInputItemUiComponent;

    invoke-virtual {v0}, Lcom/truecaller/ads/offline/dto/TextInputItemUiComponent;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Le/a/i/e/g/a/f/b/l;->d:Ls1/b0/c;

    aget-object v0, v2, v1

    invoke-interface {p1, p0, v0}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    .line 7
    iget-object v0, p0, Le/a/i/e/g/a/f/b/l;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v3, v1

    :cond_1
    xor-int/lit8 v2, v3, 0x1

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Le/a/i/e/g/a/f/b/l;->e:Lcom/truecaller/ads/offline/dto/TextInputItemUiComponent;

    invoke-virtual {v0}, Lcom/truecaller/ads/offline/dto/TextInputItemUiComponent;->d()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Le/a/i/e/g/a/f/b/l;->e:Lcom/truecaller/ads/offline/dto/TextInputItemUiComponent;

    invoke-virtual {v0}, Lcom/truecaller/ads/offline/dto/TextInputItemUiComponent;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x60

    sparse-switch v2, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v2, "firstName"

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :sswitch_1
    const-string v2, "phone"

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x3

    goto :goto_3

    :sswitch_2
    const-string v2, "email"

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0x20

    goto :goto_3

    :sswitch_3
    const-string v2, "lastName"

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_2
    move v1, v3

    .line 13
    :cond_4
    :goto_3
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 14
    new-instance v0, Le/a/i/e/g/a/f/a/a;

    iget-object v1, p0, Le/a/i/e/g/a/f/b/l;->e:Lcom/truecaller/ads/offline/dto/TextInputItemUiComponent;

    invoke-virtual {v1}, Lcom/truecaller/ads/offline/dto/TextInputItemUiComponent;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Le/a/i/e/g/a/f/b/l;->g:Le/a/i/e/g/a/f/b/h;

    invoke-direct {v0, v1, v2}, Le/a/i/e/g/a/f/a/a;-><init>(Ljava/lang/String;Le/a/i/e/g/a/f/b/h;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x56ffb9bf -> :sswitch_3
        0x5c24b9c -> :sswitch_2
        0x65b3d6e -> :sswitch_1
        0x7eae95b -> :sswitch_0
    .end sparse-switch
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/i/e/g/a/f/b/l;->e()Lcom/google/android/material/textfield/TextInputLayout;

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
    invoke-virtual {p0}, Le/a/i/e/g/a/f/b/l;->e()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final e()Lcom/google/android/material/textfield/TextInputLayout;
    .locals 3

    iget-object v0, p0, Le/a/i/e/g/a/f/b/l;->c:Ls1/b0/c;

    sget-object v1, Le/a/i/e/g/a/f/b/l;->h:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method
