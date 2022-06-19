.class public final Le/a/b0/a/e;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field public final a:Lcom/truecaller/common/ui/PieChart;


# direct methods
.method public constructor <init>(Lcom/truecaller/common/ui/PieChart;)V
    .locals 1

    const-string v0, "pieChart"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput-object p1, p0, Le/a/b0/a/e;->a:Lcom/truecaller/common/ui/PieChart;

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 0

    const/high16 p2, 0x43b40000    # 360.0f

    mul-float/2addr p1, p2

    .line 1
    iget-object p2, p0, Le/a/b0/a/e;->a:Lcom/truecaller/common/ui/PieChart;

    invoke-virtual {p2, p1}, Lcom/truecaller/common/ui/PieChart;->setArcAngle(F)V

    .line 2
    iget-object p1, p0, Le/a/b0/a/e;->a:Lcom/truecaller/common/ui/PieChart;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
