.class public final Lw3/b/a/h0/q;
.super Lw3/b/a/h0/f;
.source "SourceFile"


# instance fields
.field public final d:Lw3/b/a/a;

.field public final e:I

.field public transient f:I


# direct methods
.method public constructor <init>(Lw3/b/a/a;Lw3/b/a/c;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p2, v0, v0}, Lw3/b/a/h0/f;-><init>(Lw3/b/a/c;Lw3/b/a/j;Lw3/b/a/d;)V

    .line 2
    iput-object p1, p0, Lw3/b/a/h0/q;->d:Lw3/b/a/a;

    .line 3
    invoke-super {p0}, Lw3/b/a/h0/f;->s()I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    add-int/2addr p1, p2

    .line 4
    iput p1, p0, Lw3/b/a/h0/q;->f:I

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_1

    .line 5
    iput v0, p0, Lw3/b/a/h0/q;->f:I

    goto :goto_0

    .line 6
    :cond_1
    iput p1, p0, Lw3/b/a/h0/q;->f:I

    .line 7
    :goto_0
    iput v0, p0, Lw3/b/a/h0/q;->e:I

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/f;->c:Lw3/b/a/d;

    .line 2
    iget-object v1, p0, Lw3/b/a/h0/q;->d:Lw3/b/a/a;

    invoke-virtual {v0, v1}, Lw3/b/a/d;->b(Lw3/b/a/a;)Lw3/b/a/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public C(JI)J
    .locals 2

    .line 1
    iget v0, p0, Lw3/b/a/h0/q;->f:I

    invoke-virtual {p0}, Lw3/b/a/h0/f;->o()I

    move-result v1

    invoke-static {p0, p3, v0, v1}, Ls1/a/a/a/v0/f/d;->Y3(Lw3/b/a/c;III)V

    .line 2
    iget v0, p0, Lw3/b/a/h0/q;->e:I

    if-gt p3, v0, :cond_0

    add-int/lit8 p3, p3, -0x1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lw3/b/a/h0/f;->C(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public c(J)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lw3/b/a/h0/f;->c(J)I

    move-result p1

    .line 2
    iget p2, p0, Lw3/b/a/h0/q;->e:I

    if-ge p1, p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    return p1
.end method

.method public s()I
    .locals 1

    .line 1
    iget v0, p0, Lw3/b/a/h0/q;->f:I

    return v0
.end method
