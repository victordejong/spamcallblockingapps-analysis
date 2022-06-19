.class public final Le/a/k/a/d/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:Le/a/k/a/d/a;


# direct methods
.method public constructor <init>(Le/a/k/a/d/a;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/d/c;->a:Le/a/k/a/d/a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/k/a/d/c;->a:Le/a/k/a/d/a;

    .line 2
    sget-object v1, Le/a/k/a/d/a;->i:[Ls1/a/l;

    .line 3
    invoke-virtual {v0}, Le/a/k/a/d/a;->QA()Le/a/k/m/t;

    move-result-object v1

    iget-object v1, v1, Le/a/k/m/t;->d:Landroid/widget/ScrollView;

    const-string v2, "binding.scrollView"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Le/a/k/a/d/a;->QA()Le/a/k/m/t;

    move-result-object v0

    iget-object v0, v0, Le/a/k/m/t;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v3, "binding.scrollContent"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 5
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v0

    add-int/2addr v0, v4

    if-ge v3, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Le/a/k/a/d/c;->a:Le/a/k/a/d/a;

    .line 7
    invoke-virtual {v0}, Le/a/k/a/d/a;->QA()Le/a/k/m/t;

    move-result-object v0

    .line 8
    iget-object v0, v0, Le/a/k/m/t;->d:Landroid/widget/ScrollView;

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    return-void
.end method
