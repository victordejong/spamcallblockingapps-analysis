.class public final synthetic Ln3/e/a/e/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/e/a/e/x1;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Ln3/e/a/e/x1;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/a/e/c0;->a:Ln3/e/a/e/x1;

    iput-wide p2, p0, Ln3/e/a/e/c0;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Ln3/e/a/e/c0;->a:Ln3/e/a/e/x1;

    iget-wide v1, p0, Ln3/e/a/e/c0;->b:J

    .line 1
    iget-object v3, v0, Ln3/e/a/e/x1;->b:Ljava/util/concurrent/Executor;

    new-instance v4, Ln3/e/a/e/b0;

    invoke-direct {v4, v0, v1, v2}, Ln3/e/a/e/b0;-><init>(Ln3/e/a/e/x1;J)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
