.class Lcom/hiya/stingray/ui/login/MarketingFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/login/MarketingFragment;->h1(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/hiya/stingray/ui/login/MarketingFragment;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/login/MarketingFragment;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/login/MarketingFragment$b;->b:Lcom/hiya/stingray/ui/login/MarketingFragment;

    iput-boolean p2, p0, Lcom/hiya/stingray/ui/login/MarketingFragment$b;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/MarketingFragment$b;->b:Lcom/hiya/stingray/ui/login/MarketingFragment;

    iget-boolean v0, p0, Lcom/hiya/stingray/ui/login/MarketingFragment$b;->a:Z

    invoke-static {p1, v0}, Lcom/hiya/stingray/ui/login/MarketingFragment;->g1(Lcom/hiya/stingray/ui/login/MarketingFragment;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/MarketingFragment$b;->b:Lcom/hiya/stingray/ui/login/MarketingFragment;

    iget-boolean v0, p0, Lcom/hiya/stingray/ui/login/MarketingFragment$b;->a:Z

    invoke-static {p1, v0}, Lcom/hiya/stingray/ui/login/MarketingFragment;->g1(Lcom/hiya/stingray/ui/login/MarketingFragment;Z)V

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
