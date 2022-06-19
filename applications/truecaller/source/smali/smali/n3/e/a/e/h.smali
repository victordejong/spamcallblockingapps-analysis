.class public final synthetic Ln3/e/a/e/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/e/a/e/z0;

.field public final synthetic b:Ljava/util/concurrent/Executor;

.field public final synthetic c:Ln3/e/b/j1/q;


# direct methods
.method public synthetic constructor <init>(Ln3/e/a/e/z0;Ljava/util/concurrent/Executor;Ln3/e/b/j1/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/a/e/h;->a:Ln3/e/a/e/z0;

    iput-object p2, p0, Ln3/e/a/e/h;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Ln3/e/a/e/h;->c:Ln3/e/b/j1/q;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Ln3/e/a/e/h;->a:Ln3/e/a/e/z0;

    iget-object v1, p0, Ln3/e/a/e/h;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Ln3/e/a/e/h;->c:Ln3/e/b/j1/q;

    .line 1
    iget-object v0, v0, Ln3/e/a/e/z0;->r:Ln3/e/a/e/z0$a;

    .line 2
    iget-object v3, v0, Ln3/e/a/e/z0$a;->a:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, v0, Ln3/e/a/e/z0$a;->b:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
