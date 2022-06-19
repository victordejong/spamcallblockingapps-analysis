.class public final Le/a/v/a/a$e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/a/a$e;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/v/a/a$e;


# direct methods
.method public constructor <init>(Le/a/v/a/a$e;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/a$e$c;->a:Le/a/v/a/a$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Landroid/view/View;)Z
    .locals 3

    const-string p2, "<anonymous parameter 0>"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/v/a/a$e$c;->a:Le/a/v/a/a$e;

    iget-object p1, p1, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    .line 2
    sget-object p2, Le/a/v/a/a;->n:[Ls1/a/l;

    .line 3
    invoke-virtual {p1}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object p1

    .line 4
    iget-object p1, p1, Le/a/v/k/c;->l:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const-string p2, "binding.motionLayout"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result p1

    sget v0, Lcom/truecaller/details_view/R$id;->collapsed:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Le/a/v/a/a$e$c;->a:Le/a/v/a/a$e;

    iget-object p1, p1, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    .line 5
    invoke-virtual {p1}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object p1

    .line 6
    iget-object p1, p1, Le/a/v/k/c;->l:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v2

    .line 7
    :goto_1
    iget-object p2, p0, Le/a/v/a/a$e$c;->a:Le/a/v/a/a$e;

    iget-object p2, p2, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    .line 8
    invoke-virtual {p2}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object p2

    .line 9
    iget-object p2, p2, Le/a/v/k/c;->g:Landroidx/core/widget/NestedScrollView;

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->canScrollVertically(I)Z

    move-result p2

    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method
