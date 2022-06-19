.class public final Le/a/c/a/b/a/z$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/b/a/z;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/b/a/z;


# direct methods
.method public constructor <init>(Le/a/c/a/b/a/z;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/b/a/z$c;->a:Le/a/c/a/b/a/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/a/b/a/z$c;->a:Le/a/c/a/b/a/z;

    .line 2
    sget-object v1, Le/a/c/a/b/a/z;->i:[Ls1/a/l;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {v0}, Le/a/c/p/a;->p0(Le/m/a/g/e/e;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Le/a/c/a/b/a/z;->OA()Le/a/c/a/g/o;

    move-result-object v2

    iget-object v2, v2, Le/a/c/a/g/o;->h:Lcom/truecaller/ui/view/TintedImageView;

    const-string v3, "binding.hanger"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    const/4 v2, 0x3

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M(I)V

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->L(I)V

    .line 8
    invoke-static {v0}, Le/a/c/p/a;->p0(Le/m/a/g/e/e;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Le/a/c/a/b/a/a0;

    invoke-direct {v2, v0}, Le/a/c/a/b/a/a0;-><init>(Le/a/c/a/b/a/z;)V

    .line 9
    iget-object v0, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    iget-object v0, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
