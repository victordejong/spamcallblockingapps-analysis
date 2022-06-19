.class public Le/a/a/c/z3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$s;


# instance fields
.field public final synthetic a:Le/a/a/c/y3;


# direct methods
.method public constructor <init>(Le/a/a/c/y3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/a/c/z3;->a:Le/a/a/c/y3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Le/a/a/c/z3;->a:Le/a/a/c/y3;

    iget-object p1, p1, Le/a/a/c/y3;->d:Le/a/a/c/h3;

    invoke-interface {p1}, Le/a/a/c/h3;->si()V

    :cond_1
    return v1
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method
