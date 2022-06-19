.class public Le/a/r/x/q;
.super Le/a/r/x/m;
.source "SourceFile"

# interfaces
.implements Le/a/r/x/t;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Ln3/w/a/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/r/x/q$a;
    }
.end annotation


# instance fields
.field public i:Landroid/widget/ImageView;

.field public j:Lcom/truecaller/wizard/internal/components/EditText;

.field public k:Lcom/truecaller/wizard/internal/components/EditText;

.field public l:Lcom/truecaller/wizard/internal/components/EditText;

.field public m:Landroid/view/View;

.field public n:Landroid/widget/ImageButton;

.field public o:Le/a/r/x/s;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final p:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/a/r/x/m;-><init>()V

    .line 2
    new-instance v0, Le/a/r/x/j;

    invoke-direct {v0, p0}, Le/a/r/x/j;-><init>(Le/a/r/x/q;)V

    iput-object v0, p0, Le/a/r/x/q;->p:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public Bc(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/r/x/q;->j:Lcom/truecaller/wizard/internal/components/EditText;

    int-to-long v1, p1

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, v2}, Le/a/p5/s0/f;->X(Landroid/view/View;ZJ)V

    return-void
.end method

.method public Bo()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/r/t/e;->QA()Le/a/r/t/c;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Page_AdsChoices"

    .line 2
    invoke-virtual {v0, v2, v1}, Le/a/r/t/c;->Ia(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public Bw()V
    .locals 1

    .line 1
    sget v0, Lcom/truecaller/wizard/R$string;->Profile_InvalidEmail:I

    invoke-virtual {p0, v0}, Le/a/r/t/e;->a(I)V

    return-void
.end method

.method public Du()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/r/x/q;->m:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public Ma()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r/x/q;->l:Lcom/truecaller/wizard/internal/components/EditText;

    invoke-virtual {v0}, Lcom/truecaller/wizard/internal/components/EditText;->d()Z

    move-result v0

    return v0
.end method

.method public O5()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/r/t/e;->QA()Le/a/r/t/c;

    move-result-object v0

    invoke-virtual {v0}, Le/a/r/t/c;->ra()V

    return-void
.end method

.method public Ot()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/r/x/q;->m:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public Qg()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/r/t/e;->QA()Le/a/r/t/c;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Page_DrawPermission"

    .line 2
    invoke-virtual {v0, v2, v1}, Le/a/r/t/c;->Ia(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public Zo()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r/x/q;->j:Lcom/truecaller/wizard/internal/components/EditText;

    invoke-virtual {v0}, Lcom/truecaller/wizard/internal/components/EditText;->d()Z

    move-result v0

    return v0
.end method

.method public a0()V
    .locals 0

    .line 1
    invoke-super {p0}, Le/a/r/t/e;->a0()V

    return-void
.end method

.method public a5(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/a/r/t/e;->m(Ljava/lang/String;)V

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/r/x/q;->o:Le/a/r/x/s;

    check-cast p1, Le/a/r/x/u;

    .line 2
    invoke-virtual {p1}, Le/a/r/x/u;->Jj()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/x/t;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/r/x/t;->Du()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/x/t;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/r/x/t;->Ot()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b0()V
    .locals 0

    .line 1
    invoke-super {p0}, Le/a/r/t/e;->b0()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public cs()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r/x/q;->k:Lcom/truecaller/wizard/internal/components/EditText;

    invoke-virtual {v0}, Lcom/truecaller/wizard/internal/components/EditText;->d()Z

    move-result v0

    return v0
.end method

.method public e0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Le/a/p5/s0/f;->W(Landroid/view/View;Z)V

    return-void
.end method

.method public e3()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/r/t/e;->QA()Le/a/r/t/c;

    move-result-object v0

    invoke-virtual {v0}, Le/a/r/t/c;->za()V

    return-void
.end method

.method public h3()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/r/t/e;->QA()Le/a/r/t/c;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Page_AccessContacts"

    .line 2
    invoke-virtual {v0, v2, v1}, Le/a/r/t/c;->Ia(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public ig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r/x/q;->j:Lcom/truecaller/wizard/internal/components/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Le/a/r/x/q;->k:Lcom/truecaller/wizard/internal/components/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Le/a/r/x/q;->l:Lcom/truecaller/wizard/internal/components/EditText;

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    .line 1
    iget-object p1, p0, Le/a/r/x/q;->o:Le/a/r/x/s;

    invoke-virtual {p0}, Le/a/r/x/m;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Le/a/b0/q/s;->f(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p2

    check-cast p1, Le/a/r/x/u;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "uri"

    invoke-static {p2, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p3, Le/a/r/x/u$a$a;

    invoke-direct {p3, p2}, Le/a/r/x/u$a$a;-><init>(Landroid/net/Uri;)V

    iput-object p3, p1, Le/a/r/x/u;->d:Le/a/r/x/u$a;

    .line 4
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/x/t;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Le/a/r/x/t;->u(Landroid/net/Uri;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Le/a/r/x/m;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Le/a/b0/q/s;->j(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 6
    invoke-virtual {p0}, Le/a/r/x/m;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Le/a/r/x/m;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Le/a/b0/q/s;->g(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p3

    invoke-static {p1, p3}, Le/a/b0/q/s;->b(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1, p2}, Le/a/b0/q/t;->l(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)Z

    goto :goto_0

    :cond_2
    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    if-eqz p3, :cond_3

    .line 7
    invoke-super {p0}, Le/a/r/t/e;->a0()V

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Ln3/w/a/a;

    move-result-object p1

    sget p2, Lcom/truecaller/wizard/R$id;->wizard_loader_photo:I

    .line 9
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p0}, Le/a/r/x/m;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le/a/b0/q/s;->g(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 10
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "source"

    .line 11
    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p3, "destination"

    .line 12
    invoke-virtual {v1, p3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 13
    invoke-virtual {p1, p2, v1, p0}, Ln3/w/a/a;->d(ILandroid/os/Bundle;Ln3/w/a/a$a;)Ln3/w/b/b;

    :cond_3
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lcom/truecaller/wizard/R$id;->nextButton:I

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Le/a/r/x/q;->o:Le/a/r/x/s;

    iget-object v0, p0, Le/a/r/x/q;->j:Lcom/truecaller/wizard/internal/components/EditText;

    .line 4
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Le/a/r/x/q;->k:Lcom/truecaller/wizard/internal/components/EditText;

    .line 5
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Le/a/r/x/q;->l:Lcom/truecaller/wizard/internal/components/EditText;

    .line 6
    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    check-cast p1, Le/a/r/x/u;

    .line 8
    invoke-virtual {p1, v0, v1, v2}, Le/a/r/x/u;->Kj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 9
    :cond_0
    sget v0, Lcom/truecaller/wizard/R$id;->photo:I

    if-ne p1, v0, :cond_7

    .line 10
    iget-object p1, p0, Le/a/r/x/q;->o:Le/a/r/x/s;

    check-cast p1, Le/a/r/x/u;

    .line 11
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/r/x/t;

    if-eqz v0, :cond_a

    .line 12
    iget-object p1, p1, Le/a/r/x/u;->d:Le/a/r/x/u$a;

    .line 13
    instance-of v1, p1, Le/a/r/x/u$a$b;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    check-cast p1, Le/a/r/x/u$a$b;

    .line 14
    iget-object p1, p1, Le/a/r/x/u$a$b;->b:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v3

    :goto_1
    if-nez p1, :cond_5

    goto :goto_2

    .line 16
    :cond_3
    instance-of v1, p1, Le/a/r/x/u$a$a;

    if-eqz v1, :cond_4

    :goto_2
    move v2, v3

    goto :goto_3

    .line 17
    :cond_4
    instance-of p1, p1, Le/a/r/x/u$a$c;

    if-eqz p1, :cond_6

    .line 18
    :cond_5
    :goto_3
    invoke-interface {v0, v2}, Le/a/r/x/t;->v7(Z)V

    goto :goto_4

    .line 19
    :cond_6
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 20
    :cond_7
    sget v0, Lcom/truecaller/wizard/R$id;->closeButton:I

    if-ne p1, v0, :cond_a

    .line 21
    iget-object p1, p0, Le/a/r/x/q;->o:Le/a/r/x/s;

    check-cast p1, Le/a/r/x/u;

    .line 22
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/r/x/t;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Le/a/r/x/t;->e0()V

    .line 23
    :cond_8
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/x/t;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Le/a/r/x/t;->os()V

    .line 24
    :cond_9
    invoke-virtual {p0}, Le/a/r/x/q;->os()V

    :cond_a
    :goto_4
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Ln3/w/b/b;
    .locals 1

    .line 1
    sget v0, Lcom/truecaller/wizard/R$id;->wizard_loader_photo:I

    if-ne p1, v0, :cond_0

    .line 2
    new-instance p1, Le/a/r/x/q$a;

    invoke-virtual {p0}, Le/a/r/x/m;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Le/a/r/x/q$a;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    sget p3, Lcom/truecaller/wizard/R$layout;->wizard_fragment_profile_input:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    sget p2, Lcom/truecaller/wizard/R$id;->photo:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Le/a/r/x/q;->i:Landroid/widget/ImageView;

    .line 3
    sget p2, Lcom/truecaller/wizard/R$id;->firstName:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/truecaller/wizard/internal/components/EditText;

    iput-object p2, p0, Le/a/r/x/q;->j:Lcom/truecaller/wizard/internal/components/EditText;

    .line 4
    sget p2, Lcom/truecaller/wizard/R$id;->lastName:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/truecaller/wizard/internal/components/EditText;

    iput-object p2, p0, Le/a/r/x/q;->k:Lcom/truecaller/wizard/internal/components/EditText;

    .line 5
    sget p2, Lcom/truecaller/wizard/R$id;->email:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/truecaller/wizard/internal/components/EditText;

    iput-object p2, p0, Le/a/r/x/q;->l:Lcom/truecaller/wizard/internal/components/EditText;

    .line 6
    sget p2, Lcom/truecaller/wizard/R$id;->nextButton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Le/a/r/x/q;->m:Landroid/view/View;

    .line 7
    sget p2, Lcom/truecaller/wizard/R$id;->closeButton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Le/a/r/x/q;->n:Landroid/widget/ImageButton;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Le/a/r/t/e;->onDestroyView()V

    .line 2
    iget-object v0, p0, Le/a/r/x/q;->o:Le/a/r/x/s;

    check-cast v0, Le/a/u2/a/a;

    invoke-virtual {v0}, Le/a/u2/a/a;->c()V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Le/a/r/x/q;->o:Le/a/r/x/s;

    iget-object p2, p0, Le/a/r/x/q;->j:Lcom/truecaller/wizard/internal/components/EditText;

    .line 2
    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Le/a/r/x/q;->k:Lcom/truecaller/wizard/internal/components/EditText;

    .line 3
    invoke-virtual {p3}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Le/a/r/x/q;->l:Lcom/truecaller/wizard/internal/components/EditText;

    .line 4
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    check-cast p1, Le/a/r/x/u;

    .line 6
    invoke-virtual {p1}, Le/a/r/x/u;->Jj()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p1, p2, p3, v0}, Le/a/r/x/u;->Kj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onLoadFinished(Ln3/w/b/b;Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-super {p0}, Le/a/r/t/e;->b0()V

    .line 2
    invoke-virtual {p1}, Ln3/w/b/b;->getId()I

    move-result p1

    .line 3
    sget v0, Lcom/truecaller/wizard/R$id;->wizard_loader_photo:I

    if-ne p1, v0, :cond_3

    .line 4
    instance-of p1, p2, Landroid/net/Uri;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Le/a/r/x/m;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p2, Landroid/net/Uri;

    invoke-static {p1, p2}, Le/a/b0/q/s;->b(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x3

    invoke-static {p0, p1, p2}, Le/a/b0/q/t;->l(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)Z

    goto :goto_0

    .line 6
    :cond_0
    sget p1, Lcom/truecaller/wizard/R$string;->Profile_PhotoError:I

    invoke-virtual {p0, p1}, Le/a/r/t/e;->a(I)V

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Ln3/w/a/a;

    move-result-object p1

    check-cast p1, Ln3/w/a/b;

    .line 8
    iget-object p2, p1, Ln3/w/a/b;->b:Ln3/w/a/b$c;

    .line 9
    iget-boolean p2, p2, Ln3/w/a/b$c;->b:Z

    if-nez p2, :cond_2

    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p2, v1, :cond_1

    .line 11
    iget-object p2, p1, Ln3/w/a/b;->b:Ln3/w/a/b$c;

    .line 12
    iget-object p2, p2, Ln3/w/a/b$c;->a:Ln3/g/i;

    const/4 v1, 0x0

    .line 13
    invoke-virtual {p2, v0, v1}, Ln3/g/i;->g(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 14
    check-cast p2, Ln3/w/a/b$a;

    if-eqz p2, :cond_3

    const/4 v1, 0x1

    .line 15
    invoke-virtual {p2, v1}, Ln3/w/a/b$a;->m(Z)Ln3/w/b/b;

    .line 16
    iget-object p1, p1, Ln3/w/a/b;->b:Ln3/w/a/b$c;

    .line 17
    iget-object p1, p1, Ln3/w/a/b$c;->a:Ln3/g/i;

    .line 18
    iget-object p2, p1, Ln3/g/i;->b:[I

    iget v2, p1, Ln3/g/i;->d:I

    invoke-static {p2, v2, v0}, Ln3/g/d;->a([III)I

    move-result p2

    if-ltz p2, :cond_3

    .line 19
    iget-object v0, p1, Ln3/g/i;->c:[Ljava/lang/Object;

    aget-object v2, v0, p2

    sget-object v3, Ln3/g/i;->e:Ljava/lang/Object;

    if-eq v2, v3, :cond_3

    .line 20
    aput-object v3, v0, p2

    .line 21
    iput-boolean v1, p1, Ln3/g/i;->a:Z

    goto :goto_1

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "destroyLoader must be called on the main thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Called while creating a loader"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public onLoaderReset(Ln3/w/b/b;)V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    invoke-static {p2, p3}, Le/a/p5/s0/g;->M0([Ljava/lang/String;[I)V

    const/16 p2, 0xc9

    if-ne p1, p2, :cond_0

    .line 3
    array-length p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Le/a/r/x/m;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Le/a/b0/q/s;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Le/a/b0/q/t;->l(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)Z

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    sget p2, Lcom/truecaller/wizard/R$id;->nextButton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object p1, p0, Le/a/r/x/q;->i:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object p1, p0, Le/a/r/x/q;->j:Lcom/truecaller/wizard/internal/components/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 5
    iget-object p1, p0, Le/a/r/x/q;->j:Lcom/truecaller/wizard/internal/components/EditText;

    sget-object p2, Le/a/r/c/r;->b:Lcom/truecaller/wizard/internal/components/EditText$d;

    invoke-virtual {p1, p2}, Lcom/truecaller/wizard/internal/components/EditText;->setInputValidator(Lcom/truecaller/wizard/internal/components/EditText$d;)V

    .line 6
    iget-object p1, p0, Le/a/r/x/q;->j:Lcom/truecaller/wizard/internal/components/EditText;

    invoke-static {p1}, Le/a/p5/s0/g;->x(Landroid/widget/EditText;)V

    .line 7
    iget-object p1, p0, Le/a/r/x/q;->k:Lcom/truecaller/wizard/internal/components/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 8
    iget-object p1, p0, Le/a/r/x/q;->k:Lcom/truecaller/wizard/internal/components/EditText;

    invoke-virtual {p1, p2}, Lcom/truecaller/wizard/internal/components/EditText;->setInputValidator(Lcom/truecaller/wizard/internal/components/EditText$d;)V

    .line 9
    iget-object p1, p0, Le/a/r/x/q;->k:Lcom/truecaller/wizard/internal/components/EditText;

    invoke-static {p1}, Le/a/p5/s0/g;->x(Landroid/widget/EditText;)V

    .line 10
    iget-object p1, p0, Le/a/r/x/q;->l:Lcom/truecaller/wizard/internal/components/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 11
    iget-object p1, p0, Le/a/r/x/q;->l:Lcom/truecaller/wizard/internal/components/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 12
    iget-object p1, p0, Le/a/r/x/q;->l:Lcom/truecaller/wizard/internal/components/EditText;

    sget-object p2, Le/a/r/c/r;->c:Lcom/truecaller/wizard/internal/components/EditText$d;

    invoke-virtual {p1, p2}, Lcom/truecaller/wizard/internal/components/EditText;->setInputValidator(Lcom/truecaller/wizard/internal/components/EditText$d;)V

    .line 13
    iget-object p1, p0, Le/a/r/x/q;->n:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object p1, p0, Le/a/r/x/q;->o:Le/a/r/x/s;

    check-cast p1, Le/a/r/x/u;

    invoke-virtual {p1, p0}, Le/a/r/x/u;->Y0(Ljava/lang/Object;)V

    return-void
.end method

.method public os()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    invoke-virtual {v0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Le/a/r/x/q;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    new-instance v3, Landroidx/fragment/app/FragmentManager$n;

    const/4 v4, -0x1

    invoke-direct {v3, v0, v1, v4, v2}, Landroidx/fragment/app/FragmentManager$n;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;II)V

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroidx/fragment/app/FragmentManager;->B(Landroidx/fragment/app/FragmentManager$m;Z)V

    :cond_0
    return-void
.end method

.method public sm()V
    .locals 1

    .line 1
    sget v0, Lcom/truecaller/wizard/R$string;->WizardNetworkError:I

    invoke-virtual {p0, v0}, Le/a/r/t/e;->a(I)V

    return-void
.end method

.method public u(Landroid/net/Uri;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p0}, Le/a/m0/a1$k;->M1(Landroidx/fragment/app/Fragment;)Le/a/z3/e;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Le/a/z3/e;->k()Le/f/a/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/f/a/h;->S(Landroid/net/Uri;)Le/f/a/h;

    .line 3
    check-cast v0, Le/a/z3/d;

    const/4 p1, 0x1

    .line 4
    invoke-virtual {v0, p1}, Le/a/z3/d;->q0(Z)Le/a/z3/d;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Le/a/z3/d;->d0()Le/a/z3/d;

    move-result-object p1

    sget-object v0, Le/f/a/n/o/k;->b:Le/f/a/n/o/k;

    .line 6
    invoke-virtual {p1, v0}, Le/a/z3/d;->f0(Le/f/a/n/o/k;)Le/a/z3/d;

    move-result-object p1

    iget-object v0, p0, Le/a/r/x/q;->i:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {p1, v0}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Le/a/r/x/q;->i:Landroid/widget/ImageView;

    sget v0, Lcom/truecaller/wizard/R$drawable;->wizard_btn_photo:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public v7(Z)V
    .locals 2

    .line 1
    new-instance v0, Ln3/b/a/g$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/truecaller/wizard/R$string;->Profile_AddPhoto:I

    .line 2
    invoke-virtual {v0, v1}, Ln3/b/a/g$a;->m(I)Ln3/b/a/g$a;

    if-eqz p1, :cond_0

    .line 3
    sget p1, Lcom/truecaller/wizard/R$array;->Profile_PhotoMenuWithRemove:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/truecaller/wizard/R$array;->Profile_PhotoMenu:I

    :goto_0
    iget-object v1, p0, Le/a/r/x/q;->p:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, p1, v1}, Ln3/b/a/g$a;->c(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 4
    invoke-virtual {v0}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    return-void
.end method
