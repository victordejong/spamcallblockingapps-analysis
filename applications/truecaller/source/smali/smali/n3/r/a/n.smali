.class public Ln3/r/a/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroidx/fragment/app/Fragment;

.field public final synthetic c:Ln3/r/a/m0$a;

.field public final synthetic d:Ln3/k/e/a;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Ln3/r/a/m0$a;Ln3/k/e/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/r/a/n;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Ln3/r/a/n;->b:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Ln3/r/a/n;->c:Ln3/r/a/m0$a;

    iput-object p4, p0, Ln3/r/a/n;->d:Ln3/k/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/r/a/n;->a:Landroid/view/ViewGroup;

    new-instance v0, Ln3/r/a/n$a;

    invoke-direct {v0, p0}, Ln3/r/a/n$a;-><init>(Ln3/r/a/n;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
