.class public final Le/m/a/c/g1/d0/b;
.super Le/m/a/c/g1/d0/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/g1/d0/b$a;
    }
.end annotation


# instance fields
.field public n:Le/m/a/c/q1/m;

.field public o:Le/m/a/c/g1/d0/b$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/a/c/g1/d0/h;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Le/m/a/c/q1/t;)J
    .locals 4

    .line 1
    iget-object v0, p1, Le/m/a/c/q1/t;->a:[B

    const/4 v1, 0x0

    .line 2
    aget-byte v2, v0, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_1
    const/4 v2, 0x2

    .line 3
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x4

    shr-int/2addr v0, v2

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    const/4 v3, 0x7

    if-ne v0, v3, :cond_3

    .line 4
    :cond_2
    invoke-virtual {p1, v2}, Le/m/a/c/q1/t;->D(I)V

    .line 5
    invoke-virtual {p1}, Le/m/a/c/q1/t;->w()J

    .line 6
    :cond_3
    invoke-static {p1, v0}, Le/m/a/c/g1/k;->c(Le/m/a/c/q1/t;I)I

    move-result v0

    .line 7
    invoke-virtual {p1, v1}, Le/m/a/c/q1/t;->C(I)V

    int-to-long v0, v0

    return-wide v0
.end method

.method public d(Le/m/a/c/q1/t;JLe/m/a/c/g1/d0/h$b;)Z
    .locals 5

    .line 1
    iget-object v0, p1, Le/m/a/c/q1/t;->a:[B

    .line 2
    iget-object v1, p0, Le/m/a/c/g1/d0/b;->n:Le/m/a/c/q1/m;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 3
    new-instance p2, Le/m/a/c/q1/m;

    const/16 p3, 0x11

    invoke-direct {p2, v0, p3}, Le/m/a/c/q1/m;-><init>([BI)V

    iput-object p2, p0, Le/m/a/c/g1/d0/b;->n:Le/m/a/c/q1/m;

    const/16 p2, 0x9

    .line 4
    iget p1, p1, Le/m/a/c/q1/t;->c:I

    .line 5
    invoke-static {v0, p2, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 6
    iget-object p2, p0, Le/m/a/c/g1/d0/b;->n:Le/m/a/c/q1/m;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Le/m/a/c/q1/m;->e([BLcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    iput-object p1, p4, Le/m/a/c/g1/d0/h$b;->a:Lcom/google/android/exoplayer2/Format;

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 7
    aget-byte v3, v0, v1

    and-int/lit8 v3, v3, 0x7f

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 8
    new-instance p2, Le/m/a/c/g1/d0/b$a;

    invoke-direct {p2, p0}, Le/m/a/c/g1/d0/b$a;-><init>(Le/m/a/c/g1/d0/b;)V

    iput-object p2, p0, Le/m/a/c/g1/d0/b;->o:Le/m/a/c/g1/d0/b$a;

    .line 9
    invoke-static {p1}, Ln3/g0/y;->J1(Le/m/a/c/q1/t;)Le/m/a/c/q1/m$a;

    move-result-object p1

    .line 10
    iget-object p2, p0, Le/m/a/c/g1/d0/b;->n:Le/m/a/c/q1/m;

    invoke-virtual {p2, p1}, Le/m/a/c/q1/m;->b(Le/m/a/c/q1/m$a;)Le/m/a/c/q1/m;

    move-result-object p1

    iput-object p1, p0, Le/m/a/c/g1/d0/b;->n:Le/m/a/c/q1/m;

    goto :goto_1

    .line 11
    :cond_1
    aget-byte p1, v0, v1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    move p1, v2

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    if-eqz p1, :cond_4

    .line 12
    iget-object p1, p0, Le/m/a/c/g1/d0/b;->o:Le/m/a/c/g1/d0/b$a;

    if-eqz p1, :cond_3

    .line 13
    iput-wide p2, p1, Le/m/a/c/g1/d0/b$a;->a:J

    .line 14
    iput-object p1, p4, Le/m/a/c/g1/d0/h$b;->b:Le/m/a/c/g1/d0/f;

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v2
.end method

.method public e(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Le/m/a/c/g1/d0/h;->e(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Le/m/a/c/g1/d0/b;->n:Le/m/a/c/q1/m;

    .line 3
    iput-object p1, p0, Le/m/a/c/g1/d0/b;->o:Le/m/a/c/g1/d0/b$a;

    :cond_0
    return-void
.end method
