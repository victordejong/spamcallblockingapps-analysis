.class public Lorg/joda/time/a0/l;
.super Lorg/joda/time/a0/m;
.source "SourceFile"


# instance fields
.field private final d:I

.field private final e:Lorg/joda/time/h;


# direct methods
.method public constructor <init>(Lorg/joda/time/d;Lorg/joda/time/h;Lorg/joda/time/h;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/joda/time/a0/m;-><init>(Lorg/joda/time/d;Lorg/joda/time/h;)V

    .line 2
    invoke-virtual {p3}, Lorg/joda/time/h;->n()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p3}, Lorg/joda/time/h;->m()J

    move-result-wide p1

    .line 4
    invoke-virtual {p0}, Lorg/joda/time/a0/m;->N()J

    move-result-wide v0

    div-long/2addr p1, v0

    long-to-int p2, p1

    iput p2, p0, Lorg/joda/time/a0/l;->d:I

    const/4 p1, 0x2

    if-lt p2, p1, :cond_0

    .line 5
    iput-object p3, p0, Lorg/joda/time/a0/l;->e:Lorg/joda/time/h;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The effective range must be at least 2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Range duration field must be precise"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public G(JI)J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/m;->s()I

    move-result v0

    invoke-virtual {p0}, Lorg/joda/time/a0/l;->o()I

    move-result v1

    invoke-static {p0, p3, v0, v1}, Lorg/joda/time/a0/h;->i(Lorg/joda/time/c;III)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/a0/l;->c(J)I

    move-result v0

    sub-int/2addr p3, v0

    int-to-long v0, p3

    iget-wide v2, p0, Lorg/joda/time/a0/m;->b:J

    mul-long v0, v0, v2

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public c(J)I
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/m;->N()J

    move-result-wide v0

    div-long/2addr p1, v0

    iget v0, p0, Lorg/joda/time/a0/l;->d:I

    int-to-long v0, v0

    rem-long/2addr p1, v0

    long-to-int p2, p1

    return p2

    .line 2
    :cond_0
    iget v0, p0, Lorg/joda/time/a0/l;->d:I

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x1

    add-long/2addr p1, v1

    invoke-virtual {p0}, Lorg/joda/time/a0/m;->N()J

    move-result-wide v1

    div-long/2addr p1, v1

    iget v1, p0, Lorg/joda/time/a0/l;->d:I

    int-to-long v1, v1

    rem-long/2addr p1, v1

    long-to-int p2, p1

    add-int/2addr v0, p2

    return v0
.end method

.method public o()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/joda/time/a0/l;->d:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public w()Lorg/joda/time/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/l;->e:Lorg/joda/time/h;

    return-object v0
.end method
