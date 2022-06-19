.class final enum Lu/h/d$b;
.super Lu/h/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/h/d;
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
    invoke-direct {p0, p1, p2, v0}, Lu/h/d;-><init>(Ljava/lang/String;ILu/h/d$a;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic encode(Ljava/lang/Object;)[B
    .locals 0

    .line 1
    check-cast p1, Lu/g;

    invoke-virtual {p0, p1}, Lu/h/d$b;->encode(Lu/g;)[B

    move-result-object p1

    return-object p1
.end method

.method public encode(Lu/g;)[B
    .locals 1

    .line 2
    new-instance v0, Lu/i/q;

    invoke-direct {v0}, Lu/i/q;-><init>()V

    invoke-virtual {v0, p1}, Lu/i/q;->f(Lu/g;)[B

    move-result-object p1

    return-object p1
.end method

.method public encodeList(Ljava/util/List;[BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lu/g;",
            ">;[BI)I"
        }
    .end annotation

    .line 2
    new-instance v0, Lu/i/q;

    invoke-direct {v0}, Lu/i/q;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lu/i/q;->i(Ljava/util/List;[BI)I

    move-result p1

    return p1
.end method

.method public encodeList(Ljava/util/List;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lu/g;",
            ">;)[B"
        }
    .end annotation

    .line 1
    new-instance v0, Lu/i/q;

    invoke-direct {v0}, Lu/i/q;-><init>()V

    invoke-virtual {v0, p1}, Lu/i/q;->j(Ljava/util/List;)[B

    move-result-object p1

    return-object p1
.end method

.method public encoding()Lu/h/b;
    .locals 1

    .line 1
    sget-object v0, Lu/h/b;->THRIFT:Lu/h/b;

    return-object v0
.end method

.method public bridge synthetic sizeInBytes(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lu/g;

    invoke-virtual {p0, p1}, Lu/h/d$b;->sizeInBytes(Lu/g;)I

    move-result p1

    return p1
.end method

.method public sizeInBytes(Lu/g;)I
    .locals 1

    .line 2
    new-instance v0, Lu/i/q;

    invoke-direct {v0}, Lu/i/q;-><init>()V

    invoke-virtual {v0, p1}, Lu/i/q;->d(Lu/g;)I

    move-result p1

    return p1
.end method
