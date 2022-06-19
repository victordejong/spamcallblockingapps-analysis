.class public final Le/a/a/c/m$e$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/m$e;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/c/m$e;


# direct methods
.method public constructor <init>(Le/a/a/c/m$e;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/m$e$a;->b:Le/a/a/c/m$e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/a/c/m$e$a;->b:Le/a/a/c/m$e;

    iget-object v0, v0, Le/a/a/c/m$e;->b:Le/a/a/c/m;

    invoke-static {v0}, Le/a/c/p/a;->p0(Le/m/a/g/e/e;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v1, p0, Le/a/a/c/m$e$a;->b:Le/a/a/c/m$e;

    iget-object v1, v1, Le/a/a/c/m$e;->b:Le/a/a/c/m;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const v2, 0x7f0a006b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 3
    invoke-static {v1}, Le/a/p5/s0/f;->p(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "$this$getVerticalPosition"

    .line 4
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 5
    invoke-virtual {v1, v4}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v5, 0x1

    .line 6
    aget v4, v4, v5

    .line 7
    iget-object v6, p0, Le/a/a/c/m$e$a;->b:Le/a/a/c/m$e;

    iget-object v6, v6, Le/a/a/c/m$e;->b:Le/a/a/c/m;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 8
    invoke-static {v6, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v2, v3, [I

    .line 9
    invoke-virtual {v6, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 10
    aget v2, v2, v5

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 11
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/2addr v1, v3

    add-int/2addr v1, v4

    sub-int/2addr v1, v2

    goto :goto_2

    .line 12
    :cond_2
    iget-object v1, p0, Le/a/a/c/m$e$a;->b:Le/a/a/c/m$e;

    iget-object v1, v1, Le/a/a/c/m$e;->a:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070064

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 13
    :goto_2
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->L(I)V

    .line 14
    :cond_3
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
