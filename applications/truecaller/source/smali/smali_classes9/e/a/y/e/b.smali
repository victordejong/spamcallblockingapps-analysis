.class public final synthetic Le/a/y/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:Le/a/y/e/h;


# direct methods
.method public synthetic constructor <init>(Le/a/y/e/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/y/e/b;->a:Le/a/y/e/h;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 5

    iget-object v0, p0, Le/a/y/e/b;->a:Le/a/y/e/h;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 3
    iget-object v2, v0, Le/a/y/e/h;->a:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 4
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 5
    iget-object v3, v0, Le/a/y/e/h;->b:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 6
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 7
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 8
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 9
    iget-object v4, v0, Le/a/y/e/h;->b:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 10
    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .line 11
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    sub-int/2addr v2, v3

    const/16 v1, 0x64

    const/4 v3, 0x0

    if-le v2, v1, :cond_1

    .line 12
    iput v2, v0, Le/a/y/e/h;->f:I

    const/4 v1, -0x1

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 14
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 15
    iget-boolean v1, v0, Le/a/y/e/h;->i:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Le/a/y/e/h;->e:Le/a/y/e/h$c;

    if-eqz v1, :cond_0

    .line 16
    iget v2, v0, Le/a/y/e/h;->f:I

    invoke-interface {v1, v2}, Le/a/y/e/h$c;->w5(I)V

    :cond_0
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, v0, Le/a/y/e/h;->i:Z

    .line 18
    iget-boolean v1, v0, Le/a/y/e/h;->j:Z

    if-eqz v1, :cond_2

    .line 19
    invoke-virtual {v0}, Le/a/y/e/h;->e()V

    .line 20
    iput-boolean v3, v0, Le/a/y/e/h;->j:Z

    goto :goto_0

    .line 21
    :cond_1
    iget-boolean v1, v0, Le/a/y/e/h;->i:Z

    if-eqz v1, :cond_2

    .line 22
    iput-boolean v3, v0, Le/a/y/e/h;->i:Z

    .line 23
    iget-object v0, v0, Le/a/y/e/h;->e:Le/a/y/e/h$c;

    if-eqz v0, :cond_2

    .line 24
    invoke-interface {v0}, Le/a/y/e/h$c;->M7()V

    :cond_2
    :goto_0
    return-void
.end method
