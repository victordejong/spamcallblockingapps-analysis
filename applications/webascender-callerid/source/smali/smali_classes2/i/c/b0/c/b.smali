.class public final synthetic Li/c/b0/c/b;
.super Ljava/lang/Object;
.source "Disposable.java"


# direct methods
.method public static a()Li/c/b0/c/c;
    .locals 1

    .line 1
    sget-object v0, Li/c/b0/e/a/d;->INSTANCE:Li/c/b0/e/a/d;

    return-object v0
.end method

.method public static b()Li/c/b0/c/c;
    .locals 1

    .line 1
    sget-object v0, Li/c/b0/e/b/a;->b:Ljava/lang/Runnable;

    invoke-static {v0}, Li/c/b0/c/b;->c(Ljava/lang/Runnable;)Li/c/b0/c/c;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/Runnable;)Li/c/b0/c/c;
    .locals 1

    const-string v0, "run is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/c/f;

    invoke-direct {v0, p0}, Li/c/b0/c/f;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method
