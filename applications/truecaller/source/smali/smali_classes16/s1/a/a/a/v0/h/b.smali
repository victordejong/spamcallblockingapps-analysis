.class public abstract Ls1/a/a/a/v0/h/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/h/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Ls1/a/a/a/v0/h/p;",
        ">",
        "Ljava/lang/Object;",
        "Ls1/a/a/a/v0/h/r<",
        "TMessageType;>;"
    }
.end annotation


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/h/f;->b:Ls1/a/a/a/v0/h/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ls1/a/a/a/v0/h/p;)Ls1/a/a/a/v0/h/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ls1/a/a/a/v0/h/j;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ls1/a/a/a/v0/h/q;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    instance-of v0, p1, Ls1/a/a/a/v0/h/a;

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Ls1/a/a/a/v0/h/a;

    .line 4
    new-instance v0, Ls1/a/a/a/v0/h/v;

    invoke-direct {v0}, Ls1/a/a/a/v0/h/v;-><init>()V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ls1/a/a/a/v0/h/v;

    invoke-direct {v0}, Ls1/a/a/a/v0/h/v;-><init>()V

    .line 6
    :goto_0
    new-instance v1, Ls1/a/a/a/v0/h/j;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ls1/a/a/a/v0/h/j;-><init>(Ljava/lang/String;)V

    .line 7
    iput-object p1, v1, Ls1/a/a/a/v0/h/j;->a:Ls1/a/a/a/v0/h/p;

    .line 8
    throw v1

    :cond_1
    return-object p1
.end method

.method public c(Ljava/io/InputStream;Ls1/a/a/a/v0/h/f;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ls1/a/a/a/v0/h/j;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_3

    :cond_0
    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    and-int/lit8 v0, v0, 0x7f

    const/4 v2, 0x7

    :goto_0
    const/16 v3, 0x20

    if-ge v2, v3, :cond_4

    .line 2
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    if-eq v3, v1, :cond_3

    and-int/lit8 v4, v3, 0x7f

    shl-int/2addr v4, v2

    or-int/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    .line 3
    :cond_3
    invoke-static {}, Ls1/a/a/a/v0/h/j;->d()Ls1/a/a/a/v0/h/j;

    move-result-object p1

    throw p1

    :cond_4
    :goto_1
    const/16 v3, 0x40

    if-ge v2, v3, :cond_7

    .line 4
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v3, v1, :cond_6

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_5

    .line 5
    :goto_2
    new-instance v1, Ls1/a/a/a/v0/h/a$a$a;

    invoke-direct {v1, p1, v0}, Ls1/a/a/a/v0/h/a$a$a;-><init>(Ljava/io/InputStream;I)V

    .line 6
    invoke-virtual {p0, v1, p2}, Ls1/a/a/a/v0/h/b;->d(Ljava/io/InputStream;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;

    move-result-object p1

    .line 7
    :goto_3
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/h/b;->b(Ls1/a/a/a/v0/h/p;)Ls1/a/a/a/v0/h/p;

    return-object p1

    :cond_5
    add-int/lit8 v2, v2, 0x7

    goto :goto_1

    .line 8
    :cond_6
    :try_start_1
    invoke-static {}, Ls1/a/a/a/v0/h/j;->d()Ls1/a/a/a/v0/h/j;

    move-result-object p1

    throw p1

    .line 9
    :cond_7
    new-instance p1, Ls1/a/a/a/v0/h/j;

    const-string p2, "CodedInputStream encountered a malformed varint."

    invoke-direct {p1, p2}, Ls1/a/a/a/v0/h/j;-><init>(Ljava/lang/String;)V

    .line 10
    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 11
    new-instance p2, Ls1/a/a/a/v0/h/j;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ls1/a/a/a/v0/h/j;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public d(Ljava/io/InputStream;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ls1/a/a/a/v0/h/f;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ls1/a/a/a/v0/h/j;
        }
    .end annotation

    .line 1
    new-instance v0, Ls1/a/a/a/v0/h/d;

    invoke-direct {v0, p1}, Ls1/a/a/a/v0/h/d;-><init>(Ljava/io/InputStream;)V

    .line 2
    invoke-interface {p0, v0, p2}, Ls1/a/a/a/v0/h/r;->a(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/h/p;

    const/4 p2, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v0, p2}, Ls1/a/a/a/v0/h/d;->a(I)V
    :try_end_0
    .catch Ls1/a/a/a/v0/h/j; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 4
    iput-object p1, p2, Ls1/a/a/a/v0/h/j;->a:Ls1/a/a/a/v0/h/p;

    .line 5
    throw p2
.end method
