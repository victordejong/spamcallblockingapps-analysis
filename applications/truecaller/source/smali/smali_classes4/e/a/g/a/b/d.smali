.class public final Le/a/g/a/b/d;
.super Le/f/a/r/k/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/f/a/r/k/d<",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Ls1/z/b/a;

.field public final synthetic e:Ls1/z/b/a;

.field public final synthetic f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Le/a/g/a/b/a;Ls1/z/b/a;Ls1/z/b/a;Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/a;",
            "Ls1/z/b/a;",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Le/a/g/a/b/d;->d:Ls1/z/b/a;

    iput-object p3, p0, Le/a/g/a/b/d;->e:Ls1/z/b/a;

    iput-object p4, p0, Le/a/g/a/b/d;->f:Landroid/content/Context;

    invoke-direct {p0, p5}, Le/f/a/r/k/d;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    iget-object p1, p0, Le/f/a/r/k/d;->b:Landroid/view/View;

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, Le/a/g/a/b/d;->f:Landroid/content/Context;

    sget v1, Lcom/truecaller/acs/R$color;->fullscreen_acs_background_color:I

    .line 2
    sget-object v2, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 3
    invoke-static {v0, v1}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-void
.end method

.method public e(Ljava/lang/Object;Le/f/a/r/l/d;)V
    .locals 2

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    const-string v0, "resource"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/f/a/r/k/d;->b:Landroid/view/View;

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 4
    iget-object v1, p0, Le/a/g/a/b/d;->d:Ls1/z/b/a;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/s;

    .line 5
    :cond_0
    new-instance v1, Le/a/g/a/b/c;

    invoke-direct {v1, v0}, Le/a/g/a/b/c;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    if-eqz p2, :cond_1

    .line 6
    invoke-interface {p2, p1, v1}, Le/f/a/r/l/d;->a(Ljava/lang/Object;Le/f/a/r/l/d$a;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "targetView"

    .line 7
    invoke-static {v0, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public i(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/g/a/b/d;->e:Ls1/z/b/a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    :cond_0
    return-void
.end method
