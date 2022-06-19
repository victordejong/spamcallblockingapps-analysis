.class public Le/a/e/q0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/CallMeBackActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/ui/CallMeBackActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/q0;->a:Lcom/truecaller/ui/CallMeBackActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/e/q0;->a:Lcom/truecaller/ui/CallMeBackActivity;

    invoke-static {p1}, Lcom/truecaller/ui/CallMeBackActivity;->pa(Lcom/truecaller/ui/CallMeBackActivity;)V

    .line 2
    iget-object p1, p0, Le/a/e/q0;->a:Lcom/truecaller/ui/CallMeBackActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
