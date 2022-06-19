.class public Le/a/l/i1;
.super Ln3/b/a/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/l/i1$a;
    }
.end annotation


# instance fields
.field public d:Landroidx/appcompat/widget/AppCompatEditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Ln3/b/a/g;-><init>(Landroid/content/Context;I)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f1204f8

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v1, p0, Ln3/b/a/g;->c:Landroidx/appcompat/app/AlertController;

    .line 5
    iput-object p1, v1, Landroidx/appcompat/app/AlertController;->f:Ljava/lang/CharSequence;

    .line 6
    iget-object v1, v1, Landroidx/appcompat/app/AlertController;->F:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :cond_0
    new-instance p1, Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    .line 9
    invoke-direct {p1, v1, v2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    iput-object p1, p0, Le/a/l/i1;->d:Landroidx/appcompat/widget/AppCompatEditText;

    const/4 v1, 0x1

    .line 11
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 12
    iget-object p1, p0, Le/a/l/i1;->d:Landroidx/appcompat/widget/AppCompatEditText;

    const v2, 0x7f1204a3

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 13
    iget-object p1, p0, Le/a/l/i1;->d:Landroidx/appcompat/widget/AppCompatEditText;

    new-instance v2, Le/a/l/h1;

    invoke-direct {v2, p0}, Le/a/l/h1;-><init>(Le/a/l/i1;)V

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 14
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {p1, v2}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result p1

    .line 15
    iget-object v2, p0, Le/a/l/i1;->d:Landroidx/appcompat/widget/AppCompatEditText;

    .line 16
    iget-object v3, p0, Ln3/b/a/g;->c:Landroidx/appcompat/app/AlertController;

    .line 17
    iput-object v2, v3, Landroidx/appcompat/app/AlertController;->h:Landroid/view/View;

    .line 18
    iput v0, v3, Landroidx/appcompat/app/AlertController;->i:I

    .line 19
    iput-boolean v1, v3, Landroidx/appcompat/app/AlertController;->n:Z

    .line 20
    iput p1, v3, Landroidx/appcompat/app/AlertController;->j:I

    .line 21
    iput v0, v3, Landroidx/appcompat/app/AlertController;->k:I

    .line 22
    iput p1, v3, Landroidx/appcompat/app/AlertController;->l:I

    .line 23
    iput v0, v3, Landroidx/appcompat/app/AlertController;->m:I

    return-void
.end method


# virtual methods
.method public final g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l/i1;->d:Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()V
    .locals 3

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Ln3/b/a/g;->d(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Le/a/l/i1;->d:Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Le/a/l/i1;->g()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public show()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    invoke-virtual {p0}, Le/a/l/i1;->h()V

    return-void
.end method
