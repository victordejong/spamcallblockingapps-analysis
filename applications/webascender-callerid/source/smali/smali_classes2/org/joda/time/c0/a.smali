.class public Lorg/joda/time/c0/a;
.super Lorg/joda/time/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/c0/a$a;
    }
.end annotation


# static fields
.field private static final m:I


# instance fields
.field private final k:Lorg/joda/time/f;

.field private final transient l:[Lorg/joda/time/c0/a$a;


# direct methods
.method static constructor <clinit>()V
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
    sput v0, Lorg/joda/time/c0/a;->m:I

    return-void
.end method

.method private constructor <init>(Lorg/joda/time/f;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/joda/time/f;->n()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/time/f;-><init>(Ljava/lang/String;)V

    .line 2
    sget v0, Lorg/joda/time/c0/a;->m:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lorg/joda/time/c0/a$a;

    iput-object v0, p0, Lorg/joda/time/c0/a;->l:[Lorg/joda/time/c0/a$a;

    .line 3
    iput-object p1, p0, Lorg/joda/time/c0/a;->k:Lorg/joda/time/f;

    return-void
.end method

.method private E(J)Lorg/joda/time/c0/a$a;
    .locals 7

    const-wide v0, -0x100000000L

    and-long/2addr p1, v0

    .line 1
    new-instance v0, Lorg/joda/time/c0/a$a;

    iget-object v1, p0, Lorg/joda/time/c0/a;->k:Lorg/joda/time/f;

    invoke-direct {v0, v1, p1, p2}, Lorg/joda/time/c0/a$a;-><init>(Lorg/joda/time/f;J)V

    const-wide v1, 0xffffffffL

    or-long/2addr v1, p1

    move-object v3, v0

    .line 2
    :goto_0
    iget-object v4, p0, Lorg/joda/time/c0/a;->k:Lorg/joda/time/f;

    invoke-virtual {v4, p1, p2}, Lorg/joda/time/f;->z(J)J

    move-result-wide v4

    cmp-long v6, v4, p1

    if-eqz v6, :cond_1

    cmp-long p1, v4, v1

    if-lez p1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance p1, Lorg/joda/time/c0/a$a;

    iget-object p2, p0, Lorg/joda/time/c0/a;->k:Lorg/joda/time/f;

    invoke-direct {p1, p2, v4, v5}, Lorg/joda/time/c0/a$a;-><init>(Lorg/joda/time/f;J)V

    iput-object p1, v3, Lorg/joda/time/c0/a$a;->c:Lorg/joda/time/c0/a$a;

    move-object v3, p1

    move-wide p1, v4

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static F(Lorg/joda/time/f;)Lorg/joda/time/c0/a;
    .locals 1

    .line 1
    instance-of v0, p0, Lorg/joda/time/c0/a;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lorg/joda/time/c0/a;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lorg/joda/time/c0/a;

    invoke-direct {v0, p0}, Lorg/joda/time/c0/a;-><init>(Lorg/joda/time/f;)V

    return-object v0
.end method

.method private G(J)Lorg/joda/time/c0/a$a;
    .locals 7

    const/16 v0, 0x20

    shr-long v1, p1, v0

    long-to-int v2, v1

    .line 1
    iget-object v1, p0, Lorg/joda/time/c0/a;->l:[Lorg/joda/time/c0/a$a;

    .line 2
    sget v3, Lorg/joda/time/c0/a;->m:I

    and-int/2addr v3, v2

    .line 3
    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 4
    iget-wide v5, v4, Lorg/joda/time/c0/a$a;->a:J

    shr-long/2addr v5, v0

    long-to-int v0, v5

    if-eq v0, v2, :cond_1

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/joda/time/c0/a;->E(J)Lorg/joda/time/c0/a$a;

    move-result-object v4

    .line 6
    aput-object v4, v1, v3

    :cond_1
    return-object v4
.end method


# virtual methods
.method public B(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/c0/a;->k:Lorg/joda/time/f;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/f;->B(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lorg/joda/time/c0/a;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/joda/time/c0/a;->k:Lorg/joda/time/f;

    check-cast p1, Lorg/joda/time/c0/a;

    iget-object p1, p1, Lorg/joda/time/c0/a;->k:Lorg/joda/time/f;

    invoke-virtual {v0, p1}, Lorg/joda/time/f;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/c0/a;->k:Lorg/joda/time/f;

    invoke-virtual {v0}, Lorg/joda/time/f;->hashCode()I

    move-result v0

    return v0
.end method

.method public q(J)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/joda/time/c0/a;->G(J)Lorg/joda/time/c0/a$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c0/a$a;->a(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public s(J)I
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/joda/time/c0/a;->G(J)Lorg/joda/time/c0/a$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c0/a$a;->b(J)I

    move-result p1

    return p1
.end method

.method public w(J)I
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/joda/time/c0/a;->G(J)Lorg/joda/time/c0/a$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c0/a$a;->c(J)I

    move-result p1

    return p1
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/c0/a;->k:Lorg/joda/time/f;

    invoke-virtual {v0}, Lorg/joda/time/f;->x()Z

    move-result v0

    return v0
.end method

.method public z(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/c0/a;->k:Lorg/joda/time/f;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/f;->z(J)J

    move-result-wide p1

    return-wide p1
.end method
