.class public final Lw3/b/a/g0/b;
.super Lw3/b/a/g0/a;
.source "SourceFile"

# interfaces
.implements Lw3/b/a/g0/g;
.implements Lw3/b/a/g0/j;


# static fields
.field public static final a:Lw3/b/a/g0/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lw3/b/a/g0/b;

    invoke-direct {v0}, Lw3/b/a/g0/b;-><init>()V

    sput-object v0, Lw3/b/a/g0/b;->a:Lw3/b/a/g0/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lw3/b/a/g0/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lw3/b/a/a;)Lw3/b/a/a;
    .locals 4

    if-eqz p2, :cond_0

    return-object p2

    .line 1
    :cond_0
    check-cast p1, Ljava/util/Calendar;

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p2

    invoke-static {p2}, Lw3/b/a/g;->g(Ljava/util/TimeZone;)Lw3/b/a/g;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    invoke-static {}, Lw3/b/a/g;->h()Lw3/b/a/g;

    move-result-object p2

    .line 4
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".BuddhistCalendar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p2}, Lw3/b/a/f0/k;->Y(Lw3/b/a/g;)Lw3/b/a/f0/k;

    move-result-object p1

    goto :goto_2

    .line 6
    :cond_1
    instance-of v0, p1, Ljava/util/GregorianCalendar;

    if-eqz v0, :cond_5

    .line 7
    check-cast p1, Ljava/util/GregorianCalendar;

    .line 8
    invoke-virtual {p1}, Ljava/util/GregorianCalendar;->getGregorianChange()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    .line 9
    invoke-static {p2}, Lw3/b/a/f0/s;->E0(Lw3/b/a/g;)Lw3/b/a/f0/s;

    move-result-object p1

    goto :goto_2

    :cond_2
    const-wide v2, 0x7fffffffffffffffL

    cmp-long p1, v0, v2

    if-nez p1, :cond_3

    .line 10
    invoke-static {p2}, Lw3/b/a/f0/v;->E0(Lw3/b/a/g;)Lw3/b/a/f0/v;

    move-result-object p1

    goto :goto_2

    :cond_3
    const/4 p1, 0x4

    const-wide v2, -0xb1d069b5400L

    cmp-long v2, v0, v2

    if-nez v2, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    .line 11
    :cond_4
    new-instance v2, Lw3/b/a/n;

    invoke-direct {v2, v0, v1}, Lw3/b/a/n;-><init>(J)V

    move-object v0, v2

    .line 12
    :goto_1
    invoke-static {p2, v0, p1}, Lw3/b/a/f0/m;->a0(Lw3/b/a/g;Lw3/b/a/z;I)Lw3/b/a/f0/m;

    move-result-object p1

    goto :goto_2

    .line 13
    :cond_5
    invoke-static {p2}, Lw3/b/a/f0/t;->Z(Lw3/b/a/g;)Lw3/b/a/f0/t;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/util/Calendar;

    return-object v0
.end method

.method public f(Ljava/lang/Object;Lw3/b/a/a;)J
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Calendar;

    .line 2
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    return-wide p1
.end method
