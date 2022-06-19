.class public final Ln3/e/b/k1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/u0;


# instance fields
.field public final a:Ln3/e/b/j1/t;


# direct methods
.method public constructor <init>(Ln3/e/b/j1/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/e/b/k1/b;->a:Ln3/e/b/j1/t;

    return-void
.end method


# virtual methods
.method public e()J
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/b/k1/b;->a:Ln3/e/b/j1/t;

    check-cast v0, Ln3/e/a/e/y0;

    invoke-virtual {v0}, Ln3/e/a/e/y0;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public f()Ln3/e/b/j1/o1;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/b/k1/b;->a:Ln3/e/b/j1/t;

    check-cast v0, Ln3/e/a/e/y0;

    .line 2
    iget-object v0, v0, Ln3/e/a/e/y0;->a:Ln3/e/b/j1/o1;

    return-object v0
.end method
