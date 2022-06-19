.class public abstract Lorg/joda/time/a0/c;
.super Lorg/joda/time/h;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final f:Lorg/joda/time/i;


# direct methods
.method protected constructor <init>(Lorg/joda/time/i;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/joda/time/h;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lorg/joda/time/a0/c;->f:Lorg/joda/time/i;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The type must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/joda/time/h;

    invoke-virtual {p0, p1}, Lorg/joda/time/a0/c;->t(Lorg/joda/time/h;)I

    move-result p1

    return p1
.end method

.method public h(JJ)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/joda/time/h;->j(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/joda/time/a0/h;->h(J)I

    move-result p1

    return p1
.end method

.method public final k()Lorg/joda/time/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/c;->f:Lorg/joda/time/i;

    return-object v0
.end method

.method public final p()Z
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
    invoke-virtual {p0}, Lorg/joda/time/h;->m()J

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
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DurationField["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/joda/time/a0/c;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/c;->f:Lorg/joda/time/i;

    invoke-virtual {v0}, Lorg/joda/time/i;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
