.class public final synthetic Ln3/e/a/f/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/h/a/d;


# instance fields
.field public final synthetic a:Ln3/e/a/f/h;


# direct methods
.method public synthetic constructor <init>(Ln3/e/a/f/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/a/f/d;->a:Ln3/e/a/f/h;

    return-void
.end method


# virtual methods
.method public final a(Ln3/h/a/b;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ln3/e/a/f/d;->a:Ln3/e/a/f/h;

    .line 1
    iget-object v1, v0, Ln3/e/a/f/h;->d:Ljava/util/concurrent/Executor;

    new-instance v2, Ln3/e/a/f/a;

    invoke-direct {v2, v0, p1}, Ln3/e/a/f/a;-><init>(Ln3/e/a/f/h;Ln3/h/a/b;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string p1, "clearCaptureRequestOptions"

    return-object p1
.end method
