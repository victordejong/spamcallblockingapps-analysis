.class public Ln3/g0/o;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ln3/g0/m;


# direct methods
.method public constructor <init>(Ln3/g0/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/g0/o;->a:Ln3/g0/m;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/g0/o;->a:Ln3/g0/m;

    invoke-virtual {v0}, Ln3/g0/m;->o()V

    .line 2
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
