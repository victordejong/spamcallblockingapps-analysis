.class public Le/m/a/g/j/d$b;
.super Ln3/k/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/m/a/g/j/d;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Le/m/a/g/j/d;)V
    .locals 0

    .line 1
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

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p2, p1}, Ln3/k/i/f0/b;->n(Ljava/lang/Object;)V

    return-void
.end method
