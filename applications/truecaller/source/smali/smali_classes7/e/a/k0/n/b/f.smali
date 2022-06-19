.class public Le/a/k0/n/b/f;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public a:Landroid/view/WindowManager;

.field public b:Landroid/view/WindowManager$LayoutParams;

.field public c:Le/a/k0/n/b/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getLayoutCoordinator()Le/a/k0/n/b/h;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k0/n/b/f;->c:Le/a/k0/n/b/h;

    return-object v0
.end method

.method public getViewParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k0/n/b/f;->b:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k0/n/b/f;->a:Landroid/view/WindowManager;

    return-object v0
.end method

.method public setLayoutCoordinator(Le/a/k0/n/b/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/k0/n/b/f;->c:Le/a/k0/n/b/h;

    return-void
.end method

.method public setViewParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/k0/n/b/f;->b:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method public setWindowManager(Landroid/view/WindowManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/k0/n/b/f;->a:Landroid/view/WindowManager;

    return-void
.end method
