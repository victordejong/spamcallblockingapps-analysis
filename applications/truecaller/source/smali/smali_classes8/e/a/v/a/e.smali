.class public final Le/a/v/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/k/i/n;


# instance fields
.field public final synthetic a:Le/a/v/a/a;


# direct methods
.method public constructor <init>(Le/a/v/a/a;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/e;->a:Le/a/v/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;Ln3/k/i/d0;)Ln3/k/i/d0;
    .locals 5

    .line 1
    iget-object p1, p0, Le/a/v/a/e;->a:Le/a/v/a/a;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ln3/k/i/d0;->b(I)Ln3/k/c/b;

    move-result-object v1

    iget v1, v1, Ln3/k/c/b;->b:I

    .line 2
    iput v1, p1, Le/a/v/a/a;->m:I

    .line 3
    iget-object p1, p0, Le/a/v/a/e;->a:Le/a/v/a/a;

    .line 4
    invoke-virtual {p1}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object p1

    .line 5
    iget-object p1, p1, Le/a/v/k/c;->l:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget v1, Lcom/truecaller/details_view/R$id;->expanded:I

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->k1(I)Ln3/i/c/d;

    move-result-object p1

    .line 6
    iget-object v1, p0, Le/a/v/a/e;->a:Le/a/v/a/a;

    .line 7
    invoke-virtual {v1}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v1

    .line 8
    iget-object v1, v1, Le/a/v/k/c;->d:Lcom/google/android/material/appbar/AppBarLayout;

    const-string v2, "binding.appBar"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    .line 9
    iget-object v3, p0, Le/a/v/a/e;->a:Le/a/v/a/a;

    .line 10
    iget v3, v3, Le/a/v/a/a;->m:I

    const/4 v4, 0x3

    .line 11
    invoke-virtual {p1, v1, v4, v3}, Ln3/i/c/d;->m(III)V

    .line 12
    iget-object p1, p0, Le/a/v/a/e;->a:Le/a/v/a/a;

    .line 13
    invoke-virtual {p1}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object p1

    .line 14
    iget-object p1, p1, Le/a/v/k/c;->l:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget v1, Lcom/truecaller/details_view/R$id;->collapsed:I

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->k1(I)Ln3/i/c/d;

    move-result-object p1

    .line 15
    iget-object v1, p0, Le/a/v/a/e;->a:Le/a/v/a/a;

    .line 16
    invoke-virtual {v1}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v1

    .line 17
    iget-object v1, v1, Le/a/v/k/c;->d:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    .line 18
    iget-object v2, p0, Le/a/v/a/e;->a:Le/a/v/a/a;

    .line 19
    iget v2, v2, Le/a/v/a/a;->m:I

    .line 20
    invoke-virtual {p1, v1, v4, v2}, Ln3/i/c/d;->m(III)V

    .line 21
    iget-object p1, p0, Le/a/v/a/e;->a:Le/a/v/a/a;

    .line 22
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Ln3/b/a/h;

    .line 23
    invoke-virtual {p1}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object p1

    iget-object p1, p1, Le/a/v/k/c;->y:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, p1}, Ln3/b/a/h;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 24
    invoke-virtual {v1}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object p1

    if-eqz p1, :cond_0

    sget v2, Lcom/truecaller/details_view/R$drawable;->ic_tcx_arrow_back_24dp:I

    invoke-virtual {p1, v2}, Ln3/b/a/a;->s(I)V

    .line 25
    :cond_0
    invoke-virtual {v1}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Ln3/b/a/a;->n(Z)V

    .line 26
    :cond_1
    invoke-virtual {v1}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ln3/b/a/a;->p(Z)V

    .line 27
    :cond_2
    iget-object p1, p0, Le/a/v/a/e;->a:Le/a/v/a/a;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-object p2
.end method
