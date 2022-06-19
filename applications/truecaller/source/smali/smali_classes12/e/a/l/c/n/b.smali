.class public abstract Le/a/l/c/n/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/c/n/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final k(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    new-instance v0, Lw3/b/a/b;

    invoke-direct {v0, p1, p2}, Lw3/b/a/b;-><init>(J)V

    invoke-interface {p0}, Le/a/l/c/n/f;->c()I

    move-result p1

    invoke-virtual {v0, p1}, Lw3/b/a/b;->D(I)Lw3/b/a/b;

    move-result-object p1

    .line 2
    new-instance p2, Lw3/b/a/b;

    invoke-direct {p2}, Lw3/b/a/b;-><init>()V

    .line 3
    invoke-virtual {p1}, Lw3/b/a/e0/c;->S1()Lw3/b/a/n;

    move-result-object p1

    invoke-virtual {p2, p1}, Lw3/b/a/e0/c;->f(Lw3/b/a/z;)Z

    move-result p1

    return p1
.end method

.method public final l()Z
    .locals 2

    .line 1
    invoke-static {}, Lw3/b/a/p;->h()Lw3/b/a/p;

    move-result-object v0

    invoke-interface {p0}, Le/a/l/c/n/f;->d()Lw3/b/a/p;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v0, v1}, Lw3/b/a/p;->a(Lw3/b/a/b0;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Partial cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
