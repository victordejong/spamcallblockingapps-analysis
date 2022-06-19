.class public final synthetic Li/a/a/c/i;
.super Ljava/lang/Object;
.source "Attributes.java"


# direct methods
.method public static a()Li/a/a/c/k;
    .locals 1

    .line 1
    new-instance v0, Li/a/a/c/d;

    invoke-direct {v0}, Li/a/a/c/d;-><init>()V

    return-object v0
.end method

.method public static b()Li/a/a/c/j;
    .locals 1

    .line 1
    sget-object v0, Li/a/a/c/c;->h:Li/a/a/c/j;

    return-object v0
.end method

.method public static c(Li/a/a/c/f;Ljava/lang/Object;)Li/a/a/c/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/a/a/c/f<",
            "TT;>;TT;)",
            "Li/a/a/c/j;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 1
    invoke-static {v0}, Li/a/a/c/c;->i([Ljava/lang/Object;)Li/a/a/c/j;

    move-result-object p0

    return-object p0
.end method
