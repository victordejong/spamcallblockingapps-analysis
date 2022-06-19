.class Lorg/joda/time/b0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/joda/time/b0/l;


# instance fields
.field private final f:Lorg/joda/time/b0/d;


# direct methods
.method private constructor <init>(Lorg/joda/time/b0/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/joda/time/b0/f;->f:Lorg/joda/time/b0/d;

    return-void
.end method

.method static b(Lorg/joda/time/b0/d;)Lorg/joda/time/b0/l;
    .locals 1

    .line 1
    instance-of v0, p0, Lorg/joda/time/b0/m;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lorg/joda/time/b0/l;

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_1
    new-instance v0, Lorg/joda/time/b0/f;

    invoke-direct {v0, p0}, Lorg/joda/time/b0/f;-><init>(Lorg/joda/time/b0/d;)V

    return-object v0
.end method


# virtual methods
.method a()Lorg/joda/time/b0/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/b0/f;->f:Lorg/joda/time/b0/d;

    return-object v0
.end method

.method public estimateParsedLength()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/b0/f;->f:Lorg/joda/time/b0/d;

    invoke-interface {v0}, Lorg/joda/time/b0/d;->estimateParsedLength()I

    move-result v0

    return v0
.end method

.method public parseInto(Lorg/joda/time/b0/e;Ljava/lang/CharSequence;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/b0/f;->f:Lorg/joda/time/b0/d;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2, p3}, Lorg/joda/time/b0/d;->a(Lorg/joda/time/b0/e;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method
