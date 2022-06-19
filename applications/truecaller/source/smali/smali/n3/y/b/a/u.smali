.class public final synthetic Ln3/y/b/a/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ln3/y/b/a/v;

.field public final b:Ln3/y/b/a/g0;


# direct methods
.method public constructor <init>(Ln3/y/b/a/v;Ln3/y/b/a/g0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/u;->a:Ln3/y/b/a/v;

    iput-object p2, p0, Ln3/y/b/a/u;->b:Ln3/y/b/a/g0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ln3/y/b/a/u;->a:Ln3/y/b/a/v;

    iget-object v1, p0, Ln3/y/b/a/u;->b:Ln3/y/b/a/g0;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    invoke-virtual {v0, v1}, Ln3/y/b/a/v;->b(Ln3/y/b/a/g0;)V
    :try_end_0
    .catch Ln3/y/b/a/f; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
