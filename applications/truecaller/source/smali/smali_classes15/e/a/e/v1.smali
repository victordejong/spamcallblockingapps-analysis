.class public Le/a/e/v1;
.super Ln3/b/a/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/truecaller/ui/TruecallerInit;Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;II)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    .line 1
    invoke-direct/range {v0 .. v5}, Ln3/b/a/c;-><init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;II)V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;F)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Ln3/b/a/c;->d:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    invoke-static {p2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0, p1}, Ln3/b/a/c;->e(F)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Ln3/b/a/c;->e(F)V

    :goto_0
    return-void
.end method
