.class public final Lcom/facebook/appevents/n0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/n0/f$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0006J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u0003R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000c\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/facebook/appevents/ml/MTensor;",
        "",
        "shape",
        "",
        "([I)V",
        "capacity",
        "",
        "<set-?>",
        "",
        "data",
        "getData",
        "()[F",
        "shapeSize",
        "getShapeSize",
        "()I",
        "getShape",
        "i",
        "reshape",
        "",
        "Companion",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final d:Lcom/facebook/appevents/n0/f$a;


# instance fields
.field public a:[I

.field public b:I

.field public c:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/appevents/n0/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/appevents/n0/f$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/facebook/appevents/n0/f;->d:Lcom/facebook/appevents/n0/f$a;

    return-void
.end method

.method public constructor <init>([I)V
    .locals 4

    const-string v0, "shape"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/n0/f;->a:[I

    .line 2
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    .line 3
    aget v0, p1, v2

    .line 4
    invoke-static {p1}, Le/q/f/a/d/a;->U0([I)I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 5
    :goto_1
    aget v3, p1, v1

    mul-int/2addr v0, v3

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6
    :cond_1
    iput v0, p0, Lcom/facebook/appevents/n0/f;->b:I

    .line 7
    new-array p1, v0, [F

    iput-object p1, p0, Lcom/facebook/appevents/n0/f;->c:[F

    return-void

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Empty array can\'t be reduced."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a([I)V
    .locals 5

    const-string v0, "shape"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/facebook/appevents/n0/f;->a:[I

    .line 2
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    .line 3
    aget v0, p1, v2

    .line 4
    invoke-static {p1}, Le/q/f/a/d/a;->U0([I)I

    move-result v3

    if-gt v1, v3, :cond_1

    .line 5
    :goto_1
    aget v4, p1, v1

    mul-int/2addr v0, v4

    if-eq v1, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6
    :cond_1
    new-array p1, v0, [F

    .line 7
    iget-object v1, p0, Lcom/facebook/appevents/n0/f;->c:[F

    iget v3, p0, Lcom/facebook/appevents/n0/f;->b:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v2, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iput-object p1, p0, Lcom/facebook/appevents/n0/f;->c:[F

    .line 9
    iput v0, p0, Lcom/facebook/appevents/n0/f;->b:I

    return-void

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Empty array can\'t be reduced."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
