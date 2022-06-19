.class public final Le/a/b/a/a/a/c/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Le/a/b/a/a/a/c/c$g;


# direct methods
.method public constructor <init>(Le/a/b/a/a/a/c/c$g;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/a/a/c/f;->a:Le/a/b/a/a/a/c/c$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Le/a/b/a/a/a/c/f;->a:Le/a/b/a/a/a/c/c$g;

    iget-object p1, p1, Le/a/b/a/a/a/c/c$g;->b:Le/a/b/m/s0;

    iget-object p1, p1, Le/a/b/m/s0;->f:Landroidx/appcompat/widget/SearchView;

    const-string p2, "searchView"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    const-wide/16 v0, 0x0

    const/4 v2, 0x2

    invoke-static {p1, p2, v0, v1, v2}, Le/a/p5/s0/f;->Y(Landroid/view/View;ZJI)V

    .line 2
    iget-object p1, p0, Le/a/b/a/a/a/c/f;->a:Le/a/b/a/a/a/c/c$g;

    iget-object p1, p1, Le/a/b/a/a/a/c/c$g;->b:Le/a/b/m/s0;

    iget-object p1, p1, Le/a/b/m/s0;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return p2
.end method
