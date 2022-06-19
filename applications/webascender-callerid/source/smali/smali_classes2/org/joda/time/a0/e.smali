.class public Lorg/joda/time/a0/e;
.super Lorg/joda/time/a0/c;
.source "SourceFile"


# instance fields
.field private final g:Lorg/joda/time/h;


# direct methods
.method public constructor <init>(Lorg/joda/time/h;Lorg/joda/time/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lorg/joda/time/a0/c;-><init>(Lorg/joda/time/i;)V

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lorg/joda/time/h;->p()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iput-object p1, p0, Lorg/joda/time/a0/e;->g:Lorg/joda/time/h;

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
.method public m()J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/e;->g:Lorg/joda/time/h;

    invoke-virtual {v0}, Lorg/joda/time/h;->m()J

    move-result-wide v0

    return-wide v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/e;->g:Lorg/joda/time/h;

    invoke-virtual {v0}, Lorg/joda/time/h;->n()Z

    move-result v0

    return v0
.end method

.method public final v()Lorg/joda/time/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/e;->g:Lorg/joda/time/h;

    return-object v0
.end method
