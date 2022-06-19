.class final enum Lu/h/b$a;
.super Lu/h/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/h/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lu/h/b;-><init>(Ljava/lang/String;ILu/h/b$a;)V

    return-void
.end method


# virtual methods
.method public listSizeInBytes(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public listSizeInBytes(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    add-int/lit8 v3, v2, 0x1

    .line 2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    add-int/2addr v1, v2

    if-ge v3, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    return v1
.end method
