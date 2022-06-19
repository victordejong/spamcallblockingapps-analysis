.class public final synthetic Le/a/a/c/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:Le/a/a/c/y3;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Le/a/a/c/y3;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/w0;->a:Le/a/a/c/y3;

    iput-object p2, p0, Le/a/a/c/w0;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Le/a/a/c/w0;->a:Le/a/a/c/y3;

    iget-object v1, p0, Le/a/a/c/w0;->b:Landroid/view/View;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 3
    invoke-virtual {v1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/a/c/y3;->Y0:I

    .line 5
    iget v2, v0, Le/a/a/c/y3;->a1:I

    if-gt v1, v2, :cond_0

    iget-boolean v1, v0, Le/a/a/c/y3;->Z0:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Le/a/a/c/y3;->d1:Le/a/a/c/l8/c;

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v1}, Le/a/a/c/l8/c;->show()V

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Le/a/a/c/y3;->Z0:Z

    :cond_0
    return-void
.end method
