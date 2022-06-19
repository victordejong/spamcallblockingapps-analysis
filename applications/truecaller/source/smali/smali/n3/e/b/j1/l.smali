.class public final synthetic Ln3/e/b/j1/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/e/b/j1/d0$b;


# direct methods
.method public synthetic constructor <init>(Ln3/e/b/j1/d0$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/b/j1/l;->a:Ln3/e/b/j1/d0$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ln3/e/b/j1/l;->a:Ln3/e/b/j1/d0$b;

    check-cast v0, Ln3/e/a/e/b1$c;

    .line 1
    iget-object v1, v0, Ln3/e/a/e/b1$c;->c:Ln3/e/a/e/b1;

    iget-object v1, v1, Ln3/e/a/e/b1;->d:Ln3/e/a/e/b1$e;

    sget-object v2, Ln3/e/a/e/b1$e;->b:Ln3/e/a/e/b1$e;

    if-ne v1, v2, :cond_0

    .line 2
    iget-object v0, v0, Ln3/e/a/e/b1$c;->c:Ln3/e/a/e/b1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ln3/e/a/e/b1;->s(Z)V

    :cond_0
    return-void
.end method
