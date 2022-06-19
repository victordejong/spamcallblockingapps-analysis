.class public Le/m/a/g/e/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/k/i/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/m/a/g/e/d;->f(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/m/a/g/e/d;


# direct methods
.method public constructor <init>(Le/m/a/g/e/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/e/d$a;->a:Le/m/a/g/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;Ln3/k/i/d0;)Ln3/k/i/d0;
    .locals 3

    .line 1
    iget-object p1, p0, Le/m/a/g/e/d$a;->a:Le/m/a/g/e/d;

    .line 2
    iget-object v0, p1, Le/m/a/g/e/d;->k:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Le/m/a/g/e/d;->c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 4
    iget-object p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 5
    iget-object p1, p0, Le/m/a/g/e/d$a;->a:Le/m/a/g/e/d;

    new-instance v0, Le/m/a/g/e/d$f;

    .line 6
    iget-object v1, p1, Le/m/a/g/e/d;->f:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    .line 7
    invoke-direct {v0, v1, p2, v2}, Le/m/a/g/e/d$f;-><init>(Landroid/view/View;Ln3/k/i/d0;Le/m/a/g/e/d$a;)V

    .line 8
    iput-object v0, p1, Le/m/a/g/e/d;->k:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;

    .line 9
    iget-object p1, p0, Le/m/a/g/e/d$a;->a:Le/m/a/g/e/d;

    .line 10
    iget-object v0, p1, Le/m/a/g/e/d;->c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 11
    iget-object p1, p1, Le/m/a/g/e/d;->k:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;

    .line 12
    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;)V

    :cond_1
    return-object p2
.end method
