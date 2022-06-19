.class public Ln3/b/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/drawerlayout/widget/DrawerLayout$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/b/a/c$d;,
        Ln3/b/a/c$c;,
        Ln3/b/a/c$a;,
        Ln3/b/a/c$b;
    }
.end annotation


# instance fields
.field public final a:Ln3/b/a/c$a;

.field public final b:Landroidx/drawerlayout/widget/DrawerLayout;

.field public c:Ln3/b/c/a/d;

.field public d:Z

.field public e:Z

.field public final f:I

.field public final g:I

.field public h:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ln3/b/a/c;->d:Z

    .line 3
    iput-boolean v0, p0, Ln3/b/a/c;->e:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Ln3/b/a/c;->h:Z

    if-eqz p3, :cond_0

    .line 5
    new-instance p1, Ln3/b/a/c$d;

    invoke-direct {p1, p3}, Ln3/b/a/c$d;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object p1, p0, Ln3/b/a/c;->a:Ln3/b/a/c$a;

    .line 6
    new-instance p1, Ln3/b/a/b;

    invoke-direct {p1, p0}, Ln3/b/a/b;-><init>(Ln3/b/a/c;)V

    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 7
    :cond_0
    instance-of p3, p1, Ln3/b/a/c$b;

    if-eqz p3, :cond_1

    .line 8
    check-cast p1, Ln3/b/a/c$b;

    invoke-interface {p1}, Ln3/b/a/c$b;->getDrawerToggleDelegate()Ln3/b/a/c$a;

    move-result-object p1

    iput-object p1, p0, Ln3/b/a/c;->a:Ln3/b/a/c$a;

    goto :goto_0

    .line 9
    :cond_1
    new-instance p3, Ln3/b/a/c$c;

    invoke-direct {p3, p1}, Ln3/b/a/c$c;-><init>(Landroid/app/Activity;)V

    iput-object p3, p0, Ln3/b/a/c;->a:Ln3/b/a/c$a;

    .line 10
    :goto_0
    iput-object p2, p0, Ln3/b/a/c;->b:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 11
    iput p4, p0, Ln3/b/a/c;->f:I

    .line 12
    iput p5, p0, Ln3/b/a/c;->g:I

    .line 13
    new-instance p1, Ln3/b/c/a/d;

    iget-object p2, p0, Ln3/b/a/c;->a:Ln3/b/a/c$a;

    invoke-interface {p2}, Ln3/b/a/c$a;->a()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Ln3/b/c/a/d;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Ln3/b/a/c;->c:Ln3/b/c/a/d;

    .line 14
    iget-object p1, p0, Ln3/b/a/c;->a:Ln3/b/a/c$a;

    invoke-interface {p1}, Ln3/b/a/c$a;->c()Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1
    invoke-virtual {p0, p1}, Ln3/b/a/c;->e(F)V

    .line 2
    iget-boolean p1, p0, Ln3/b/a/c;->e:Z

    if-eqz p1, :cond_0

    .line 3
    iget p1, p0, Ln3/b/a/c;->g:I

    .line 4
    iget-object v0, p0, Ln3/b/a/c;->a:Ln3/b/a/c$a;

    invoke-interface {v0, p1}, Ln3/b/a/c$a;->e(I)V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Ln3/b/a/c;->e(F)V

    .line 2
    iget-boolean p1, p0, Ln3/b/a/c;->e:Z

    if-eqz p1, :cond_0

    .line 3
    iget p1, p0, Ln3/b/a/c;->f:I

    .line 4
    iget-object v0, p0, Ln3/b/a/c;->a:Ln3/b/a/c$a;

    invoke-interface {v0, p1}, Ln3/b/a/c$a;->e(I)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 0

    return-void
.end method

.method public final e(F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 1
    iget-object v0, p0, Ln3/b/a/c;->c:Ln3/b/c/a/d;

    const/4 v1, 0x1

    .line 2
    iget-boolean v2, v0, Ln3/b/c/a/d;->i:Z

    if-eq v2, v1, :cond_1

    .line 3
    iput-boolean v1, v0, Ln3/b/c/a/d;->i:Z

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Ln3/b/a/c;->c:Ln3/b/c/a/d;

    const/4 v1, 0x0

    .line 6
    iget-boolean v2, v0, Ln3/b/c/a/d;->i:Z

    if-eqz v2, :cond_1

    .line 7
    iput-boolean v1, v0, Ln3/b/c/a/d;->i:Z

    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Ln3/b/a/c;->c:Ln3/b/c/a/d;

    .line 10
    iget v1, v0, Ln3/b/c/a/d;->j:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_2

    .line 11
    iput p1, v0, Ln3/b/c/a/d;->j:F

    .line 12
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_2
    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/b/a/c;->b:Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->o(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    invoke-virtual {p0, v0}, Ln3/b/a/c;->e(F)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Ln3/b/a/c;->e(F)V

    .line 4
    :goto_0
    iget-boolean v0, p0, Ln3/b/a/c;->e:Z

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Ln3/b/a/c;->c:Ln3/b/c/a/d;

    .line 6
    iget-object v2, p0, Ln3/b/a/c;->b:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->o(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget v1, p0, Ln3/b/a/c;->g:I

    goto :goto_1

    :cond_1
    iget v1, p0, Ln3/b/a/c;->f:I

    .line 8
    :goto_1
    iget-boolean v2, p0, Ln3/b/a/c;->h:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Ln3/b/a/c;->a:Ln3/b/a/c$a;

    invoke-interface {v2}, Ln3/b/a/c$a;->b()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    .line 9
    iput-boolean v2, p0, Ln3/b/a/c;->h:Z

    .line 10
    :cond_2
    iget-object v2, p0, Ln3/b/a/c;->a:Ln3/b/a/c$a;

    invoke-interface {v2, v0, v1}, Ln3/b/a/c$a;->d(Landroid/graphics/drawable/Drawable;I)V

    :cond_3
    return-void
.end method

.method public g()V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/b/a/c;->b:Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->i(I)I

    move-result v0

    .line 2
    iget-object v2, p0, Ln3/b/a/c;->b:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 3
    invoke-virtual {v2, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->f(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v2, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->r(Landroid/view/View;)Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 5
    iget-object v0, p0, Ln3/b/a/c;->b:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->c(I)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    .line 6
    iget-object v0, p0, Ln3/b/a/c;->b:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 7
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->f(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {v0, v3, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->t(Landroid/view/View;Z)V

    goto :goto_1

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "No drawer view found with gravity "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 10
    invoke-static {v1}, Landroidx/drawerlayout/widget/DrawerLayout;->l(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    return-void
.end method
