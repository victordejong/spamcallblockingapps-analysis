.class public Ln3/y/e/k$e;
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
    iput-object p1, p0, Ln3/y/e/k$e;->a:Ln3/y/e/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/e/k$e;->a:Ln3/y/e/k;

    iget-object v0, v0, Ln3/y/e/k;->d:Ln3/y/e/x;

    invoke-virtual {v0}, Ln3/y/e/x;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ln3/y/e/k$e;->a:Ln3/y/e/k;

    invoke-virtual {v0}, Ln3/y/e/k;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/y/e/k$e;->a:Ln3/y/e/k;

    iget-object v0, v0, Ln3/y/e/k;->E0:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    :goto_0
    return-void
.end method
