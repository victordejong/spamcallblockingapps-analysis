.class public Ln3/k/i/z$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/k/i/z;->f(Ln3/k/i/c0;)Ln3/k/i/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/k/i/c0;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Ln3/k/i/z;Ln3/k/i/c0;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ln3/k/i/z$b;->a:Ln3/k/i/c0;

    iput-object p3, p0, Ln3/k/i/z$b;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ln3/k/i/z$b;->a:Ln3/k/i/c0;

    check-cast p1, Ln3/b/a/v$c;

    .line 2
    iget-object p1, p1, Ln3/b/a/v$c;->a:Ln3/b/a/v;

    iget-object p1, p1, Ln3/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 3
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
