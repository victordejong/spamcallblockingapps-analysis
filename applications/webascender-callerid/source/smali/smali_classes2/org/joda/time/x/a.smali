.class public abstract Lorg/joda/time/x/a;
.super Lorg/joda/time/x/b;
.source "SourceFile"

# interfaces
.implements Lorg/joda/time/p;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/joda/time/x/b;-><init>()V

    return-void
.end method


# virtual methods
.method public n()I
    .locals 3

    .line 1
    invoke-interface {p0}, Lorg/joda/time/r;->f()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->J()Lorg/joda/time/c;

    move-result-object v0

    invoke-interface {p0}, Lorg/joda/time/r;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/c;->c(J)I

    move-result v0

    return v0
.end method

.method public p()I
    .locals 3

    .line 1
    invoke-interface {p0}, Lorg/joda/time/r;->f()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->O()Lorg/joda/time/c;

    move-result-object v0

    invoke-interface {p0}, Lorg/joda/time/r;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/c;->c(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/joda/convert/ToString;
    .end annotation

    .line 1
    invoke-super {p0}, Lorg/joda/time/x/b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
