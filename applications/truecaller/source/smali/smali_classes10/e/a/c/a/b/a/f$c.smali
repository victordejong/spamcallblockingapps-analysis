.class public final Le/a/c/a/b/a/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/b/a/f;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/m/a/g/e/d;

.field public final synthetic b:Le/a/c/a/b/a/f;


# direct methods
.method public constructor <init>(Le/m/a/g/e/d;Le/a/c/a/b/a/f;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/b/a/f$c;->a:Le/m/a/g/e/d;

    iput-object p2, p0, Le/a/c/a/b/a/f$c;->b:Le/a/c/a/b/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/c/a/b/a/f$c;->b:Le/a/c/a/b/a/f;

    iget-object v0, p0, Le/a/c/a/b/a/f$c;->a:Le/m/a/g/e/d;

    .line 2
    sget-object v1, Le/a/c/a/b/a/f;->k:[Ls1/a/l;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget v1, Lcom/google/android/material/R$id;->container:I

    invoke-virtual {v0, v1}, Ln3/b/a/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    const-string v1, "findViewById<FrameLayout\u2026R.id.container) ?: return"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p1, p1, Le/a/c/a/b/a/f;->c:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string p1, "shareMessageContainer"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Le/a/c/a/b/a/f$c;->b:Le/a/c/a/b/a/f;

    .line 7
    invoke-virtual {p1}, Le/a/c/a/b/a/f;->RA()Le/a/c/a/g/n;

    move-result-object p1

    .line 8
    iget-object p1, p1, Le/a/c/a/g/n;->d:Lcom/truecaller/common/ui/FlowLayout;

    const-string v0, "binding.tagContainer"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Le/a/c/a/b/a/f$c$a;

    invoke-direct {v0, p1, p0}, Le/a/c/a/b/a/f$c$a;-><init>(Landroid/view/View;Le/a/c/a/b/a/f$c;)V

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
