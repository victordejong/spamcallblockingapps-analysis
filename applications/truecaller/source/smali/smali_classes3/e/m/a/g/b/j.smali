.class public Le/m/a/g/b/j;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$c<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public a:Le/m/a/g/b/k;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Le/m/a/g/b/j;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Le/m/a/g/b/j;->b:I

    return-void
.end method


# virtual methods
.method public B()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/g/b/j;->a:Le/m/a/g/b/k;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Le/m/a/g/b/k;->d:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public C(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m(Landroid/view/View;I)V

    return-void
.end method

.method public k(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Le/m/a/g/b/j;->C(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 2
    iget-object p1, p0, Le/m/a/g/b/j;->a:Le/m/a/g/b/k;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Le/m/a/g/b/k;

    invoke-direct {p1, p2}, Le/m/a/g/b/k;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Le/m/a/g/b/j;->a:Le/m/a/g/b/k;

    .line 4
    :cond_0
    iget-object p1, p0, Le/m/a/g/b/j;->a:Le/m/a/g/b/k;

    .line 5
    iget-object p2, p1, Le/m/a/g/b/k;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    iput p2, p1, Le/m/a/g/b/k;->b:I

    .line 6
    iget-object p2, p1, Le/m/a/g/b/k;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    iput p2, p1, Le/m/a/g/b/k;->c:I

    .line 7
    iget-object p1, p0, Le/m/a/g/b/j;->a:Le/m/a/g/b/k;

    invoke-virtual {p1}, Le/m/a/g/b/k;->a()V

    .line 8
    iget p1, p0, Le/m/a/g/b/j;->b:I

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 9
    iget-object p3, p0, Le/m/a/g/b/j;->a:Le/m/a/g/b/k;

    invoke-virtual {p3, p1}, Le/m/a/g/b/k;->b(I)Z

    .line 10
    iput p2, p0, Le/m/a/g/b/j;->b:I

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
