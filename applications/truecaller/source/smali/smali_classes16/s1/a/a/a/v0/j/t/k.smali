.class public final Ls1/a/a/a/v0/j/t/k;
.super Ls1/a/a/a/v0/j/t/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/j/t/g<",
        "Ls1/k<",
        "+",
        "Ls1/a/a/a/v0/f/a;",
        "+",
        "Ls1/a/a/a/v0/f/e;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:Ls1/a/a/a/v0/f/a;

.field public final c:Ls1/a/a/a/v0/f/e;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/f/e;)V
    .locals 1

    const-string v0, "enumClassId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enumEntryName"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ls1/k;

    invoke-direct {v0, p1, p2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0, v0}, Ls1/a/a/a/v0/j/t/g;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Ls1/a/a/a/v0/j/t/k;->b:Ls1/a/a/a/v0/f/a;

    iput-object p2, p0, Ls1/a/a/a/v0/j/t/k;->c:Ls1/a/a/a/v0/f/e;

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/b/a0;)Ls1/a/a/a/v0/m/e0;
    .locals 1

    const-string v0, "module"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/j/t/k;->b:Ls1/a/a/a/v0/f/a;

    invoke-static {p1, v0}, Le/q/f/a/d/a;->o0(Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/f/a;)Ls1/a/a/a/v0/b/e;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Ls1/a/a/a/v0/j/g;->q(Ls1/a/a/a/v0/b/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ls1/a/a/a/v0/b/e;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "Containing class for error-class based enum entry "

    .line 2
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Ls1/a/a/a/v0/j/t/k;->b:Ls1/a/a/a/v0/f/a;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ls1/a/a/a/v0/j/t/k;->c:Ls1/a/a/a/v0/f/e;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ls1/a/a/a/v0/m/x;->d(Ljava/lang/String;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    const-string v0, "ErrorUtils.createErrorTy\u2026mClassId.$enumEntryName\")"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ls1/a/a/a/v0/j/t/k;->b:Ls1/a/a/a/v0/f/a;

    invoke-virtual {v1}, Ls1/a/a/a/v0/f/a;->j()Ls1/a/a/a/v0/f/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls1/a/a/a/v0/j/t/k;->c:Ls1/a/a/a/v0/f/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
