.class public final Ln3/v/r;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lq3/a/x2/f;Ls1/w/f;JI)Landroidx/lifecycle/LiveData;
    .locals 2

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    .line 1
    sget-object p1, Ls1/w/h;->a:Ls1/w/h;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const-wide/16 p2, 0x1388

    :cond_1
    const-string p4, "$this$asLiveData"

    .line 2
    invoke-static {p0, p4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "context"

    invoke-static {p1, p4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ln3/v/q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ln3/v/q;-><init>(Lq3/a/x2/f;Ls1/w/d;)V

    .line 4
    invoke-static {p1, p4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "block"

    invoke-static {v0, p0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance p0, Ln3/v/h;

    invoke-direct {p0, p1, p2, p3, v0}, Ln3/v/h;-><init>(Ls1/w/f;JLs1/z/b/p;)V

    return-object p0
.end method

.method public static final b(Ln3/v/b0;)Ln3/v/w;
    .locals 1

    const-string v0, "$this$lifecycleScope"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Ln3/v/b0;->getLifecycle()Ln3/v/u;

    move-result-object p0

    const-string v0, "lifecycle"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompat;->h0(Ln3/v/u;)Ln3/v/w;

    move-result-object p0

    return-object p0
.end method
