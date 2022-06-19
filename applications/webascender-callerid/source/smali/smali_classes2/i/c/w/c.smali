.class public final Li/c/w/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Li/c/w/b;
    .locals 1

    .line 1
    sget-object v0, Li/c/z/a/c;->INSTANCE:Li/c/z/a/c;

    return-object v0
.end method

.method public static b()Li/c/w/b;
    .locals 1

    .line 1
    sget-object v0, Li/c/z/b/a;->b:Ljava/lang/Runnable;

    invoke-static {v0}, Li/c/w/c;->c(Ljava/lang/Runnable;)Li/c/w/b;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/Runnable;)Li/c/w/b;
    .locals 1

    const-string v0, "run is null"

    .line 1
    invoke-static {p0, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/w/e;

    invoke-direct {v0, p0}, Li/c/w/e;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method
