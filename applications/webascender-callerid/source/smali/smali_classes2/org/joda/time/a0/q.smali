.class public final Lorg/joda/time/a0/q;
.super Lorg/joda/time/a0/f;
.source "SourceFile"


# instance fields
.field private final i:Lorg/joda/time/a;

.field private final j:I

.field private transient k:I


# direct methods
.method public constructor <init>(Lorg/joda/time/a;Lorg/joda/time/c;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/a0/q;-><init>(Lorg/joda/time/a;Lorg/joda/time/c;I)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/a;Lorg/joda/time/c;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Lorg/joda/time/a0/f;-><init>(Lorg/joda/time/c;)V

    .line 3
    iput-object p1, p0, Lorg/joda/time/a0/q;->i:Lorg/joda/time/a;

    .line 4
    invoke-super {p0}, Lorg/joda/time/a0/f;->s()I

    move-result p1

    if-ge p1, p3, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 5
    iput p1, p0, Lorg/joda/time/a0/q;->k:I

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    add-int/lit8 p1, p3, 0x1

    .line 6
    iput p1, p0, Lorg/joda/time/a0/q;->k:I

    goto :goto_0

    .line 7
    :cond_1
    iput p1, p0, Lorg/joda/time/a0/q;->k:I

    .line 8
    :goto_0
    iput p3, p0, Lorg/joda/time/a0/q;->j:I

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/f;->x()Lorg/joda/time/d;

    move-result-object v0

    iget-object v1, p0, Lorg/joda/time/a0/q;->i:Lorg/joda/time/a;

    invoke-virtual {v0, v1}, Lorg/joda/time/d;->F(Lorg/joda/time/a;)Lorg/joda/time/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public G(JI)J
    .locals 2

    .line 1
    iget v0, p0, Lorg/joda/time/a0/q;->k:I

    invoke-virtual {p0}, Lorg/joda/time/a0/f;->o()I

    move-result v1

    invoke-static {p0, p3, v0, v1}, Lorg/joda/time/a0/h;->i(Lorg/joda/time/c;III)V

    .line 2
    iget v0, p0, Lorg/joda/time/a0/q;->j:I

    if-gt p3, v0, :cond_1

    if-eq p3, v0, :cond_0

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lorg/joda/time/IllegalFieldValueException;

    invoke-static {}, Lorg/joda/time/d;->U()Lorg/joda/time/d;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p1, p2, p3, v0, v0}, Lorg/joda/time/IllegalFieldValueException;-><init>(Lorg/joda/time/d;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/joda/time/a0/f;->G(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public c(J)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lorg/joda/time/a0/f;->c(J)I

    move-result p1

    .line 2
    iget p2, p0, Lorg/joda/time/a0/q;->j:I

    if-gt p1, p2, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    return p1
.end method

.method public s()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/joda/time/a0/q;->k:I

    return v0
.end method
