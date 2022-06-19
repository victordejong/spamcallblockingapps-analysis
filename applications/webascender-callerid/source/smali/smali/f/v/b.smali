.class public Lf/v/b;
.super Lf/v/q;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/v/q;-><init>()V

    .line 2
    invoke-direct {p0}, Lf/v/b;->x0()V

    return-void
.end method

.method private x0()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lf/v/q;->t0(I)Lf/v/q;

    .line 2
    new-instance v1, Lf/v/d;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lf/v/d;-><init>(I)V

    invoke-virtual {p0, v1}, Lf/v/q;->k0(Lf/v/m;)Lf/v/q;

    new-instance v1, Lf/v/c;

    invoke-direct {v1}, Lf/v/c;-><init>()V

    .line 3
    invoke-virtual {p0, v1}, Lf/v/q;->k0(Lf/v/m;)Lf/v/q;

    new-instance v1, Lf/v/d;

    invoke-direct {v1, v0}, Lf/v/d;-><init>(I)V

    .line 4
    invoke-virtual {p0, v1}, Lf/v/q;->k0(Lf/v/m;)Lf/v/q;

    return-void
.end method
