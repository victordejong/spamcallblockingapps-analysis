.class public final synthetic Ln3/e/a/e/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/e/a/e/b1;

.field public final synthetic b:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Ln3/e/a/e/b1;Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/a/e/u;->a:Ln3/e/a/e/b1;

    iput-object p2, p0, Ln3/e/a/e/u;->b:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ln3/e/a/e/u;->a:Ln3/e/a/e/b1;

    iget-object v1, p0, Ln3/e/a/e/u;->b:Ljava/util/Collection;

    .line 1
    :try_start_0
    invoke-virtual {v0, v1}, Ln3/e/a/e/b1;->y(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, v0, Ln3/e/a/e/b1;->f:Ln3/e/a/e/z0;

    invoke-virtual {v0}, Ln3/e/a/e/z0;->i()V

    return-void

    :catchall_0
    move-exception v1

    iget-object v0, v0, Ln3/e/a/e/b1;->f:Ln3/e/a/e/z0;

    invoke-virtual {v0}, Ln3/e/a/e/z0;->i()V

    .line 3
    throw v1
.end method
