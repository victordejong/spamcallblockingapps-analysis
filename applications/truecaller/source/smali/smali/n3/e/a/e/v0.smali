.class public final synthetic Ln3/e/a/e/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/h/a/d;


# instance fields
.field public final synthetic a:Ln3/e/a/e/i2;

.field public final synthetic b:Ln3/e/b/i1;


# direct methods
.method public synthetic constructor <init>(Ln3/e/a/e/i2;Ln3/e/b/i1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/a/e/v0;->a:Ln3/e/a/e/i2;

    iput-object p2, p0, Ln3/e/a/e/v0;->b:Ln3/e/b/i1;

    return-void
.end method


# virtual methods
.method public final a(Ln3/h/a/b;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Ln3/e/a/e/v0;->a:Ln3/e/a/e/i2;

    iget-object v1, p0, Ln3/e/a/e/v0;->b:Ln3/e/b/i1;

    .line 1
    iget-object v2, v0, Ln3/e/a/e/i2;->b:Ljava/util/concurrent/Executor;

    new-instance v3, Ln3/e/a/e/u0;

    invoke-direct {v3, v0, p1, v1}, Ln3/e/a/e/u0;-><init>(Ln3/e/a/e/i2;Ln3/h/a/b;Ln3/e/b/i1;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string p1, "setZoomRatio"

    return-object p1
.end method
