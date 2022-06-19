.class public final Le/a/c/a/d/g/h$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/d/g/h;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/m/a/g/e/d;

.field public final synthetic b:Le/a/c/a/d/g/h;


# direct methods
.method public constructor <init>(Le/m/a/g/e/d;Le/a/c/a/d/g/h;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/d/g/h$d;->a:Le/m/a/g/e/d;

    iput-object p2, p0, Le/a/c/a/d/g/h$d;->b:Le/a/c/a/d/g/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 5

    .line 1
    iget-object p1, p0, Le/a/c/a/d/g/h$d;->b:Le/a/c/a/d/g/h;

    iget-object v0, p0, Le/a/c/a/d/g/h$d;->a:Le/m/a/g/e/d;

    .line 2
    sget-object v1, Le/a/c/a/d/g/h;->h:[Ls1/a/l;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget v1, Lcom/google/android/material/R$id;->container:I

    invoke-virtual {v0, v1}, Ln3/b/a/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    const-string v1, "findViewById<FrameLayout\u2026R.id.container) ?: return"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v1, p1, Le/a/c/a/d/g/h;->f:Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;

    const-string v2, "applyFiltersContainer"

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 6
    iget-object v1, p1, Le/a/c/a/d/g/h;->e:Landroid/view/View;

    if-eqz v1, :cond_1

    new-instance v4, Le/a/c/a/d/g/j;

    invoke-direct {v4, p1}, Le/a/c/a/d/g/j;-><init>(Le/a/c/a/d/g/h;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p1, p1, Le/a/c/a/d/g/h;->f:Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;

    if-eqz p1, :cond_0

    .line 8
    new-instance v1, Ln3/g0/l;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Ln3/g0/l;-><init>(I)V

    const-wide/16 v2, 0x190

    .line 9
    invoke-virtual {v1, v2, v3}, Ln3/g0/m;->C(J)Ln3/g0/m;

    .line 10
    invoke-virtual {v1, p1}, Ln3/g0/m;->c(Landroid/view/View;)Ln3/g0/m;

    .line 11
    invoke-static {v0, v1}, Ln3/g0/q;->a(Landroid/view/ViewGroup;Ln3/g0/m;)V

    .line 12
    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    :cond_1
    const-string p1, "applyFilters"

    .line 14
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 15
    :cond_2
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    :cond_3
    :goto_0
    return-void
.end method
