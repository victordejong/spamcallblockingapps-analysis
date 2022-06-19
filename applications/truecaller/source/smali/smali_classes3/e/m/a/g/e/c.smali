.class public Le/m/a/g/e/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/k/i/f0/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/e/c;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iput p2, p0, Le/m/a/g/e/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ln3/k/i/f0/d$a;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Le/m/a/g/e/c;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget p2, p0, Le/m/a/g/e/c;->a:I

    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M(I)V

    const/4 p1, 0x1

    return p1
.end method
