.class public abstract Le/m/b/x/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Le/m/b/x/c/d;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b(Ljava/io/InputStream;)Le/m/b/x/c/f;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract c(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Le/m/b/x/c/f;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final d(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    sget-object v1, Le/m/b/x/d/e;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1}, Le/m/b/x/c/c;->a(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Le/m/b/x/c/d;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 3
    move-object p2, v1

    check-cast p2, Le/m/b/x/c/j/b;

    .line 4
    iget-object p2, p2, Le/m/b/x/c/j/b;->a:Le/m/e/g0/c;

    const-string v2, "  "

    invoke-virtual {p2, v2}, Le/m/e/g0/c;->Q(Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x0

    .line 5
    invoke-virtual {v1, p2, p1}, Le/m/b/x/c/d;->b(ZLjava/lang/Object;)V

    .line 6
    check-cast v1, Le/m/b/x/c/j/b;

    .line 7
    iget-object p1, v1, Le/m/b/x/c/j/b;->a:Le/m/e/g0/c;

    invoke-virtual {p1}, Le/m/e/g0/c;->flush()V

    const-string p1, "UTF-8"

    .line 8
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
