.class Lf/v/m$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/v/m;->W(Landroid/animation/Animator;Lf/e/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf/e/a;

.field final synthetic b:Lf/v/m;


# direct methods
.method constructor <init>(Lf/v/m;Lf/e/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/v/m$b;->b:Lf/v/m;

    iput-object p2, p0, Lf/v/m$b;->a:Lf/e/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/v/m$b;->a:Lf/e/a;

    invoke-virtual {v0, p1}, Lf/e/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lf/v/m$b;->b:Lf/v/m;

    iget-object v0, v0, Lf/v/m;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/v/m$b;->b:Lf/v/m;

    iget-object v0, v0, Lf/v/m;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
