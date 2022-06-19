.class public final Le/a/b0/a/g;
.super Landroid/graphics/drawable/GradientDrawable;
.source "SourceFile"


# instance fields
.field public final a:Le/a/p5/h0;


# direct methods
.method public constructor <init>(Le/a/p5/h0;)V
    .locals 4

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v1, 0x5

    new-array v1, v1, [I

    .line 2
    sget v2, Lcom/truecaller/common/ui/R$attr;->tcx_goldGradientStep1:I

    invoke-interface {p1, v2}, Le/a/p5/h0;->l(I)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 3
    sget v2, Lcom/truecaller/common/ui/R$attr;->tcx_goldGradientStep2:I

    invoke-interface {p1, v2}, Le/a/p5/h0;->l(I)I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 4
    sget v2, Lcom/truecaller/common/ui/R$attr;->tcx_goldGradientStep3:I

    invoke-interface {p1, v2}, Le/a/p5/h0;->l(I)I

    move-result v2

    const/4 v3, 0x2

    aput v2, v1, v3

    .line 5
    sget v2, Lcom/truecaller/common/ui/R$attr;->tcx_goldGradientStep4:I

    invoke-interface {p1, v2}, Le/a/p5/h0;->l(I)I

    move-result v2

    const/4 v3, 0x3

    aput v2, v1, v3

    .line 6
    sget v2, Lcom/truecaller/common/ui/R$attr;->tcx_goldGradientStep5:I

    invoke-interface {p1, v2}, Le/a/p5/h0;->l(I)I

    move-result v2

    const/4 v3, 0x4

    aput v2, v1, v3

    .line 7
    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object p1, p0, Le/a/b0/a/g;->a:Le/a/p5/h0;

    return-void
.end method
