.class final Lorg/joda/time/z/b;
.super Lorg/joda/time/z/a;
.source "SourceFile"

# interfaces
.implements Lorg/joda/time/z/c;
.implements Lorg/joda/time/z/i;


# static fields
.field static final a:Lorg/joda/time/z/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/joda/time/z/b;

    invoke-direct {v0}, Lorg/joda/time/z/b;-><init>()V

    sput-object v0, Lorg/joda/time/z/b;->a:Lorg/joda/time/z/b;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/joda/time/z/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lorg/joda/time/a;)Lorg/joda/time/a;
    .locals 0

    if-eqz p2, :cond_0

    return-object p2

    .line 1
    :cond_0
    check-cast p1, Ljava/util/Calendar;

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p2

    invoke-static {p2}, Lorg/joda/time/f;->h(Ljava/util/TimeZone;)Lorg/joda/time/f;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    invoke-static {}, Lorg/joda/time/f;->k()Lorg/joda/time/f;

    move-result-object p2

    .line 4
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/z/b;->f(Ljava/lang/Object;Lorg/joda/time/f;)Lorg/joda/time/a;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/Class;
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

.method public d(Ljava/lang/Object;Lorg/joda/time/a;)J
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

.method public f(Ljava/lang/Object;Lorg/joda/time/f;)Lorg/joda/time/a;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".BuddhistCalendar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p2}, Lorg/joda/time/y/l;->W(Lorg/joda/time/f;)Lorg/joda/time/y/l;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/util/GregorianCalendar;

    if-eqz v0, :cond_3

    .line 4
    check-cast p1, Ljava/util/GregorianCalendar;

    .line 5
    invoke-virtual {p1}, Ljava/util/GregorianCalendar;->getGregorianChange()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 6
    invoke-static {p2}, Lorg/joda/time/y/t;->P0(Lorg/joda/time/f;)Lorg/joda/time/y/t;

    move-result-object p1

    return-object p1

    :cond_1
    const-wide v2, 0x7fffffffffffffffL

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    .line 7
    invoke-static {p2}, Lorg/joda/time/y/w;->Q0(Lorg/joda/time/f;)Lorg/joda/time/y/w;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x4

    .line 8
    invoke-static {p2, v0, v1, p1}, Lorg/joda/time/y/n;->a0(Lorg/joda/time/f;JI)Lorg/joda/time/y/n;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    invoke-static {p2}, Lorg/joda/time/y/u;->X(Lorg/joda/time/f;)Lorg/joda/time/y/u;

    move-result-object p1

    return-object p1
.end method
