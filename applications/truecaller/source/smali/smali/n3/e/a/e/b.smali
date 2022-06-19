.class public final synthetic Ln3/e/a/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/e/a/e/z0;

.field public final synthetic b:Ln3/e/b/j1/q;


# direct methods
.method public synthetic constructor <init>(Ln3/e/a/e/z0;Ln3/e/b/j1/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/a/e/b;->a:Ln3/e/a/e/z0;

    iput-object p2, p0, Ln3/e/a/e/b;->b:Ln3/e/b/j1/q;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ln3/e/a/e/b;->a:Ln3/e/a/e/z0;

    iget-object v1, p0, Ln3/e/a/e/b;->b:Ln3/e/b/j1/q;

    .line 1
    iget-object v0, v0, Ln3/e/a/e/z0;->r:Ln3/e/a/e/z0$a;

    .line 2
    iget-object v2, v0, Ln3/e/a/e/z0$a;->a:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, v0, Ln3/e/a/e/z0$a;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
