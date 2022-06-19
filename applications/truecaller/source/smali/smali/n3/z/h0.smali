.class public final Ln3/z/h0;
.super Ln3/z/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ln3/z/u<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lq3/a/i0;Lq3/a/g0;Lq3/a/g0;Ln3/z/q1$c;Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/i0;",
            "Lq3/a/g0;",
            "Lq3/a/g0;",
            "Ln3/z/q1$c;",
            "TK;)V"
        }
    .end annotation

    const-string v0, "coroutineScope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notifyDispatcher"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundDispatcher"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Ln3/z/n0;

    new-instance v0, Ln3/z/g0;

    invoke-direct {v0}, Ln3/z/g0;-><init>()V

    invoke-direct {v2, p2, v0}, Ln3/z/n0;-><init>(Lq3/a/g0;Ln3/z/v;)V

    .line 2
    sget-object v0, Ln3/z/k2$b$b;->g:Ln3/z/k2$b$b;

    invoke-static {}, Ln3/z/k2$b$b;->a()Ln3/z/k2$b$b;

    move-result-object v8

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    move-object v9, p5

    .line 3
    invoke-direct/range {v1 .. v9}, Ln3/z/u;-><init>(Ln3/z/k2;Lq3/a/i0;Lq3/a/g0;Lq3/a/g0;Ln3/z/q1$a;Ln3/z/q1$c;Ln3/z/k2$b$b;Ljava/lang/Object;)V

    return-void
.end method
