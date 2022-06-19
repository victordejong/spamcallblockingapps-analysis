.class public Le/m/a/g/j/f;
.super Ln3/k/i/a;
.source "SourceFile"


# instance fields
.field public final synthetic d:Le/m/a/g/j/d;


# direct methods
.method public constructor <init>(Le/m/a/g/j/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/j/f;->d:Le/m/a/g/j/d;

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
    iget-object p1, p0, Le/m/a/g/j/f;->d:Le/m/a/g/j/d;

    .line 5
    iget-object p1, p1, Le/m/a/g/j/d;->k:Landroid/view/View;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Le/m/a/g/j/f;->d:Le/m/a/g/j/d;

    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_toggle_to_year_selection:I

    .line 7
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Le/m/a/g/j/f;->d:Le/m/a/g/j/d;

    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_toggle_to_day_selection:I

    .line 8
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 9
    :goto_0
    invoke-virtual {p2, p1}, Ln3/k/i/f0/b;->p(Ljava/lang/CharSequence;)V

    return-void
.end method
