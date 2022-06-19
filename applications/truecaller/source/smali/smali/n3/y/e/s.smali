.class public Ln3/y/e/s;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ln3/y/e/k;


# direct methods
.method public constructor <init>(Ln3/y/e/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/e/s;->a:Ln3/y/e/k;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/y/e/s;->a:Ln3/y/e/k;

    const/4 v0, 0x0

    iput v0, p1, Ln3/y/e/k;->p:I

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/y/e/s;->a:Ln3/y/e/k;

    const/4 v0, 0x3

    iput v0, p1, Ln3/y/e/k;->p:I

    return-void
.end method
