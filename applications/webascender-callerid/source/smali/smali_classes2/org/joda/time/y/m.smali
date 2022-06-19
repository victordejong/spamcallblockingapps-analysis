.class Lorg/joda/time/y/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lorg/joda/time/f;

.field private final b:Lorg/joda/time/k;

.field private final c:I


# direct methods
.method constructor <init>(Lorg/joda/time/f;Lorg/joda/time/k;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/joda/time/y/m;->a:Lorg/joda/time/f;

    .line 3
    iput-object p2, p0, Lorg/joda/time/y/m;->b:Lorg/joda/time/k;

    .line 4
    iput p3, p0, Lorg/joda/time/y/m;->c:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    instance-of v2, p1, Lorg/joda/time/y/m;

    if-nez v2, :cond_2

    return v1

    .line 2
    :cond_2
    check-cast p1, Lorg/joda/time/y/m;

    .line 3
    iget-object v2, p0, Lorg/joda/time/y/m;->b:Lorg/joda/time/k;

    if-nez v2, :cond_3

    .line 4
    iget-object v2, p1, Lorg/joda/time/y/m;->b:Lorg/joda/time/k;

    if-eqz v2, :cond_4

    return v1

    .line 5
    :cond_3
    iget-object v3, p1, Lorg/joda/time/y/m;->b:Lorg/joda/time/k;

    invoke-virtual {v2, v3}, Lorg/joda/time/x/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 6
    :cond_4
    iget v2, p0, Lorg/joda/time/y/m;->c:I

    iget v3, p1, Lorg/joda/time/y/m;->c:I

    if-eq v2, v3, :cond_5

    return v1

    .line 7
    :cond_5
    iget-object v2, p0, Lorg/joda/time/y/m;->a:Lorg/joda/time/f;

    if-nez v2, :cond_6

    .line 8
    iget-object p1, p1, Lorg/joda/time/y/m;->a:Lorg/joda/time/f;

    if-eqz p1, :cond_7

    return v1

    .line 9
    :cond_6
    iget-object p1, p1, Lorg/joda/time/y/m;->a:Lorg/joda/time/f;

    invoke-virtual {v2, p1}, Lorg/joda/time/f;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/m;->b:Lorg/joda/time/k;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/joda/time/x/b;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v3, p0, Lorg/joda/time/y/m;->c:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v2, p0, Lorg/joda/time/y/m;->a:Lorg/joda/time/f;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lorg/joda/time/f;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method
