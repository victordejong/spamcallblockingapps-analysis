.class final enum Lu/h/c$b;
.super Lu/h/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/h/c;
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
    invoke-direct {p0, p1, p2, v0}, Lu/h/c;-><init>(Ljava/lang/String;ILu/h/c$a;)V

    return-void
.end method


# virtual methods
.method public decode([BLjava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Collection<",
            "Lu/g;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lu/i/h;->A([B)Lu/i/h;

    move-result-object p1

    invoke-static {p1, p2}, Lu/i/j;->c(Lu/i/h;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public decodeList(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "Lu/g;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-static {p0, p1}, Lu/h/c;->doDecodeList(Lu/h/c;Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public decodeList([B)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lu/g;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-static {p0, p1}, Lu/h/c;->doDecodeList(Lu/h/c;[B)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public decodeList(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Collection<",
            "Lu/g;",
            ">;)Z"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lu/i/h;->D(Ljava/nio/ByteBuffer;)Lu/i/h;

    move-result-object p1

    invoke-static {p1, p2}, Lu/i/j;->d(Lu/i/h;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public decodeList([BLjava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Collection<",
            "Lu/g;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lu/i/h;->A([B)Lu/i/h;

    move-result-object p1

    invoke-static {p1, p2}, Lu/i/j;->d(Lu/i/h;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic decodeOne([B)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/h/c$b;->decodeOne([B)Lu/g;

    move-result-object p1

    return-object p1
.end method

.method public decodeOne(Ljava/nio/ByteBuffer;)Lu/g;
    .locals 0

    .line 3
    invoke-static {p1}, Lu/i/h;->D(Ljava/nio/ByteBuffer;)Lu/i/h;

    move-result-object p1

    invoke-static {p1}, Lu/i/j;->f(Lu/i/h;)Lu/g;

    move-result-object p1

    return-object p1
.end method

.method public decodeOne([B)Lu/g;
    .locals 0

    .line 2
    invoke-static {p1}, Lu/i/h;->A([B)Lu/i/h;

    move-result-object p1

    invoke-static {p1}, Lu/i/j;->f(Lu/i/h;)Lu/g;

    move-result-object p1

    return-object p1
.end method

.method public encoding()Lu/h/b;
    .locals 1

    .line 1
    sget-object v0, Lu/h/b;->THRIFT:Lu/h/b;

    return-object v0
.end method
