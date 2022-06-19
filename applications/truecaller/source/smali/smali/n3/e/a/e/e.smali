.class public final synthetic Ln3/e/a/e/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/e/b/j1/q;

.field public final synthetic b:Ln3/e/b/j1/s;


# direct methods
.method public synthetic constructor <init>(Ln3/e/b/j1/q;Ln3/e/b/j1/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/a/e/e;->a:Ln3/e/b/j1/q;

    iput-object p2, p0, Ln3/e/a/e/e;->b:Ln3/e/b/j1/s;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ln3/e/a/e/e;->a:Ln3/e/b/j1/q;

    iget-object v1, p0, Ln3/e/a/e/e;->b:Ln3/e/b/j1/s;

    .line 1
    invoke-virtual {v0, v1}, Ln3/e/b/j1/q;->c(Ln3/e/b/j1/s;)V

    return-void
.end method
