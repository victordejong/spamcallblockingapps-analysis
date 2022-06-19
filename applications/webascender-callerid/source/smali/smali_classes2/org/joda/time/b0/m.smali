.class Lorg/joda/time/b0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/joda/time/b0/d;
.implements Lorg/joda/time/b0/l;


# instance fields
.field private final f:Lorg/joda/time/b0/l;


# direct methods
.method private constructor <init>(Lorg/joda/time/b0/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/joda/time/b0/m;->f:Lorg/joda/time/b0/l;

    return-void
.end method

.method static b(Lorg/joda/time/b0/l;)Lorg/joda/time/b0/d;
    .locals 1

    .line 1
    instance-of v0, p0, Lorg/joda/time/b0/f;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lorg/joda/time/b0/f;

    invoke-virtual {p0}, Lorg/joda/time/b0/f;->a()Lorg/joda/time/b0/d;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Lorg/joda/time/b0/d;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Lorg/joda/time/b0/d;

    return-object p0

    :cond_1
    if-nez p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_2
    new-instance v0, Lorg/joda/time/b0/m;

    invoke-direct {v0, p0}, Lorg/joda/time/b0/m;-><init>(Lorg/joda/time/b0/l;)V

    return-object v0
.end method


# virtual methods
.method public a(Lorg/joda/time/b0/e;Ljava/lang/String;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/b0/m;->f:Lorg/joda/time/b0/l;

    invoke-interface {v0, p1, p2, p3}, Lorg/joda/time/b0/l;->parseInto(Lorg/joda/time/b0/e;Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lorg/joda/time/b0/m;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lorg/joda/time/b0/m;

    .line 3
    iget-object v0, p0, Lorg/joda/time/b0/m;->f:Lorg/joda/time/b0/l;

    iget-object p1, p1, Lorg/joda/time/b0/m;->f:Lorg/joda/time/b0/l;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public estimateParsedLength()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/b0/m;->f:Lorg/joda/time/b0/l;

    invoke-interface {v0}, Lorg/joda/time/b0/l;->estimateParsedLength()I

    move-result v0

    return v0
.end method

.method public parseInto(Lorg/joda/time/b0/e;Ljava/lang/CharSequence;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/b0/m;->f:Lorg/joda/time/b0/l;

    invoke-interface {v0, p1, p2, p3}, Lorg/joda/time/b0/l;->parseInto(Lorg/joda/time/b0/e;Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method
