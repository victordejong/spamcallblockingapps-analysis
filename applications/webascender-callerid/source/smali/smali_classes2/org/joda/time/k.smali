.class public final Lorg/joda/time/k;
.super Lorg/joda/time/x/b;
.source "SourceFile"

# interfaces
.implements Lorg/joda/time/r;
.implements Ljava/io/Serializable;


# instance fields
.field private final f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/joda/time/x/b;-><init>()V

    .line 2
    invoke-static {}, Lorg/joda/time/e;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/k;->f:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/joda/time/x/b;-><init>()V

    .line 4
    iput-wide p1, p0, Lorg/joda/time/k;->f:J

    return-void
.end method

.method public static n(Ljava/lang/String;)Lorg/joda/time/k;
    .locals 1
    .annotation runtime Lorg/joda/convert/FromString;
    .end annotation

    .line 1
    invoke-static {}, Lorg/joda/time/b0/j;->c()Lorg/joda/time/b0/b;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/joda/time/k;->p(Ljava/lang/String;Lorg/joda/time/b0/b;)Lorg/joda/time/k;

    move-result-object p0

    return-object p0
.end method

.method public static p(Ljava/lang/String;Lorg/joda/time/b0/b;)Lorg/joda/time/k;
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lorg/joda/time/b0/b;->e(Ljava/lang/String;)Lorg/joda/time/b;

    move-result-object p0

    invoke-virtual {p0}, Lorg/joda/time/x/b;->C()Lorg/joda/time/k;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public C()Lorg/joda/time/k;
    .locals 0

    return-object p0
.end method

.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/joda/time/k;->f:J

    return-wide v0
.end method

.method public f()Lorg/joda/time/a;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/y/u;->Y()Lorg/joda/time/y/u;

    move-result-object v0

    return-object v0
.end method
