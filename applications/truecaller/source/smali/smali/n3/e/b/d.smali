.class public final synthetic Ln3/e/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/h/a/d;


# instance fields
.field public final synthetic a:Ln3/e/b/p0;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ln3/e/b/p0;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/b/d;->a:Ln3/e/b/p0;

    iput-object p2, p0, Ln3/e/b/d;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Ln3/h/a/b;)Ljava/lang/Object;
    .locals 9

    iget-object v1, p0, Ln3/e/b/d;->a:Ln3/e/b/p0;

    iget-object v2, p0, Ln3/e/b/d;->b:Landroid/content/Context;

    .line 1
    iget-object v7, v1, Ln3/e/b/p0;->d:Ljava/util/concurrent/Executor;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2
    new-instance v8, Ln3/e/b/j;

    move-object v0, v8

    move-object v3, v7

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Ln3/e/b/j;-><init>(Ln3/e/b/p0;Landroid/content/Context;Ljava/util/concurrent/Executor;Ln3/h/a/b;J)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string p1, "CameraX initInternal"

    return-object p1
.end method
