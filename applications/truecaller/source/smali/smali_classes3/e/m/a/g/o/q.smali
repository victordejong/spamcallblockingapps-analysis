.class public final Le/m/a/g/o/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/k/i/n;


# instance fields
.field public final synthetic a:Le/m/a/g/o/s;

.field public final synthetic b:Le/m/a/g/o/t;


# direct methods
.method public constructor <init>(Le/m/a/g/o/s;Le/m/a/g/o/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/o/q;->a:Le/m/a/g/o/s;

    iput-object p2, p0, Le/m/a/g/o/q;->b:Le/m/a/g/o/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;Ln3/k/i/d0;)Ln3/k/i/d0;
    .locals 10

    .line 1
    iget-object v0, p0, Le/m/a/g/o/q;->a:Le/m/a/g/o/s;

    iget-object v1, p0, Le/m/a/g/o/q;->b:Le/m/a/g/o/t;

    .line 2
    iget v2, v1, Le/m/a/g/o/t;->a:I

    .line 3
    iget v3, v1, Le/m/a/g/o/t;->c:I

    .line 4
    iget v1, v1, Le/m/a/g/o/t;->d:I

    .line 5
    check-cast v0, Le/m/a/g/e/b;

    .line 6
    iget-object v4, v0, Le/m/a/g/e/b;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {p2}, Ln3/k/i/d0;->f()I

    move-result v5

    .line 7
    iput v5, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:I

    .line 8
    invoke-static {p1}, Ln3/g0/y;->U0(Landroid/view/View;)Z

    move-result v4

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    .line 12
    iget-object v8, v0, Le/m/a/g/e/b;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 13
    iget-boolean v9, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:Z

    if-eqz v9, :cond_0

    .line 14
    invoke-virtual {p2}, Ln3/k/i/d0;->c()I

    move-result v5

    .line 15
    iput v5, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:I

    .line 16
    iget-object v5, v0, Le/m/a/g/e/b;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 17
    iget v5, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:I

    add-int/2addr v5, v1

    .line 18
    :cond_0
    iget-object v1, v0, Le/m/a/g/e/b;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 19
    iget-boolean v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:Z

    if-eqz v1, :cond_2

    if-eqz v4, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 20
    :goto_0
    invoke-virtual {p2}, Ln3/k/i/d0;->d()I

    move-result v6

    add-int/2addr v6, v1

    .line 21
    :cond_2
    iget-object v1, v0, Le/m/a/g/e/b;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 22
    iget-boolean v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->o:Z

    if-eqz v1, :cond_4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    .line 23
    :goto_1
    invoke-virtual {p2}, Ln3/k/i/d0;->e()I

    move-result v1

    add-int v7, v1, v2

    .line 24
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1, v6, v1, v7, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 25
    iget-boolean p1, v0, Le/m/a/g/e/b;->a:Z

    if-eqz p1, :cond_5

    .line 26
    iget-object p1, v0, Le/m/a/g/e/b;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 27
    iget-object v1, p2, Ln3/k/i/d0;->a:Ln3/k/i/d0$j;

    invoke-virtual {v1}, Ln3/k/i/d0$j;->g()Ln3/k/c/b;

    move-result-object v1

    .line 28
    iget v1, v1, Ln3/k/c/b;->d:I

    .line 29
    iput v1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:I

    .line 30
    :cond_5
    iget-object p1, v0, Le/m/a/g/e/b;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 31
    iget-boolean v1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:Z

    if-nez v1, :cond_6

    .line 32
    iget-boolean v0, v0, Le/m/a/g/e/b;->a:Z

    if-eqz v0, :cond_7

    :cond_6
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->V(Z)V

    :cond_7
    return-object p2
.end method
