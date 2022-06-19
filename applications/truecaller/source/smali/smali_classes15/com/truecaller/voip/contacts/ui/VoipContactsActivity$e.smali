.class public final Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->pa(Landroid/view/View;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Landroid/view/View;ZLandroid/view/animation/AccelerateInterpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$e;->a:Landroid/view/View;

    iput-boolean p2, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$e;->b:Z

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$e;->a:Landroid/view/View;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 3
    iget-boolean v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$e;->b:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Le/a/p5/s0/f;->Q(Landroid/view/View;)V

    :goto_0
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
