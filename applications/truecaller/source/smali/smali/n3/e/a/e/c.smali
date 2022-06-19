.class public final synthetic Ln3/e/a/e/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/e/b/j1/q;

.field public final synthetic b:Ln3/e/b/j1/t;


# direct methods
.method public synthetic constructor <init>(Ln3/e/b/j1/q;Ln3/e/b/j1/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/a/e/c;->a:Ln3/e/b/j1/q;

    iput-object p2, p0, Ln3/e/a/e/c;->b:Ln3/e/b/j1/t;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ln3/e/a/e/c;->a:Ln3/e/b/j1/q;

    iget-object v1, p0, Ln3/e/a/e/c;->b:Ln3/e/b/j1/t;

    .line 1
    invoke-virtual {v0, v1}, Ln3/e/b/j1/q;->b(Ln3/e/b/j1/t;)V

    return-void
.end method
