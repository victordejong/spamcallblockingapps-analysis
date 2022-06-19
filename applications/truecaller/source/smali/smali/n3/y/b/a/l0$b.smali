.class public final Ln3/y/b/a/l0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:I

.field public d:J

.field public e:J

.field public f:Ln3/y/b/a/t0/o0/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ln3/y/b/a/t0/o0/a;->e:Ln3/y/b/a/t0/o0/a;

    iput-object v0, p0, Ln3/y/b/a/l0$b;->f:Ln3/y/b/a/t0/o0/a;

    return-void
.end method


# virtual methods
.method public a(II)J
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/l0$b;->f:Ln3/y/b/a/t0/o0/a;

    iget-object v0, v0, Ln3/y/b/a/t0/o0/a;->c:[Ln3/y/b/a/t0/o0/a$a;

    aget-object p1, v0, p1

    .line 2
    iget v0, p1, Ln3/y/b/a/t0/o0/a$a;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Ln3/y/b/a/t0/o0/a$a;->d:[J

    aget-wide v0, p1, p2

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide v0
.end method

.method public b(J)I
    .locals 9

    .line 1
    iget-object v0, p0, Ln3/y/b/a/l0$b;->f:Ln3/y/b/a/t0/o0/a;

    iget-wide v1, p0, Ln3/y/b/a/l0$b;->d:J

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, p1, v3

    const/4 v6, -0x1

    if-eqz v5, :cond_3

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v7

    if-eqz v5, :cond_0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, v0, Ln3/y/b/a/t0/o0/a;->b:[J

    array-length v5, v2

    if-ge v1, v5, :cond_2

    aget-wide v7, v2, v1

    cmp-long v5, v7, v3

    if-eqz v5, :cond_2

    aget-wide v7, v2, v1

    cmp-long v2, p1, v7

    if-gez v2, :cond_1

    iget-object v2, v0, Ln3/y/b/a/t0/o0/a;->c:[Ln3/y/b/a/t0/o0/a$a;

    aget-object v2, v2, v1

    .line 4
    invoke-virtual {v2}, Ln3/y/b/a/t0/o0/a$a;->b()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, v0, Ln3/y/b/a/t0/o0/a;->b:[J

    array-length p1, p1

    if-ge v1, p1, :cond_3

    move v6, v1

    :cond_3
    :goto_1
    return v6
.end method

.method public c(J)I
    .locals 9

    .line 1
    iget-object v0, p0, Ln3/y/b/a/l0$b;->f:Ln3/y/b/a/t0/o0/a;

    .line 2
    iget-object v1, v0, Ln3/y/b/a/t0/o0/a;->b:[J

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_4

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, p1, v3

    const/4 v6, 0x0

    if-nez v5, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v5, v0, Ln3/y/b/a/t0/o0/a;->b:[J

    aget-wide v7, v5, v1

    cmp-long v3, v7, v3

    if-nez v3, :cond_1

    .line 4
    iget-wide v3, v0, Ln3/y/b/a/t0/o0/a;->d:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v3, v7

    if-eqz v5, :cond_2

    cmp-long v3, p1, v3

    if-gez v3, :cond_3

    goto :goto_1

    :cond_1
    cmp-long v3, p1, v7

    if-gez v3, :cond_3

    :cond_2
    :goto_1
    move v6, v2

    :cond_3
    :goto_2
    if-eqz v6, :cond_4

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    if-ltz v1, :cond_5

    .line 5
    iget-object p1, v0, Ln3/y/b/a/t0/o0/a;->c:[Ln3/y/b/a/t0/o0/a$a;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ln3/y/b/a/t0/o0/a$a;->b()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, -0x1

    :goto_3
    return v1
.end method

.method public d(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/l0$b;->f:Ln3/y/b/a/t0/o0/a;

    iget-object v0, v0, Ln3/y/b/a/t0/o0/a;->c:[Ln3/y/b/a/t0/o0/a$a;

    aget-object p1, v0, p1

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p1, v0}, Ln3/y/b/a/t0/o0/a$a;->a(I)I

    move-result p1

    return p1
.end method

.method public e(II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/l0$b;->f:Ln3/y/b/a/t0/o0/a;

    iget-object v0, v0, Ln3/y/b/a/t0/o0/a;->c:[Ln3/y/b/a/t0/o0/a$a;

    aget-object p1, v0, p1

    .line 2
    iget v0, p1, Ln3/y/b/a/t0/o0/a$a;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Ln3/y/b/a/t0/o0/a$a;->c:[I

    aget p1, p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f(Ljava/lang/Object;Ljava/lang/Object;IJJ)Ln3/y/b/a/l0$b;
    .locals 1

    .line 1
    sget-object v0, Ln3/y/b/a/t0/o0/a;->e:Ln3/y/b/a/t0/o0/a;

    .line 2
    iput-object p1, p0, Ln3/y/b/a/l0$b;->a:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Ln3/y/b/a/l0$b;->b:Ljava/lang/Object;

    .line 4
    iput p3, p0, Ln3/y/b/a/l0$b;->c:I

    .line 5
    iput-wide p4, p0, Ln3/y/b/a/l0$b;->d:J

    .line 6
    iput-wide p6, p0, Ln3/y/b/a/l0$b;->e:J

    .line 7
    iput-object v0, p0, Ln3/y/b/a/l0$b;->f:Ln3/y/b/a/t0/o0/a;

    return-object p0
.end method
