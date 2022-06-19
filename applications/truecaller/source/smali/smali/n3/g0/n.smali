.class public Ln3/g0/n;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ln3/g/a;

.field public final synthetic b:Ln3/g0/m;


# direct methods
.method public constructor <init>(Ln3/g0/m;Ln3/g/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/g0/n;->b:Ln3/g0/m;

    iput-object p2, p0, Ln3/g0/n;->a:Ln3/g/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/g0/n;->a:Ln3/g/a;

    invoke-virtual {v0, p1}, Ln3/g/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Ln3/g0/n;->b:Ln3/g0/m;

    iget-object v0, v0, Ln3/g0/m;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/g0/n;->b:Ln3/g0/m;

    iget-object v0, v0, Ln3/g0/m;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
