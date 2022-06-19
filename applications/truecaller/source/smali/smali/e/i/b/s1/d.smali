.class public Le/i/b/s1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/i/b/e2;


# direct methods
.method public constructor <init>(Le/i/b/e2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/b/s1/d;->a:Le/i/b/e2;

    return-void
.end method


# virtual methods
.method public final a(JI)B
    .locals 4

    add-int/lit8 p3, p3, 0x1

    rsub-int/lit8 p3, p3, 0x40

    shl-int/lit8 p3, p3, 0x2

    const-wide/16 v0, 0xf

    shl-long v2, v0, p3

    and-long/2addr p1, v2

    shr-long/2addr p1, p3

    and-long/2addr p1, v0

    long-to-int p1, p1

    int-to-byte p1, p1

    return p1
.end method

.method public final b(JIB)J
    .locals 2

    add-int/lit8 p3, p3, 0x1

    rsub-int/lit8 p3, p3, 0x40

    shl-int/lit8 p3, p3, 0x2

    const-wide/16 v0, 0xf

    shl-long/2addr v0, p3

    not-long v0, v0

    and-long/2addr p1, v0

    int-to-long v0, p4

    shl-long p3, v0, p3

    or-long/2addr p1, p3

    return-wide p1
.end method

.method public c()Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Le/i/b/s1/d;->a:Le/i/b/e2;

    invoke-interface {v0}, Le/i/b/e2;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    .line 4
    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v5

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v3, v4, v2}, Le/i/b/s1/d;->a(JI)B

    move-result v7

    const/16 v8, 0xc

    invoke-virtual {p0, v3, v4, v8, v7}, Le/i/b/s1/d;->b(JIB)J

    move-result-wide v3

    const/4 v7, 0x1

    .line 6
    invoke-virtual {p0, v3, v4, v7}, Le/i/b/s1/d;->a(JI)B

    move-result v8

    invoke-virtual {p0, v5, v6, v2, v8}, Le/i/b/s1/d;->b(JIB)J

    move-result-wide v5

    const/16 v8, 0x20

    shl-long/2addr v0, v8

    const-wide v8, 0xffffffffL

    and-long/2addr v3, v8

    or-long/2addr v0, v3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v7

    const-string v0, "%016x%016x"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
