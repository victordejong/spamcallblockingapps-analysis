.class public final Lp3/a/o1/o/m/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public final d:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Lp3/a/o1/o/m/h;->d:[I

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 2

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 1
    iget v1, p0, Lp3/a/o1/o/m/h;->a:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(III)Lp3/a/o1/o/m/h;
    .locals 4

    .line 1
    iget-object v0, p0, Lp3/a/o1/o/m/h;->d:[I

    array-length v1, v0

    if-lt p1, v1, :cond_0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    shl-int/2addr v1, p1

    .line 2
    iget v2, p0, Lp3/a/o1/o/m/h;->a:I

    or-int/2addr v2, v1

    iput v2, p0, Lp3/a/o1/o/m/h;->a:I

    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_1

    .line 3
    iget v2, p0, Lp3/a/o1/o/m/h;->b:I

    or-int/2addr v2, v1

    iput v2, p0, Lp3/a/o1/o/m/h;->b:I

    goto :goto_0

    .line 4
    :cond_1
    iget v2, p0, Lp3/a/o1/o/m/h;->b:I

    not-int v3, v1

    and-int/2addr v2, v3

    iput v2, p0, Lp3/a/o1/o/m/h;->b:I

    :goto_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_2

    .line 5
    iget p2, p0, Lp3/a/o1/o/m/h;->c:I

    or-int/2addr p2, v1

    iput p2, p0, Lp3/a/o1/o/m/h;->c:I

    goto :goto_1

    .line 6
    :cond_2
    iget p2, p0, Lp3/a/o1/o/m/h;->c:I

    not-int v1, v1

    and-int/2addr p2, v1

    iput p2, p0, Lp3/a/o1/o/m/h;->c:I

    .line 7
    :goto_1
    aput p3, v0, p1

    return-object p0
.end method
