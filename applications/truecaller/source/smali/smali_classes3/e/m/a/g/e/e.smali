.class public Le/m/a/g/e/e;
.super Ln3/b/a/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/g/e/e$b;
    }
.end annotation


# instance fields
.field private waitingForDismissAllowingStateLoss:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/b/a/q;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Le/m/a/g/e/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/a/g/e/e;->dismissAfterAnimation()V

    return-void
.end method

.method private dismissAfterAnimation()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/m/a/g/e/e;->waitingForDismissAllowingStateLoss:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0}, Ln3/r/a/k;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0}, Ln3/r/a/k;->dismiss()V

    :goto_0
    return-void
.end method

.method private dismissWithAnimation(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "*>;Z)V"
        }
    .end annotation

    .line 1
    iput-boolean p2, p0, Le/m/a/g/e/e;->waitingForDismissAllowingStateLoss:Z

    .line 2
    iget p2, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F:I

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 3
    invoke-direct {p0}, Le/m/a/g/e/e;->dismissAfterAnimation()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ln3/r/a/k;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    instance-of p2, p2, Le/m/a/g/e/d;

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p0}, Ln3/r/a/k;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    check-cast p2, Le/m/a/g/e/d;

    .line 6
    iget-object v1, p2, Le/m/a/g/e/d;->c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object p2, p2, Le/m/a/g/e/d;->m:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;

    .line 7
    iget-object v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    :cond_1
    new-instance p2, Le/m/a/g/e/e$b;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v1}, Le/m/a/g/e/e$b;-><init>(Le/m/a/g/e/e;Le/m/a/g/e/e$a;)V

    .line 9
    iget-object v1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    iget-object v1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_2
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M(I)V

    :goto_0
    return-void
.end method

.method private tryDismissWithAnimation(Z)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln3/r/a/k;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 2
    instance-of v1, v0, Le/m/a/g/e/d;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Le/m/a/g/e/d;

    .line 4
    invoke-virtual {v0}, Le/m/a/g/e/d;->e()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    .line 5
    iget-boolean v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C:Z

    if-eqz v2, :cond_0

    .line 6
    iget-boolean v0, v0, Le/m/a/g/e/d;->g:Z

    if-eqz v0, :cond_0

    .line 7
    invoke-direct {p0, v1, p1}, Le/m/a/g/e/e;->dismissWithAnimation(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/m/a/g/e/e;->tryDismissWithAnimation(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Ln3/r/a/k;->dismiss()V

    :cond_0
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Le/m/a/g/e/e;->tryDismissWithAnimation(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Ln3/r/a/k;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 1
    new-instance p1, Le/m/a/g/e/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ln3/r/a/k;->getTheme()I

    move-result v1

    invoke-direct {p1, v0, v1}, Le/m/a/g/e/d;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method
