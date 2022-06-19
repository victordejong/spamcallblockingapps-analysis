.class public abstract Le/m/a/c/n1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/n1/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/n1/b$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/TrackGroup;

.field public final b:I

.field public final c:[I

.field public final d:[Lcom/google/android/exoplayer2/Format;

.field public e:I


# direct methods
.method public varargs constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Ln3/g0/y;->x(Z)V

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Le/m/a/c/n1/b;->a:Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 5
    array-length v0, p2

    iput v0, p0, Le/m/a/c/n1/b;->b:I

    .line 6
    new-array v0, v0, [Lcom/google/android/exoplayer2/Format;

    iput-object v0, p0, Le/m/a/c/n1/b;->d:[Lcom/google/android/exoplayer2/Format;

    move v0, v1

    .line 7
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 8
    iget-object v2, p0, Le/m/a/c/n1/b;->d:[Lcom/google/android/exoplayer2/Format;

    aget v3, p2, v0

    .line 9
    iget-object v4, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->b:[Lcom/google/android/exoplayer2/Format;

    aget-object v3, v4, v3

    .line 10
    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 11
    :cond_1
    iget-object p2, p0, Le/m/a/c/n1/b;->d:[Lcom/google/android/exoplayer2/Format;

    new-instance v0, Le/m/a/c/n1/b$b;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Le/m/a/c/n1/b$b;-><init>(Le/m/a/c/n1/b$a;)V

    invoke-static {p2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 12
    iget p2, p0, Le/m/a/c/n1/b;->b:I

    new-array p2, p2, [I

    iput-object p2, p0, Le/m/a/c/n1/b;->c:[I

    move p2, v1

    .line 13
    :goto_2
    iget v0, p0, Le/m/a/c/n1/b;->b:I

    if-ge p2, v0, :cond_4

    .line 14
    iget-object v0, p0, Le/m/a/c/n1/b;->c:[I

    iget-object v2, p0, Le/m/a/c/n1/b;->d:[Lcom/google/android/exoplayer2/Format;

    aget-object v2, v2, p2

    move v3, v1

    .line 15
    :goto_3
    iget-object v4, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->b:[Lcom/google/android/exoplayer2/Format;

    array-length v5, v4

    if-ge v3, v5, :cond_3

    .line 16
    aget-object v4, v4, v3

    if-ne v2, v4, :cond_2

    goto :goto_4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, -0x1

    .line 17
    :goto_4
    aput v3, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 18
    :cond_4
    new-array p1, v0, [J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public final d(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/n1/b;->c:[I

    aget p1, v0, p1

    return p1
.end method

.method public synthetic e()V
    .locals 0

    invoke-static {p0}, Le/m/a/c/n1/e;->a(Le/m/a/c/n1/f;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Le/m/a/c/n1/b;

    .line 3
    iget-object v2, p0, Le/m/a/c/n1/b;->a:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v3, p1, Le/m/a/c/n1/b;->a:Lcom/google/android/exoplayer2/source/TrackGroup;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Le/m/a/c/n1/b;->c:[I

    iget-object p1, p1, Le/m/a/c/n1/b;->c:[I

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final f()Lcom/google/android/exoplayer2/source/TrackGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/n1/b;->a:Lcom/google/android/exoplayer2/source/TrackGroup;

    return-object v0
.end method

.method public final g()Lcom/google/android/exoplayer2/Format;
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/c/n1/b;->d:[Lcom/google/android/exoplayer2/Format;

    invoke-interface {p0}, Le/m/a/c/n1/f;->c()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final h(I)Lcom/google/android/exoplayer2/Format;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/n1/b;->d:[Lcom/google/android/exoplayer2/Format;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Le/m/a/c/n1/b;->e:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/m/a/c/n1/b;->a:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/m/a/c/n1/b;->c:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Le/m/a/c/n1/b;->e:I

    .line 3
    :cond_0
    iget v0, p0, Le/m/a/c/n1/b;->e:I

    return v0
.end method

.method public i(F)V
    .locals 0

    return-void
.end method

.method public final length()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/n1/b;->c:[I

    array-length v0, v0

    return v0
.end method
