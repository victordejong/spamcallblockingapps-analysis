.class public final synthetic Ln3/e/a/e/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/e/b/j1/j1$c;

.field public final synthetic b:Ln3/e/b/j1/j1;


# direct methods
.method public synthetic constructor <init>(Ln3/e/b/j1/j1$c;Ln3/e/b/j1/j1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/a/e/m;->a:Ln3/e/b/j1/j1$c;

    iput-object p2, p0, Ln3/e/a/e/m;->b:Ln3/e/b/j1/j1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ln3/e/a/e/m;->a:Ln3/e/b/j1/j1$c;

    iget-object v1, p0, Ln3/e/a/e/m;->b:Ln3/e/b/j1/j1;

    .line 1
    sget-object v2, Ln3/e/b/j1/j1$e;->a:Ln3/e/b/j1/j1$e;

    invoke-interface {v0, v1, v2}, Ln3/e/b/j1/j1$c;->a(Ln3/e/b/j1/j1;Ln3/e/b/j1/j1$e;)V

    return-void
.end method
