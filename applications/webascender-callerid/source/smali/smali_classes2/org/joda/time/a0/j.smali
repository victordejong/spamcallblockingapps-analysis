.class public final Lorg/joda/time/a0/j;
.super Lorg/joda/time/h;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final f:Lorg/joda/time/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/joda/time/a0/j;

    invoke-direct {v0}, Lorg/joda/time/a0/j;-><init>()V

    sput-object v0, Lorg/joda/time/a0/j;->f:Lorg/joda/time/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/joda/time/h;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/a0/j;->f:Lorg/joda/time/h;

    return-object v0
.end method


# virtual methods
.method public c(JI)J
    .locals 2

    int-to-long v0, p3

    .line 1
    invoke-static {p1, p2, v0, v1}, Lorg/joda/time/a0/h;->c(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/joda/time/h;

    invoke-virtual {p0, p1}, Lorg/joda/time/a0/j;->t(Lorg/joda/time/h;)I

    move-result p1

    return p1
.end method

.method public d(JJ)J
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Lorg/joda/time/a0/h;->c(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Lorg/joda/time/a0/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/joda/time/a0/j;->m()J

    move-result-wide v2

    check-cast p1, Lorg/joda/time/a0/j;

    invoke-virtual {p1}, Lorg/joda/time/a0/j;->m()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public h(JJ)I
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Lorg/joda/time/a0/h;->g(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/joda/time/a0/h;->h(J)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/j;->m()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public j(JJ)J
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Lorg/joda/time/a0/h;->g(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public k()Lorg/joda/time/i;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/i;->h()Lorg/joda/time/i;

    move-result-object v0

    return-object v0
.end method

.method public final m()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public final n()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public t(Lorg/joda/time/h;)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Lorg/joda/time/h;->m()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Lorg/joda/time/a0/j;->m()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DurationField[millis]"

    return-object v0
.end method
