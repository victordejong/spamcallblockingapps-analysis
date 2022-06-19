.class public final synthetic Ln3/e/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/e/b/p0;

.field public final synthetic b:Ljava/util/concurrent/Executor;

.field public final synthetic c:J

.field public final synthetic d:Ln3/h/a/b;


# direct methods
.method public synthetic constructor <init>(Ln3/e/b/p0;Ljava/util/concurrent/Executor;JLn3/h/a/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/b/g;->a:Ln3/e/b/p0;

    iput-object p2, p0, Ln3/e/b/g;->b:Ljava/util/concurrent/Executor;

    iput-wide p3, p0, Ln3/e/b/g;->c:J

    iput-object p5, p0, Ln3/e/b/g;->d:Ln3/h/a/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v1, p0, Ln3/e/b/g;->a:Ln3/e/b/p0;

    iget-object v7, p0, Ln3/e/b/g;->b:Ljava/util/concurrent/Executor;

    iget-wide v5, p0, Ln3/e/b/g;->c:J

    iget-object v4, p0, Ln3/e/b/g;->d:Ln3/h/a/b;

    .line 1
    iget-object v2, v1, Ln3/e/b/p0;->j:Landroid/content/Context;

    .line 2
    new-instance v8, Ln3/e/b/j;

    move-object v0, v8

    move-object v3, v7

    invoke-direct/range {v0 .. v6}, Ln3/e/b/j;-><init>(Ln3/e/b/p0;Landroid/content/Context;Ljava/util/concurrent/Executor;Ln3/h/a/b;J)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
