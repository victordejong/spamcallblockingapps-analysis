.class public final Le/a/u/g$e;
.super Landroidx/viewpager2/widget/ViewPager2$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/u/g;->Gy(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/u/g;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/a/u/g;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Le/a/u/g$e;->a:Le/a/u/g;

    iput-object p2, p0, Le/a/u/g$e;->b:Ljava/util/List;

    .line 1
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$e;-><init>()V

    return-void
.end method


# virtual methods
.method public g(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/u/g$e;->a:Le/a/u/g;

    .line 2
    sget v1, Le/a/u/g;->k:I

    .line 3
    invoke-virtual {v0}, Le/a/u/g;->QA()Le/a/u/g$a;

    move-result-object v1

    .line 4
    iget-object v1, v1, Le/a/u/g$a;->i:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/yearincalling/model/StatsUiModel;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p1, Lcom/truecaller/yearincalling/model/StatsUiModel;->k:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 8
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 9
    invoke-virtual {v0}, Le/a/u/g;->RA()Landroid/view/View;

    move-result-object v4

    const-string v5, "fabShare"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 10
    iget-object v4, p1, Lcom/truecaller/yearincalling/model/StatsUiModel;->k:Ljava/lang/Integer;

    aput-object v4, v2, v3

    .line 11
    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 12
    new-instance v2, Le/a/u/j;

    invoke-direct {v2, v0, p1}, Le/a/u/j;-><init>(Le/a/u/g;Lcom/truecaller/yearincalling/model/StatsUiModel;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 13
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method
