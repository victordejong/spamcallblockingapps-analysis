.class public final synthetic Ln3/e/a/e/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/h/a/d;


# instance fields
.field public final synthetic a:Ln3/e/a/e/x1;

.field public final synthetic b:Ln3/e/b/r0;

.field public final synthetic c:Landroid/util/Rational;


# direct methods
.method public synthetic constructor <init>(Ln3/e/a/e/x1;Ln3/e/b/r0;Landroid/util/Rational;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/a/e/f0;->a:Ln3/e/a/e/x1;

    iput-object p2, p0, Ln3/e/a/e/f0;->b:Ln3/e/b/r0;

    iput-object p3, p0, Ln3/e/a/e/f0;->c:Landroid/util/Rational;

    return-void
.end method


# virtual methods
.method public final a(Ln3/h/a/b;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Ln3/e/a/e/f0;->a:Ln3/e/a/e/x1;

    iget-object v1, p0, Ln3/e/a/e/f0;->b:Ln3/e/b/r0;

    iget-object v2, p0, Ln3/e/a/e/f0;->c:Landroid/util/Rational;

    .line 1
    iget-object v3, v0, Ln3/e/a/e/x1;->b:Ljava/util/concurrent/Executor;

    new-instance v4, Ln3/e/a/e/g0;

    invoke-direct {v4, v0, p1, v1, v2}, Ln3/e/a/e/g0;-><init>(Ln3/e/a/e/x1;Ln3/h/a/b;Ln3/e/b/r0;Landroid/util/Rational;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string p1, "startFocusAndMetering"

    return-object p1
.end method
