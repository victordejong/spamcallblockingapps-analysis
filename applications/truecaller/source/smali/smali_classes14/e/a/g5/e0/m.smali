.class public final Le/a/g5/e0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:Le/a/g5/d0/b;

.field public final synthetic b:Le/a/g5/e0/i;


# direct methods
.method public constructor <init>(Le/a/g5/d0/b;Le/a/g5/e0/i;)V
    .locals 0

    iput-object p1, p0, Le/a/g5/e0/m;->a:Le/a/g5/d0/b;

    iput-object p2, p0, Le/a/g5/e0/m;->b:Le/a/g5/e0/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/g5/e0/m;->b:Le/a/g5/e0/i;

    .line 2
    iget-object p1, p1, Le/a/g5/e0/i;->g:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 3
    iget-object p2, p0, Le/a/g5/e0/m;->a:Le/a/g5/d0/b;

    iget-object p2, p2, Le/a/g5/d0/b;->i:Landroidx/appcompat/widget/SearchView;

    const-string v1, "searchView"

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/appcompat/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v0

    :goto_1
    if-ne p2, v0, :cond_2

    const/4 p2, 0x3

    goto :goto_2

    :cond_2
    const/4 p2, 0x4

    :goto_2
    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M(I)V

    return-void

    :cond_3
    const-string p1, "bottomSheetBehavior"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
