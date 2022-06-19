.class public final Le/a/k/a/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field public final synthetic a:Le/a/k/a/d/a;


# direct methods
.method public constructor <init>(Le/a/k/a/d/a;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/d/b;->a:Le/a/k/a/d/a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/k/a/d/b;->a:Le/a/k/a/d/a;

    .line 2
    sget-object v1, Le/a/k/a/d/a;->i:[Ls1/a/l;

    .line 3
    invoke-virtual {v0}, Le/a/k/a/d/a;->QA()Le/a/k/m/t;

    move-result-object v0

    iget-object v0, v0, Le/a/k/m/t;->d:Landroid/widget/ScrollView;

    const-string v1, "binding.scrollView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "scrollView.getChildAt(0)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    add-int/2addr v0, v4

    if-gt v3, v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    .line 5
    iget-object v0, p0, Le/a/k/a/d/b;->a:Le/a/k/a/d/a;

    .line 6
    invoke-virtual {v0}, Le/a/k/a/d/a;->QA()Le/a/k/m/t;

    move-result-object v0

    .line 7
    iget-object v0, v0, Le/a/k/m/t;->d:Landroid/widget/ScrollView;

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_1
    return-void
.end method
