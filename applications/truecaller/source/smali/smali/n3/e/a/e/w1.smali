.class public Ln3/e/a/e/w1;
.super Ln3/e/b/j1/q;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ln3/h/a/b;


# direct methods
.method public constructor <init>(Ln3/e/a/e/x1;Ln3/h/a/b;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ln3/e/a/e/w1;->a:Ln3/h/a/b;

    invoke-direct {p0}, Ln3/e/b/j1/q;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/a/e/w1;->a:Ln3/h/a/b;

    if-eqz v0, :cond_0

    const-string v1, "Camera is closed"

    .line 2
    invoke-static {v1, v0}, Le/d/c/a/a;->F0(Ljava/lang/String;Ln3/h/a/b;)V

    :cond_0
    return-void
.end method

.method public b(Ln3/e/b/j1/t;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/w1;->a:Ln3/h/a/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ln3/h/a/b;->a(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public c(Ln3/e/b/j1/s;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/a/e/w1;->a:Ln3/h/a/b;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ln3/e/b/j1/w$a;

    invoke-direct {v1, p1}, Ln3/e/b/j1/w$a;-><init>(Ln3/e/b/j1/s;)V

    invoke-virtual {v0, v1}, Ln3/h/a/b;->c(Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method
