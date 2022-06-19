.class public Ln3/y/e/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/e/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/y/e/k;


# direct methods
.method public constructor <init>(Ln3/y/e/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/e/k$b;->a:Ln3/y/e/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/y/e/k$b;->a:Ln3/y/e/k;

    iget v1, v0, Ln3/y/e/k;->p:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-boolean v2, v0, Ln3/y/e/k;->z:Z

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, v0, Ln3/y/e/k;->H0:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, v0, Ln3/y/e/k;->G0:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 5
    :goto_0
    iget-object v0, p0, Ln3/y/e/k$b;->a:Ln3/y/e/k;

    iget-object v0, v0, Ln3/y/e/k;->d:Ln3/y/e/x;

    invoke-virtual {v0}, Ln3/y/e/x;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Ln3/y/e/k$b;->a:Ln3/y/e/k;

    iget-object v1, v0, Ln3/y/e/k;->N0:Ljava/lang/Runnable;

    iget-wide v2, v0, Ln3/y/e/k;->r:J

    invoke-virtual {v0, v1, v2, v3}, Ln3/y/e/k;->n(Ljava/lang/Runnable;J)V

    :cond_3
    return-void
.end method
