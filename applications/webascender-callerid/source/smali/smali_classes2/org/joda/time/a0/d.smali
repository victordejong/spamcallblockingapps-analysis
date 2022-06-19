.class public abstract Lorg/joda/time/a0/d;
.super Lorg/joda/time/a0/b;
.source "SourceFile"


# instance fields
.field private final b:Lorg/joda/time/c;


# direct methods
.method protected constructor <init>(Lorg/joda/time/c;Lorg/joda/time/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lorg/joda/time/a0/b;-><init>(Lorg/joda/time/d;)V

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lorg/joda/time/c;->z()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iput-object p1, p0, Lorg/joda/time/a0/d;->b:Lorg/joda/time/c;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The field must be supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The field must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public G(JI)J
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/d;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->G(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public final M()Lorg/joda/time/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/d;->b:Lorg/joda/time/c;

    return-object v0
.end method

.method public c(J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/d;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->c(J)I

    move-result p1

    return p1
.end method

.method public l()Lorg/joda/time/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/d;->b:Lorg/joda/time/c;

    invoke-virtual {v0}, Lorg/joda/time/c;->l()Lorg/joda/time/h;

    move-result-object v0

    return-object v0
.end method

.method public o()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/d;->b:Lorg/joda/time/c;

    invoke-virtual {v0}, Lorg/joda/time/c;->o()I

    move-result v0

    return v0
.end method

.method public s()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/d;->b:Lorg/joda/time/c;

    invoke-virtual {v0}, Lorg/joda/time/c;->s()I

    move-result v0

    return v0
.end method

.method public w()Lorg/joda/time/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/d;->b:Lorg/joda/time/c;

    invoke-virtual {v0}, Lorg/joda/time/c;->w()Lorg/joda/time/h;

    move-result-object v0

    return-object v0
.end method
