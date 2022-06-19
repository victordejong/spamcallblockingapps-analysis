.class public final Le/a/c/a/b/a/m;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/a/c/a/b/a/l;


# direct methods
.method public constructor <init>(Le/a/c/a/b/a/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/c/a/b/a/m;->a:Le/a/c/a/b/a/l;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;F)V
    .locals 0

    const-string p2, "bottomSheet"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 1

    const-string v0, "bottomSheet"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Le/a/c/a/b/a/m;->a:Le/a/c/a/b/a/l;

    invoke-virtual {p1}, Le/m/a/g/e/e;->dismiss()V

    :cond_0
    return-void
.end method
