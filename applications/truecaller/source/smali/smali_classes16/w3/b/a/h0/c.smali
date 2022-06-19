.class public abstract Lw3/b/a/h0/c;
.super Lw3/b/a/j;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Lw3/b/a/k;


# direct methods
.method public constructor <init>(Lw3/b/a/k;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lw3/b/a/j;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lw3/b/a/h0/c;->a:Lw3/b/a/k;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The type must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lw3/b/a/j;

    .line 2
    invoke-virtual {p1}, Lw3/b/a/j;->g()J

    move-result-wide v0

    .line 3
    invoke-virtual {p0}, Lw3/b/a/j;->g()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public d(JJ)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lw3/b/a/j;->e(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Ls1/a/a/a/v0/f/d;->g3(J)I

    move-result p1

    return p1
.end method

.method public final f()Lw3/b/a/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/c;->a:Lw3/b/a/k;

    return-object v0
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "DurationField["

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lw3/b/a/h0/c;->a:Lw3/b/a/k;

    .line 3
    iget-object v1, v1, Lw3/b/a/k;->a:Ljava/lang/String;

    const/16 v2, 0x5d

    .line 4
    invoke-static {v0, v1, v2}, Le/d/c/a/a;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
