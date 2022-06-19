.class public final Le/a/c/a/j/e/a$g$a;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/j/e/a$g;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/j/e/a$g;


# direct methods
.method public constructor <init>(Le/a/c/a/j/e/a$g;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/j/e/a$g$a;->a:Le/a/c/a/j/e/a$g;

    .line 1
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
    .locals 6

    const-string v0, "bottomSheet"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    const/4 p1, 0x6

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Le/a/c/a/j/e/a$g$a;->a:Le/a/c/a/j/e/a$g;

    iget-object p1, p1, Le/a/c/a/j/e/a$g;->a:Le/a/c/a/j/e/a;

    invoke-virtual {p1}, Le/a/c/a/j/e/a;->dismiss()V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Le/a/c/a/j/e/a$g$a;->a:Le/a/c/a/j/e/a$g;

    iget-object p1, p1, Le/a/c/a/j/e/a$g;->a:Le/a/c/a/j/e/a;

    invoke-virtual {p1}, Le/a/c/a/j/e/a;->UA()Le/a/c/a/j/c/f;

    move-result-object p1

    invoke-virtual {p1}, Ln3/b0/a/p;->getCurrentList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Le/a/c/a/j/e/a$g$a;->a:Le/a/c/a/j/e/a$g;

    iget-object p1, p1, Le/a/c/a/j/e/a$g;->a:Le/a/c/a/j/e/a;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ln3/v/r;->b(Ln3/v/b0;)Ln3/v/w;

    move-result-object v0

    new-instance v3, Le/a/c/a/j/e/h;

    const/4 p2, 0x0

    invoke-direct {v3, p1, p2}, Le/a/c/a/j/e/h;-><init>(Le/a/c/a/j/e/a;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_2
    :goto_0
    return-void
.end method
