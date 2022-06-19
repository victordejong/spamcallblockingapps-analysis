.class public Lw3/b/a/h0/e;
.super Lw3/b/a/h0/c;
.source "SourceFile"


# instance fields
.field public final b:Lw3/b/a/j;


# direct methods
.method public constructor <init>(Lw3/b/a/j;Lw3/b/a/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lw3/b/a/h0/c;-><init>(Lw3/b/a/k;)V

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lw3/b/a/j;->i()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iput-object p1, p0, Lw3/b/a/h0/e;->b:Lw3/b/a/j;

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
.method public g()J
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/e;->b:Lw3/b/a/j;

    invoke-virtual {v0}, Lw3/b/a/j;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/e;->b:Lw3/b/a/j;

    invoke-virtual {v0}, Lw3/b/a/j;->h()Z

    move-result v0

    return v0
.end method
