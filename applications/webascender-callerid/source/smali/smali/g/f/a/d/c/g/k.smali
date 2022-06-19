.class public final Lg/f/a/d/c/g/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lg/f/a/d/c/g/l;)Lg/f/a/d/c/g/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lg/f/a/d/c/g/l<",
            "TT;>;)",
            "Lg/f/a/d/c/g/l<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lg/f/a/d/c/g/m;

    if-nez v0, :cond_2

    instance-of v0, p0, Lg/f/a/d/c/g/n;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Lg/f/a/d/c/g/n;

    invoke-direct {v0, p0}, Lg/f/a/d/c/g/n;-><init>(Lg/f/a/d/c/g/l;)V

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lg/f/a/d/c/g/m;

    invoke-direct {v0, p0}, Lg/f/a/d/c/g/m;-><init>(Lg/f/a/d/c/g/l;)V

    return-object v0

    :cond_2
    :goto_0
    return-object p0
.end method
