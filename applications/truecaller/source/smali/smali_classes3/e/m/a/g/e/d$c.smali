.class public Le/m/a/g/e/d$c;
.super Ln3/k/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/m/a/g/e/d;->f(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Le/m/a/g/e/d;


# direct methods
.method public constructor <init>(Le/m/a/g/e/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/e/d$c;->d:Le/m/a/g/e/d;

    invoke-direct {p0}, Ln3/k/i/a;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;Ln3/k/i/f0/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/k/i/a;->a:Landroid/view/View$AccessibilityDelegate;

    .line 2
    iget-object v1, p2, Ln3/k/i/f0/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    iget-object p1, p0, Le/m/a/g/e/d$c;->d:Le/m/a/g/e/d;

    iget-boolean p1, p1, Le/m/a/g/e/d;->h:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x100000

    .line 5
    iget-object v0, p2, Ln3/k/i/f0/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/4 p1, 0x1

    .line 6
    iget-object p2, p2, Ln3/k/i/f0/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    iget-object p2, p2, Ln3/k/i/f0/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    :goto_0
    return-void
.end method

.method public g(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    const/high16 v0, 0x100000

    if-ne p2, v0, :cond_0

    .line 1
    iget-object v0, p0, Le/m/a/g/e/d$c;->d:Le/m/a/g/e/d;

    iget-boolean v1, v0, Le/m/a/g/e/d;->h:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Le/m/a/g/e/d;->cancel()V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ln3/k/i/a;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
