.class public final Le/a/b0/a/j;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field public final a:Lcom/truecaller/common/ui/LineChart;


# direct methods
.method public constructor <init>(Lcom/truecaller/common/ui/LineChart;)V
    .locals 1

    const-string v0, "lineChart"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput-object p1, p0, Le/a/b0/a/j;->a:Lcom/truecaller/common/ui/LineChart;

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 0

    .line 1
    iget-object p2, p0, Le/a/b0/a/j;->a:Lcom/truecaller/common/ui/LineChart;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    .line 2
    iget-object p1, p0, Le/a/b0/a/j;->a:Lcom/truecaller/common/ui/LineChart;

    invoke-virtual {p1, p2}, Lcom/truecaller/common/ui/LineChart;->setProgress(F)V

    .line 3
    iget-object p1, p0, Le/a/b0/a/j;->a:Lcom/truecaller/common/ui/LineChart;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
