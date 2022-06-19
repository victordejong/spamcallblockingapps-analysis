.class public Lf/f/b/k/k;
.super Lf/f/b/k/i;
.source "SourceFile"


# instance fields
.field private r0:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/f/b/k/i;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lf/f/b/k/k;->r0:Z

    .line 3
    new-instance v0, Lf/f/b/k/m/b$a;

    return-void
.end method


# virtual methods
.method public c(Lf/f/b/k/f;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/f/b/k/k;->c1()V

    return-void
.end method

.method public c1()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lf/f/b/k/i;->q0:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lf/f/b/k/i;->p0:[Lf/f/b/k/e;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Lf/f/b/k/e;->E0(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/f/b/k/k;->r0:Z

    return v0
.end method
