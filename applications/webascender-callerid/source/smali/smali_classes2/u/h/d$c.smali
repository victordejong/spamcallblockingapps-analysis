.class final enum Lu/h/d$c;
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


# instance fields
.field final writer:Lu/i/s;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lu/h/d;-><init>(Ljava/lang/String;ILu/h/d$a;)V

    .line 2
    new-instance p1, Lu/i/s;

    invoke-direct {p1}, Lu/i/s;-><init>()V

    iput-object p1, p0, Lu/h/d$c;->writer:Lu/i/s;

    return-void
.end method


# virtual methods
.method public bridge synthetic encode(Ljava/lang/Object;)[B
    .locals 0

    .line 1
    check-cast p1, Lu/g;

    invoke-virtual {p0, p1}, Lu/h/d$c;->encode(Lu/g;)[B

    move-result-object p1

    return-object p1
.end method

.method public encode(Lu/g;)[B
    .locals 1

    .line 2
    iget-object v0, p0, Lu/h/d$c;->writer:Lu/i/s;

    invoke-static {v0, p1}, Lu/i/b;->f(Lu/i/t$a;Ljava/lang/Object;)[B

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
    iget-object v0, p0, Lu/h/d$c;->writer:Lu/i/s;

    invoke-static {v0, p1, p2, p3}, Lu/i/b;->g(Lu/i/t$a;Ljava/util/List;[BI)I

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
    iget-object v0, p0, Lu/h/d$c;->writer:Lu/i/s;

    invoke-static {v0, p1}, Lu/i/b;->i(Lu/i/t$a;Ljava/util/List;)[B

    move-result-object p1

    return-object p1
.end method

.method public encoding()Lu/h/b;
    .locals 1

    .line 1
    sget-object v0, Lu/h/b;->JSON:Lu/h/b;

    return-object v0
.end method

.method public bridge synthetic sizeInBytes(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lu/g;

    invoke-virtual {p0, p1}, Lu/h/d$c;->sizeInBytes(Lu/g;)I

    move-result p1

    return p1
.end method

.method public sizeInBytes(Lu/g;)I
    .locals 1

    .line 2
    iget-object v0, p0, Lu/h/d$c;->writer:Lu/i/s;

    invoke-virtual {v0, p1}, Lu/i/s;->e(Lu/g;)I

    move-result p1

    return p1
.end method
