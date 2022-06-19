.class public final Ls1/a/a/a/v0/j/t/u;
.super Ls1/a/a/a/v0/j/t/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/j/t/g<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ls1/a/a/a/v0/j/t/g;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/b/a0;)Ls1/a/a/a/v0/m/e0;
    .locals 1

    const-string v0, "module"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a0;->q()Ls1/a/a/a/v0/a/g;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ls1/a/a/a/v0/a/g;->n()Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/m/l0;->V0(Z)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "module.builtIns.nullableNothingType"

    .line 4
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/16 p1, 0x30

    .line 5
    invoke-static {p1}, Ls1/a/a/a/v0/a/g;->a(I)V

    const/4 p1, 0x0

    throw p1
.end method
