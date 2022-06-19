.class public final Ls1/a/a/a/v0/m/i0;
.super Ls1/a/a/a/v0/m/t;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/l0;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Ls1/a/a/a/v0/m/t;-><init>(Ls1/a/a/a/v0/m/l0;)V

    return-void
.end method


# virtual methods
.method public P0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Z0(Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/s;
    .locals 1

    const-string v0, "delegate"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ls1/a/a/a/v0/m/i0;

    invoke-direct {v0, p1}, Ls1/a/a/a/v0/m/i0;-><init>(Ls1/a/a/a/v0/m/l0;)V

    return-object v0
.end method
