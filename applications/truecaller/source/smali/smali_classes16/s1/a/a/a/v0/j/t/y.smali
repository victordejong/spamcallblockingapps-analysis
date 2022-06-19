.class public final Ls1/a/a/a/v0/j/t/y;
.super Ls1/a/a/a/v0/j/t/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/j/t/b0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Ls1/a/a/a/v0/j/t/b0;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/b/a0;)Ls1/a/a/a/v0/m/e0;
    .locals 1

    const-string v0, "module"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ls1/a/a/a/v0/a/k$a;->f0:Ls1/a/a/a/v0/f/a;

    invoke-static {p1, v0}, Le/q/f/a/d/a;->o0(Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/f/a;)Ls1/a/a/a/v0/b/e;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ls1/a/a/a/v0/b/e;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Unsigned type UInt not found"

    .line 2
    invoke-static {p1}, Ls1/a/a/a/v0/m/x;->d(Ljava/lang/String;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    const-string v0, "ErrorUtils.createErrorTy\u2026ned type UInt not found\")"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Ls1/a/a/a/v0/j/t/g;->a:Ljava/lang/Object;

    .line 3
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".toUInt()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
