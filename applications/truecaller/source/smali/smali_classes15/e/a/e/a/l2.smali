.class public Le/a/e/a/l2;
.super Le/a/e/a/c2;
.source "SourceFile"


# instance fields
.field public a:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/e/a/c2;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "layout_resource"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "title_resource"

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "title"

    .line 4
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0c6f

    .line 6
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Le/a/e/a/l2;->a:Landroid/widget/EditText;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 8
    iget-object v3, p0, Le/a/e/a/l2;->a:Landroid/widget/EditText;

    const-string v4, "initial_text"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v3, p0, Le/a/e/a/l2;->a:Landroid/widget/EditText;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    const-string v3, "hint_resource"

    .line 10
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 11
    iget-object v3, p0, Le/a/e/a/l2;->a:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 12
    :cond_0
    new-instance v2, Ln3/b/a/g$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v3

    invoke-direct {v2, v3}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 13
    iget-object v3, v2, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v0, v3, Landroidx/appcompat/app/AlertController$b;->u:Landroid/view/View;

    const/4 v0, 0x0

    .line 14
    iput v0, v3, Landroidx/appcompat/app/AlertController$b;->t:I

    const v0, 0x7f1206fb

    .line 15
    new-instance v3, Le/a/e/a/e;

    invoke-direct {v3, p0}, Le/a/e/a/e;-><init>(Le/a/e/a/l2;)V

    .line 16
    invoke-virtual {v2, v0, v3}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    const v0, 0x7f120726

    new-instance v3, Le/a/e/a/f;

    invoke-direct {v3, p0}, Le/a/e/a/f;-><init>(Le/a/e/a/l2;)V

    .line 17
    invoke-virtual {v2, v0, v3}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    if-lez v1, :cond_1

    .line 18
    invoke-virtual {v2, v1}, Ln3/b/a/g$a;->m(I)Ln3/b/a/g$a;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 19
    iget-object v0, v2, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->d:Ljava/lang/CharSequence;

    .line 20
    :cond_2
    :goto_0
    invoke-virtual {v2}, Ln3/b/a/g$a;->a()Ln3/b/a/g;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object p1
.end method
