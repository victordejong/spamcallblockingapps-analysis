.class public final Le/a/b/a/c/a/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Le/a/b/a/c/a/a/g;


# direct methods
.method public constructor <init>(Le/a/b/a/c/a/a/g;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/c/a/a/f;->a:Le/a/b/a/c/a/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/b/a/c/a/a/f;->a:Le/a/b/a/c/a/a/g;

    iget-object p1, p1, Le/a/b/a/c/a/a/g;->c:Le/a/b/a/c/a/a/e;

    .line 2
    iget-object p1, p1, Le/a/b/a/c/a/a/e;->f:Le/a/b/a/c/a/s;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, p2}, Le/a/b/a/c/a/s;->i7(Z)V

    .line 4
    :cond_0
    iget-object p1, p0, Le/a/b/a/c/a/a/f;->a:Le/a/b/a/c/a/a/g;

    iget-object p1, p1, Le/a/b/a/c/a/a/g;->b:Le/a/b/m/d0;

    iget-object p1, p1, Le/a/b/m/d0;->c:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return p2
.end method
