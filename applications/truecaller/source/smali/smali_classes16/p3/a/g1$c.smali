.class public final Lp3/a/g1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/o0$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp3/a/o0$i<",
        "Lp3/a/g1;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lp3/a/g1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)[B
    .locals 0

    .line 1
    check-cast p1, Lp3/a/g1;

    .line 2
    iget-object p1, p1, Lp3/a/g1;->a:Lp3/a/g1$b;

    .line 3
    iget-object p1, p1, Lp3/a/g1$b;->b:[B

    return-object p1
.end method

.method public b([B)Ljava/lang/Object;
    .locals 6

    .line 1
    array-length v0, p1

    const/16 v1, 0x30

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    aget-byte v0, p1, v2

    if-ne v0, v1, :cond_0

    .line 2
    sget-object p1, Lp3/a/g1;->f:Lp3/a/g1;

    goto :goto_2

    .line 3
    :cond_0
    array-length v0, p1

    const/16 v4, 0x39

    if-eq v0, v3, :cond_3

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    aget-byte v0, p1, v2

    if-lt v0, v1, :cond_5

    aget-byte v0, p1, v2

    if-le v0, v4, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    aget-byte v0, p1, v2

    const/16 v5, 0xa

    invoke-static {v0, v1, v5, v2}, Le/d/c/a/a;->y1(IIII)I

    move-result v2

    move v0, v2

    move v2, v3

    goto :goto_0

    :cond_3
    move v0, v2

    .line 6
    :goto_0
    aget-byte v3, p1, v2

    if-lt v3, v1, :cond_5

    aget-byte v3, p1, v2

    if-le v3, v4, :cond_4

    goto :goto_1

    .line 7
    :cond_4
    aget-byte v2, p1, v2

    sub-int/2addr v2, v1

    add-int/2addr v2, v0

    .line 8
    sget-object v0, Lp3/a/g1;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_5

    .line 9
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lp3/a/g1;

    goto :goto_2

    .line 10
    :cond_5
    :goto_1
    sget-object v0, Lp3/a/g1;->h:Lp3/a/g1;

    const-string v1, "Unknown code "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object p1

    :goto_2
    return-object p1
.end method
