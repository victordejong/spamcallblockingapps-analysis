.class public Le/a/e/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:F

.field public final synthetic d:Le/a/e/m1;


# direct methods
.method public constructor <init>(Le/a/e/m1;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/l1;->d:Le/a/e/m1;

    iput-object p2, p0, Le/a/e/l1;->a:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Le/a/e/l1;->b:Landroid/view/View;

    iput p4, p0, Le/a/e/l1;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/e/l1;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Le/a/e/l1;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 2
    iget-object v1, p0, Le/a/e/l1;->d:Le/a/e/m1;

    iget v2, p0, Le/a/e/l1;->c:F

    iget-object v3, p0, Le/a/e/l1;->b:Landroid/view/View;

    .line 3
    invoke-virtual {v1, v0, v2, v3}, Le/a/e/m1;->f(IFLandroid/view/View;)V

    .line 4
    iget-object v0, p0, Le/a/e/l1;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
