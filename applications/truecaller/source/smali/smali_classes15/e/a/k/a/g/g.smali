.class public final Le/a/k/a/g/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/k/i/n;


# instance fields
.field public final synthetic a:Le/a/k/a/g/f;


# direct methods
.method public constructor <init>(Le/a/k/a/g/f;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/g/g;->a:Le/a/k/a/g/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;Ln3/k/i/d0;)Ln3/k/i/d0;
    .locals 4

    .line 1
    iget-object p1, p0, Le/a/k/a/g/g;->a:Le/a/k/a/g/f;

    .line 2
    sget-object v0, Le/a/k/a/g/f;->r:[Ls1/a/l;

    .line 3
    invoke-virtual {p1}, Le/a/k/a/g/f;->QA()Le/a/k/m/k;

    move-result-object p1

    const/4 v0, 0x7

    .line 4
    invoke-virtual {p2, v0}, Ln3/k/i/d0;->b(I)Ln3/k/c/b;

    move-result-object v0

    const-string v1, "insets.getInsets(WindowI\u2026Compat.Type.systemBars())"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v1, p1, Le/a/k/m/k;->t:Landroidx/constraintlayout/widget/Guideline;

    iget v2, v0, Ln3/k/c/b;->b:I

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    .line 6
    iget-object v1, p1, Le/a/k/m/k;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v2, "root"

    .line 7
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v3, :cond_0

    const/4 v1, 0x0

    :cond_0
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    .line 8
    iget-object p1, p1, Le/a/k/m/k;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, v0, Ln3/k/c/b;->d:I

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-object p2
.end method
