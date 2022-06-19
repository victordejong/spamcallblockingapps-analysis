.class public abstract Lw3/b/a/h0/d;
.super Lw3/b/a/h0/b;
.source "SourceFile"


# instance fields
.field public final b:Lw3/b/a/c;


# direct methods
.method public constructor <init>(Lw3/b/a/c;Lw3/b/a/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lw3/b/a/h0/b;-><init>(Lw3/b/a/d;)V

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lw3/b/a/c;->y()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iput-object p1, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The field must be supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The field must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public C(JI)J
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lw3/b/a/c;->C(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public l()Lw3/b/a/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    invoke-virtual {v0}, Lw3/b/a/c;->l()Lw3/b/a/j;

    move-result-object v0

    return-object v0
.end method

.method public o()I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    invoke-virtual {v0}, Lw3/b/a/c;->o()I

    move-result v0

    return v0
.end method

.method public s()I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    invoke-virtual {v0}, Lw3/b/a/c;->s()I

    move-result v0

    return v0
.end method

.method public v()Lw3/b/a/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    invoke-virtual {v0}, Lw3/b/a/c;->v()Lw3/b/a/j;

    move-result-object v0

    return-object v0
.end method
