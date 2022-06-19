.class public final Lcom/google/common/io/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a()Ljava/nio/CharBuffer;
    .locals 1

    const/16 v0, 0x800

    .line 1
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Readable;Lcom/google/common/io/h;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Readable;",
            "Lcom/google/common/io/h<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/google/common/io/i;

    invoke-direct {v0, p0}, Lcom/google/common/io/i;-><init>(Ljava/lang/Readable;)V

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/io/i;->b()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5
    invoke-interface {p1, p0}, Lcom/google/common/io/h;->b(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 6
    :cond_1
    invoke-interface {p1}, Lcom/google/common/io/h;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
