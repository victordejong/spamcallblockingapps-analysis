.class public final Lw3/b/a/h0/i;
.super Lw3/b/a/j;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lw3/b/a/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lw3/b/a/h0/i;

    invoke-direct {v0}, Lw3/b/a/h0/i;-><init>()V

    sput-object v0, Lw3/b/a/h0/i;->a:Lw3/b/a/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lw3/b/a/j;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/h0/i;->a:Lw3/b/a/j;

    return-object v0
.end method


# virtual methods
.method public a(JI)J
    .locals 2

    int-to-long v0, p3

    .line 1
    invoke-static {p1, p2, v0, v1}, Ls1/a/a/a/v0/f/d;->d3(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public c(JJ)J
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Ls1/a/a/a/v0/f/d;->d3(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lw3/b/a/j;

    .line 2
    invoke-virtual {p1}, Lw3/b/a/j;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x1

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
    invoke-static {p1, p2, p3, p4}, Ls1/a/a/a/v0/f/d;->f3(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Ls1/a/a/a/v0/f/d;->g3(J)I

    move-result p1

    return p1
.end method

.method public e(JJ)J
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Ls1/a/a/a/v0/f/d;->f3(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lw3/b/a/h0/i;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lw3/b/a/h0/i;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f()Lw3/b/a/k;
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/k;->m:Lw3/b/a/k;

    return-object v0
.end method

.method public final g()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 2

    const-wide/16 v0, 0x1

    long-to-int v0, v0

    return v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DurationField[millis]"

    return-object v0
.end method
