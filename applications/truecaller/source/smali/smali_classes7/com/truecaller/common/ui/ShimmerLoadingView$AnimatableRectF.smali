.class public final Lcom/truecaller/common/ui/ShimmerLoadingView$AnimatableRectF;
.super Landroid/graphics/RectF;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/common/ui/ShimmerLoadingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AnimatableRectF"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0012\u0008\u0083\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R$\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00028F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R$\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00028F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\t\u0010\u0005\"\u0004\u0008\n\u0010\u0007R$\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00028F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000c\u0010\u0005\"\u0004\u0008\r\u0010\u0007R$\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00028F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000f\u0010\u0005\"\u0004\u0008\u0010\u0010\u0007\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/truecaller/common/ui/ShimmerLoadingView$AnimatableRectF;",
        "Landroid/graphics/RectF;",
        "",
        "value",
        "getBottom",
        "()F",
        "setBottom",
        "(F)V",
        "bottom",
        "getTop",
        "setTop",
        "top",
        "getRight",
        "setRight",
        "right",
        "getLeft",
        "setLeft",
        "left",
        "<init>",
        "(Lcom/truecaller/common/ui/ShimmerLoadingView;)V",
        "common-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/truecaller/common/ui/ShimmerLoadingView;


# direct methods
.method public constructor <init>(Lcom/truecaller/common/ui/ShimmerLoadingView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/common/ui/ShimmerLoadingView$AnimatableRectF;->this$0:Lcom/truecaller/common/ui/ShimmerLoadingView;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBottom()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    return v0
.end method

.method public final getLeft()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/RectF;->left:F

    return v0
.end method

.method public final getRight()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/RectF;->right:F

    return v0
.end method

.method public final getTop()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/RectF;->top:F

    return v0
.end method

.method public final setBottom(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public final setLeft(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/graphics/RectF;->left:F

    return-void
.end method

.method public final setRight(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/graphics/RectF;->right:F

    return-void
.end method

.method public final setTop(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/graphics/RectF;->top:F

    return-void
.end method
