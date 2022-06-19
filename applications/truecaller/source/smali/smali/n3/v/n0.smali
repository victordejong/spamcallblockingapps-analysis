.class public final Ln3/v/n0;
.super Lq3/a/g0;
.source "SourceFile"


# instance fields
.field public final b:Ln3/v/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lq3/a/g0;-><init>()V

    .line 2
    new-instance v0, Ln3/v/k;

    invoke-direct {v0}, Ln3/v/k;-><init>()V

    iput-object v0, p0, Ln3/v/n0;->b:Ln3/v/k;

    return-void
.end method


# virtual methods
.method public F0(Ls1/w/f;Ljava/lang/Runnable;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "block"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Ln3/v/n0;->b:Ln3/v/k;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runnable"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lq3/a/t0;->a:Lq3/a/t0;

    sget-object v0, Lq3/a/y2/q;->c:Lq3/a/y1;

    .line 4
    invoke-virtual {v0}, Lq3/a/y1;->K0()Lq3/a/y1;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lq3/a/g0;->J0(Ls1/w/f;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ln3/v/k;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1, p2}, Ln3/v/k;->c(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    new-instance v2, Ln3/v/j;

    invoke-direct {v2, v1, p1, p2}, Ln3/v/j;-><init>(Ln3/v/k;Ls1/w/f;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1, v2}, Lq3/a/g0;->F0(Ls1/w/f;Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public J0(Ls1/w/f;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lq3/a/t0;->a:Lq3/a/t0;

    sget-object v0, Lq3/a/y2/q;->c:Lq3/a/y1;

    .line 2
    invoke-virtual {v0}, Lq3/a/y1;->K0()Lq3/a/y1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lq3/a/g0;->J0(Ls1/w/f;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 3
    :cond_0
    iget-object p1, p0, Ln3/v/n0;->b:Ln3/v/k;

    invoke-virtual {p1}, Ln3/v/k;->a()Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method
