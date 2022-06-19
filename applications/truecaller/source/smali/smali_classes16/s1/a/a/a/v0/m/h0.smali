.class public final Ls1/a/a/a/v0/m/h0;
.super Ls1/a/a/a/v0/m/k1;
.source "SourceFile"


# instance fields
.field public final b:Ls1/a/a/a/v0/l/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/i<",
            "Ls1/a/a/a/v0/m/e0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ls1/a/a/a/v0/l/m;

.field public final d:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ls1/a/a/a/v0/m/e0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/l/m;Ls1/z/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/l/m;",
            "Ls1/z/b/a<",
            "+",
            "Ls1/a/a/a/v0/m/e0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "computation"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/m/k1;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/m/h0;->c:Ls1/a/a/a/v0/l/m;

    iput-object p2, p0, Ls1/a/a/a/v0/m/h0;->d:Ls1/z/b/a;

    .line 2
    invoke-interface {p1, p2}, Ls1/a/a/a/v0/l/m;->e(Ls1/z/b/a;)Ls1/a/a/a/v0/l/i;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/m/h0;->b:Ls1/a/a/a/v0/l/i;

    return-void
.end method


# virtual methods
.method public Q0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/e0;
    .locals 3

    const-string v0, "kotlinTypeRefiner"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ls1/a/a/a/v0/m/h0;

    iget-object v1, p0, Ls1/a/a/a/v0/m/h0;->c:Ls1/a/a/a/v0/l/m;

    new-instance v2, Ls1/a/a/a/v0/m/g0;

    invoke-direct {v2, p0, p1}, Ls1/a/a/a/v0/m/g0;-><init>(Ls1/a/a/a/v0/m/h0;Ls1/a/a/a/v0/m/l1/e;)V

    invoke-direct {v0, v1, v2}, Ls1/a/a/a/v0/m/h0;-><init>(Ls1/a/a/a/v0/l/m;Ls1/z/b/a;)V

    return-object v0
.end method

.method public S0()Ls1/a/a/a/v0/m/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/h0;->b:Ls1/a/a/a/v0/l/i;

    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/m/e0;

    return-object v0
.end method

.method public T0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/h0;->b:Ls1/a/a/a/v0/l/i;

    check-cast v0, Ls1/a/a/a/v0/l/e$h;

    .line 2
    iget-object v1, v0, Ls1/a/a/a/v0/l/e$h;->c:Ljava/lang/Object;

    sget-object v2, Ls1/a/a/a/v0/l/e$n;->a:Ls1/a/a/a/v0/l/e$n;

    if-eq v1, v2, :cond_0

    iget-object v0, v0, Ls1/a/a/a/v0/l/e$h;->c:Ljava/lang/Object;

    sget-object v1, Ls1/a/a/a/v0/l/e$n;->b:Ls1/a/a/a/v0/l/e$n;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
