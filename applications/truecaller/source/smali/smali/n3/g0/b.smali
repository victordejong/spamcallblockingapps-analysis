.class public Ln3/g0/b;
.super Ln3/g0/s;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ln3/g0/s;-><init>()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Ln3/g0/s;->P(I)Ln3/g0/s;

    .line 3
    new-instance v1, Ln3/g0/f;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ln3/g0/f;-><init>(I)V

    invoke-virtual {p0, v1}, Ln3/g0/s;->M(Ln3/g0/m;)Ln3/g0/s;

    new-instance v1, Ln3/g0/c;

    invoke-direct {v1}, Ln3/g0/c;-><init>()V

    .line 4
    invoke-virtual {p0, v1}, Ln3/g0/s;->M(Ln3/g0/m;)Ln3/g0/s;

    new-instance v1, Ln3/g0/f;

    invoke-direct {v1, v0}, Ln3/g0/f;-><init>(I)V

    .line 5
    invoke-virtual {p0, v1}, Ln3/g0/s;->M(Ln3/g0/m;)Ln3/g0/s;

    return-void
.end method
