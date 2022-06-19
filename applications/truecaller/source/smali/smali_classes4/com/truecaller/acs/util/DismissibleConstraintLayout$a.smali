.class public final Lcom/truecaller/acs/util/DismissibleConstraintLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/acs/util/DismissibleConstraintLayout;->f1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/acs/util/DismissibleConstraintLayout;


# direct methods
.method public constructor <init>(Lcom/truecaller/acs/util/DismissibleConstraintLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/acs/util/DismissibleConstraintLayout$a;->a:Lcom/truecaller/acs/util/DismissibleConstraintLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/truecaller/acs/util/DismissibleConstraintLayout$a;->a:Lcom/truecaller/acs/util/DismissibleConstraintLayout;

    invoke-virtual {p1}, Lcom/truecaller/acs/util/DismissibleConstraintLayout;->getOnDismissListener()Ls1/z/b/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
