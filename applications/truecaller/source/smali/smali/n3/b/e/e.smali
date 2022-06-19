.class public Ln3/b/e/e;
.super Landroid/view/ActionMode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/b/e/e$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ln3/b/e/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ln3/b/e/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/b/e/e;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Ln3/b/e/e;->b:Ln3/b/e/a;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/e/e;->b:Ln3/b/e/a;

    invoke-virtual {v0}, Ln3/b/e/a;->c()V

    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/e/e;->b:Ln3/b/e/a;

    invoke-virtual {v0}, Ln3/b/e/a;->d()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 3

    .line 1
    new-instance v0, Ln3/b/e/i/o;

    iget-object v1, p0, Ln3/b/e/e;->a:Landroid/content/Context;

    iget-object v2, p0, Ln3/b/e/e;->b:Ln3/b/e/a;

    invoke-virtual {v2}, Ln3/b/e/a;->e()Landroid/view/Menu;

    move-result-object v2

    check-cast v2, Ln3/k/d/a/a;

    invoke-direct {v0, v1, v2}, Ln3/b/e/i/o;-><init>(Landroid/content/Context;Ln3/k/d/a/a;)V

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/e/e;->b:Ln3/b/e/a;

    invoke-virtual {v0}, Ln3/b/e/a;->f()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/e/e;->b:Ln3/b/e/a;

    invoke-virtual {v0}, Ln3/b/e/a;->g()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/e/e;->b:Ln3/b/e/a;

    .line 2
    iget-object v0, v0, Ln3/b/e/a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/e/e;->b:Ln3/b/e/a;

    invoke-virtual {v0}, Ln3/b/e/a;->h()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitleOptionalHint()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/e/e;->b:Ln3/b/e/a;

    .line 2
    iget-boolean v0, v0, Ln3/b/e/a;->b:Z

    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/e/e;->b:Ln3/b/e/a;

    invoke-virtual {v0}, Ln3/b/e/a;->i()V

    return-void
.end method

.method public isTitleOptional()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/e/e;->b:Ln3/b/e/a;

    invoke-virtual {v0}, Ln3/b/e/a;->j()Z

    move-result v0

    return v0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/e/e;->b:Ln3/b/e/a;

    invoke-virtual {v0, p1}, Ln3/b/e/a;->k(Landroid/view/View;)V

    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Ln3/b/e/e;->b:Ln3/b/e/a;

    invoke-virtual {v0, p1}, Ln3/b/e/a;->l(I)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/e/e;->b:Ln3/b/e/a;

    invoke-virtual {v0, p1}, Ln3/b/e/a;->m(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/e/e;->b:Ln3/b/e/a;

    .line 2
    iput-object p1, v0, Ln3/b/e/a;->a:Ljava/lang/Object;

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Ln3/b/e/e;->b:Ln3/b/e/a;

    invoke-virtual {v0, p1}, Ln3/b/e/a;->n(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/e/e;->b:Ln3/b/e/a;

    invoke-virtual {v0, p1}, Ln3/b/e/a;->o(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/e/e;->b:Ln3/b/e/a;

    invoke-virtual {v0, p1}, Ln3/b/e/a;->p(Z)V

    return-void
.end method
