.class public Ln3/b0/a/k$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/b0/a/k$f;-><init>(Landroidx/recyclerview/widget/RecyclerView$c0;IIFFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/b0/a/k$f;


# direct methods
.method public constructor <init>(Ln3/b0/a/k$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b0/a/k$f$a;->a:Ln3/b0/a/k$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b0/a/k$f$a;->a:Ln3/b0/a/k$f;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 2
    iput p1, v0, Ln3/b0/a/k$f;->m:F

    return-void
.end method
