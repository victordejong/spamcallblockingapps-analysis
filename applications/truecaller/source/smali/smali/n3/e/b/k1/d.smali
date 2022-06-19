.class public abstract Ln3/e/b/k1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/i1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ln3/e/b/i1;)Ln3/e/b/i1;
    .locals 4

    .line 1
    new-instance v0, Ln3/e/b/k1/a;

    move-object v1, p0

    check-cast v1, Ln3/e/a/e/j2;

    .line 2
    iget v1, v1, Ln3/e/a/e/j2;->a:F

    .line 3
    check-cast p0, Ln3/e/a/e/j2;

    .line 4
    iget v2, p0, Ln3/e/a/e/j2;->b:F

    .line 5
    iget v3, p0, Ln3/e/a/e/j2;->c:F

    .line 6
    iget p0, p0, Ln3/e/a/e/j2;->d:F

    .line 7
    invoke-direct {v0, v1, v2, v3, p0}, Ln3/e/b/k1/a;-><init>(FFFF)V

    return-object v0
.end method


# virtual methods
.method public abstract a()F
.end method

.method public abstract c()F
.end method

.method public abstract d()F
.end method

.method public abstract e()F
.end method
