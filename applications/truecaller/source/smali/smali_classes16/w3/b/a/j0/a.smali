.class public Lw3/b/a/j0/a;
.super Lw3/b/a/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/b/a/j0/a$a;
    }
.end annotation


# static fields
.field public static final h:I


# instance fields
.field public final f:Lw3/b/a/g;

.field public final transient g:[Lw3/b/a/j0/a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "org.joda.time.tz.CachedDateTimeZone.size"

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/16 v0, 0x200

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    :goto_1
    if-lez v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    shr-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    shl-int v0, v1, v2

    :goto_2
    sub-int/2addr v0, v1

    .line 3
    sput v0, Lw3/b/a/j0/a;->h:I

    return-void
.end method

.method public constructor <init>(Lw3/b/a/g;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lw3/b/a/g;->a:Ljava/lang/String;

    .line 2
    invoke-direct {p0, v0}, Lw3/b/a/g;-><init>(Ljava/lang/String;)V

    .line 3
    sget v0, Lw3/b/a/j0/a;->h:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lw3/b/a/j0/a$a;

    iput-object v0, p0, Lw3/b/a/j0/a;->g:[Lw3/b/a/j0/a$a;

    .line 4
    iput-object p1, p0, Lw3/b/a/j0/a;->f:Lw3/b/a/g;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lw3/b/a/j0/a;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lw3/b/a/j0/a;->f:Lw3/b/a/g;

    check-cast p1, Lw3/b/a/j0/a;

    iget-object p1, p1, Lw3/b/a/j0/a;->f:Lw3/b/a/g;

    invoke-virtual {v0, p1}, Lw3/b/a/g;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/j0/a;->f:Lw3/b/a/g;

    invoke-virtual {v0}, Lw3/b/a/g;->hashCode()I

    move-result v0

    return v0
.end method

.method public k(J)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lw3/b/a/j0/a;->v(J)Lw3/b/a/j0/a$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lw3/b/a/j0/a$a;->a(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public m(J)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lw3/b/a/j0/a;->v(J)Lw3/b/a/j0/a$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lw3/b/a/j0/a$a;->b(J)I

    move-result p1

    return p1
.end method

.method public p(J)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lw3/b/a/j0/a;->v(J)Lw3/b/a/j0/a$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lw3/b/a/j0/a$a;->c(J)I

    move-result p1

    return p1
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/j0/a;->f:Lw3/b/a/g;

    invoke-virtual {v0}, Lw3/b/a/g;->q()Z

    move-result v0

    return v0
.end method

.method public r(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/j0/a;->f:Lw3/b/a/g;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/g;->r(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public s(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/j0/a;->f:Lw3/b/a/g;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/g;->s(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final v(J)Lw3/b/a/j0/a$a;
    .locals 8

    const/16 v0, 0x20

    shr-long v1, p1, v0

    long-to-int v1, v1

    .line 1
    iget-object v2, p0, Lw3/b/a/j0/a;->g:[Lw3/b/a/j0/a$a;

    .line 2
    sget v3, Lw3/b/a/j0/a;->h:I

    and-int/2addr v3, v1

    .line 3
    aget-object v4, v2, v3

    if-eqz v4, :cond_0

    .line 4
    iget-wide v5, v4, Lw3/b/a/j0/a$a;->a:J

    shr-long/2addr v5, v0

    long-to-int v0, v5

    if-eq v0, v1, :cond_3

    :cond_0
    const-wide v0, -0x100000000L

    and-long/2addr p1, v0

    .line 5
    new-instance v4, Lw3/b/a/j0/a$a;

    iget-object v0, p0, Lw3/b/a/j0/a;->f:Lw3/b/a/g;

    invoke-direct {v4, v0, p1, p2}, Lw3/b/a/j0/a$a;-><init>(Lw3/b/a/g;J)V

    const-wide v0, 0xffffffffL

    or-long/2addr v0, p1

    move-object v5, v4

    .line 6
    :goto_0
    iget-object v6, p0, Lw3/b/a/j0/a;->f:Lw3/b/a/g;

    invoke-virtual {v6, p1, p2}, Lw3/b/a/g;->r(J)J

    move-result-wide v6

    cmp-long p1, v6, p1

    if-eqz p1, :cond_2

    cmp-long p1, v6, v0

    if-lez p1, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    new-instance p1, Lw3/b/a/j0/a$a;

    iget-object p2, p0, Lw3/b/a/j0/a;->f:Lw3/b/a/g;

    invoke-direct {p1, p2, v6, v7}, Lw3/b/a/j0/a$a;-><init>(Lw3/b/a/g;J)V

    iput-object p1, v5, Lw3/b/a/j0/a$a;->c:Lw3/b/a/j0/a$a;

    move-object v5, p1

    move-wide p1, v6

    goto :goto_0

    .line 8
    :cond_2
    :goto_1
    aput-object v4, v2, v3

    :cond_3
    return-object v4
.end method
