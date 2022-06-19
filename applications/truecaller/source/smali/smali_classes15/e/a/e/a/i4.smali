.class public Le/a/e/a/i4;
.super Ln3/b/a/p;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public c:Landroid/widget/Button;

.field public d:Landroid/net/Uri;

.field public e:Z

.field public f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Ln3/b/a/p;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-boolean v0, p0, Le/a/e/a/i4;->e:Z

    .line 3
    iput-object p2, p0, Le/a/e/a/i4;->g:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Le/a/e/a/i4;->h:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Le/a/e/a/i4;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const v1, 0x7f0a060d

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/a/e/a/i4;->e:Z

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f1207b4

    .line 4
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f1207b3

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v5, p0, Le/a/e/a/i4;->f:Ljava/lang/String;

    aput-object v5, p1, v0

    .line 5
    invoke-virtual {v1, v4, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Le/a/e/a/i4;->d:Landroid/net/Uri;

    .line 6
    invoke-static {v1, v2, v3, p1, v0}, Le/a/b0/q/g0;->R(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/net/Uri;)Z

    .line 7
    invoke-virtual {p0}, Ln3/b/a/p;->dismiss()V

    goto :goto_0

    :cond_0
    const v1, 0x7f0a0609

    if-ne p1, v1, :cond_1

    .line 8
    iput-boolean v0, p0, Le/a/e/a/i4;->e:Z

    .line 9
    invoke-virtual {p0}, Ln3/b/a/p;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Ln3/b/a/p;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0149

    .line 2
    invoke-virtual {p0, p1}, Ln3/b/a/p;->setContentView(I)V

    const p1, 0x7f0a060d

    .line 3
    invoke-virtual {p0, p1}, Ln3/b/a/p;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Le/a/e/a/i4;->c:Landroid/widget/Button;

    const p1, 0x7f0a0c68

    .line 4
    invoke-virtual {p0, p1}, Ln3/b/a/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c0a

    .line 5
    invoke-virtual {p0, v1}, Ln3/b/a/p;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0609

    .line 6
    invoke-virtual {p0, v3}, Ln3/b/a/p;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 7
    iget-object v4, p0, Le/a/e/a/i4;->c:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 8
    iget-object v4, p0, Le/a/e/a/i4;->g:Ljava/lang/String;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move-object v4, v5

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 10
    :goto_0
    iget-object v6, p0, Le/a/e/a/i4;->h:Ljava/lang/String;

    .line 11
    sget v7, Le/a/o5/j0;->b:I

    .line 12
    invoke-static {v6}, Le/a/b0/q/o;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-static {v0, v6}, Le/a/o5/j0;->t(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 14
    invoke-static {v2, v4}, Le/a/o5/j0;->t(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 15
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d0524

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 16
    iget-object v2, p0, Le/a/e/a/i4;->h:Ljava/lang/String;

    invoke-static {v0, p1, v2}, Le/a/o5/j0;->r(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 17
    invoke-static {v0, v1, v4}, Le/a/o5/j0;->r(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 18
    iget-object p1, p0, Le/a/e/a/i4;->i:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const p1, 0x7f0a0bbf

    .line 19
    invoke-virtual {p0, p1}, Ln3/b/a/p;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 20
    iget-object v2, p0, Le/a/e/a/i4;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v1, p0, Le/a/e/a/i4;->i:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Le/a/o5/j0;->r(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 22
    :cond_1
    new-instance p1, Le/a/e/a/h4;

    invoke-direct {p1, p0, v0}, Le/a/e/a/h4;-><init>(Le/a/e/a/i4;Landroid/view/View;)V

    .line 23
    iget-object p1, p0, Le/a/e/a/i4;->c:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Le/a/w1;

    invoke-interface {p1}, Le/a/w1;->s()Le/a/j2;

    move-result-object p1

    invoke-interface {p1}, Le/a/j2;->f0()Le/a/b0/q/j0;

    move-result-object p1

    .line 26
    iget-object v0, p0, Le/a/e/a/i4;->h:Ljava/lang/String;

    invoke-interface {p1, v0}, Le/a/b0/q/j0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/a/e/a/i4;->f:Ljava/lang/String;

    return-void
.end method
