.class final enum Lu/h/c$a;
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

    invoke-virtual {p0, p1}, Lu/h/c$a;->decodeOne(Lu/i/h;)Lu/g;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

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
    .locals 1
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
    new-instance v0, Lu/i/m;

    invoke-direct {v0}, Lu/i/m;-><init>()V

    invoke-static {p1}, Lu/i/h;->D(Ljava/nio/ByteBuffer;)Lu/i/h;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lu/i/m;->e(Lu/i/h;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public decodeList([BLjava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Collection<",
            "Lu/g;",
            ">;)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Lu/i/m;

    invoke-direct {v0}, Lu/i/m;-><init>()V

    invoke-static {p1}, Lu/i/h;->A([B)Lu/i/h;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lu/i/m;->e(Lu/i/h;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic decodeOne([B)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/h/c$a;->decodeOne([B)Lu/g;

    move-result-object p1

    return-object p1
.end method

.method public decodeOne(Ljava/nio/ByteBuffer;)Lu/g;
    .locals 0

    .line 3
    invoke-static {p1}, Lu/i/h;->D(Ljava/nio/ByteBuffer;)Lu/i/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu/h/c$a;->decodeOne(Lu/i/h;)Lu/g;

    move-result-object p1

    return-object p1
.end method

.method decodeOne(Lu/i/h;)Lu/g;
    .locals 2

    .line 4
    new-instance v0, Lu/i/m;

    invoke-direct {v0}, Lu/i/m;-><init>()V

    invoke-static {v0, p1}, Lu/i/b;->d(Lu/i/b$b;Lu/i/h;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu/j/c;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-static {}, Lu/j/d;->c()Lu/j/d;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lu/j/d;->b(Lu/j/c;Ljava/util/Collection;)V

    const/4 p1, 0x0

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu/g;

    return-object p1
.end method

.method public decodeOne([B)Lu/g;
    .locals 0

    .line 2
    invoke-static {p1}, Lu/i/h;->A([B)Lu/i/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu/h/c$a;->decodeOne(Lu/i/h;)Lu/g;

    move-result-object p1

    return-object p1
.end method

.method public encoding()Lu/h/b;
    .locals 1

    .line 1
    sget-object v0, Lu/h/b;->JSON:Lu/h/b;

    return-object v0
.end method
