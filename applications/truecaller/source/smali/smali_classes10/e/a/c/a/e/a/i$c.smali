.class public final Le/a/c/a/e/a/i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/e/a/i;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/e/a/i;


# direct methods
.method public constructor <init>(Le/a/c/a/e/a/i;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/e/a/i$c;->a:Le/a/c/a/e/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    check-cast p1, Le/m/a/g/e/d;

    .line 2
    sget v0, Lcom/google/android/material/R$id;->design_bottom_sheet:I

    invoke-virtual {p1, v0}, Ln3/b/a/p;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p0, Le/a/c/a/e/a/i$c;->a:Le/a/c/a/e/a/i;

    invoke-static {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    const-string v2, "BottomSheetBehavior.from(bottomSheet)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v2, Le/a/c/a/e/a/i;->d:[Ls1/a/l;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M(I)V

    const/4 v2, 0x1

    .line 7
    iput-boolean v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Z

    .line 8
    new-instance v2, Le/a/c/a/e/a/j;

    invoke-direct {v2, v0}, Le/a/c/a/e/a/j;-><init>(Le/a/c/a/e/a/i;)V

    .line 9
    iget-object v0, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    iget-object v0, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_0
    iget-object v0, p0, Le/a/c/a/e/a/i$c;->a:Le/a/c/a/e/a/i;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "bottomSheet"

    .line 12
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/truecaller/insights/ui/R$drawable;->shape_tcx_bottom_sheet_background:I

    sget v2, Lcom/truecaller/insights/ui/R$attr;->tcx_backgroundPrimary:I

    invoke-static {v0, v1, v2}, Le/a/l4/k;->N(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :catch_0
    sget-object p1, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Bottom sheet unavailable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 15
    invoke-virtual {p1, v0, v1}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
