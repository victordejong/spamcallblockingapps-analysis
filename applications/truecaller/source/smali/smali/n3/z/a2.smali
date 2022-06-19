.class public final Ln3/z/a2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Z

.field public final d:I

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(IIZIIII)V
    .locals 3

    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_0

    move p2, p1

    :cond_0
    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move p3, v1

    :cond_1
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_2

    mul-int/lit8 p4, p1, 0x3

    :cond_2
    and-int/lit8 v0, p7, 0x10

    const v2, 0x7fffffff

    if-eqz v0, :cond_3

    move p5, v2

    :cond_3
    and-int/lit8 p7, p7, 0x20

    const/high16 v0, -0x80000000

    if-eqz p7, :cond_4

    move p6, v0

    .line 1
    :cond_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ln3/z/a2;->a:I

    iput p2, p0, Ln3/z/a2;->b:I

    iput-boolean p3, p0, Ln3/z/a2;->c:Z

    iput p4, p0, Ln3/z/a2;->d:I

    iput p5, p0, Ln3/z/a2;->e:I

    iput p6, p0, Ln3/z/a2;->f:I

    if-nez p3, :cond_6

    if-eqz p2, :cond_5

    goto :goto_0

    .line 2
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Placeholders and prefetch are the only ways to trigger loading of more data in PagingData, so either placeholders must be enabled, or prefetch distance must be > 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_0
    if-eq p5, v2, :cond_8

    mul-int/lit8 p3, p2, 0x2

    add-int/2addr p3, p1

    if-lt p5, p3, :cond_7

    goto :goto_1

    .line 3
    :cond_7
    new-instance p3, Ljava/lang/IllegalArgumentException;

    .line 4
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Maximum size must be at least pageSize + 2*prefetchDist"

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, ", pageSize="

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", prefetchDist="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", maxSize="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_8
    :goto_1
    if-eq p6, v0, :cond_a

    if-lez p6, :cond_9

    goto :goto_2

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_2
    if-eqz v1, :cond_b

    return-void

    .line 8
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "jumpThreshold must be positive to enable jumps or COUNT_UNDEFINED to disable jumping."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
