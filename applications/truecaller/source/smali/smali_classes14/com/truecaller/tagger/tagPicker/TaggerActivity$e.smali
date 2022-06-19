.class public final Lcom/truecaller/tagger/tagPicker/TaggerActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/tagger/tagPicker/TaggerActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/tagger/tagPicker/TaggerActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/tagger/tagPicker/TaggerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/tagger/tagPicker/TaggerActivity$e;->a:Lcom/truecaller/tagger/tagPicker/TaggerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    const-string v0, "animation"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/truecaller/tagger/tagPicker/TaggerActivity$e;->a:Lcom/truecaller/tagger/tagPicker/TaggerActivity;

    .line 3
    sget v2, Lcom/truecaller/tagger/tagPicker/TaggerActivity;->i:I

    .line 4
    invoke-virtual {v1}, Lcom/truecaller/tagger/tagPicker/TaggerActivity;->qa()Le/a/g5/d0/a;

    move-result-object v1

    .line 5
    iget-object v1, v1, Le/a/g5/d0/a;->b:Landroid/widget/FrameLayout;

    const-string v2, "binding.fragmentContainer"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v2, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setY(F)V

    .line 6
    iget-object p1, p0, Lcom/truecaller/tagger/tagPicker/TaggerActivity$e;->a:Lcom/truecaller/tagger/tagPicker/TaggerActivity;

    .line 7
    iget-object p1, p1, Lcom/truecaller/tagger/tagPicker/TaggerActivity;->f:Landroid/graphics/drawable/ColorDrawable;

    const/16 v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const v0, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 9
    iget-object p1, p0, Lcom/truecaller/tagger/tagPicker/TaggerActivity$e;->a:Lcom/truecaller/tagger/tagPicker/TaggerActivity;

    .line 10
    iget-object p1, p1, Lcom/truecaller/tagger/tagPicker/TaggerActivity;->f:Landroid/graphics/drawable/ColorDrawable;

    .line 11
    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->invalidateSelf()V

    return-void
.end method
