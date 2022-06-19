.class public final synthetic Ln3/e/a/e/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/h/a/d;


# instance fields
.field public final synthetic a:Ln3/e/a/e/h2;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Ln3/e/a/e/h2;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/a/e/t0;->a:Ln3/e/a/e/h2;

    iput-boolean p2, p0, Ln3/e/a/e/t0;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Ln3/h/a/b;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Ln3/e/a/e/t0;->a:Ln3/e/a/e/h2;

    iget-boolean v1, p0, Ln3/e/a/e/t0;->b:Z

    .line 1
    iget-object v2, v0, Ln3/e/a/e/h2;->d:Ljava/util/concurrent/Executor;

    new-instance v3, Ln3/e/a/e/s0;

    invoke-direct {v3, v0, p1, v1}, Ln3/e/a/e/s0;-><init>(Ln3/e/a/e/h2;Ln3/h/a/b;Z)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableTorch: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
