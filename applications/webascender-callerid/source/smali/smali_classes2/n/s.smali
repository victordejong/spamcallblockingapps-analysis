.class final synthetic Ln/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/io/File;)Ln/b0;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string v0, "$this$appendingSink"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {v0}, Ln/r;->h(Ljava/io/OutputStream;)Ln/b0;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ljava/lang/AssertionError;)Z
    .locals 4

    const-string v0, "$this$isAndroidGetsocknameError"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    const/4 v2, 0x0

    const-string v3, "getsockname failed"

    invoke-static {p0, v3, v1, v0, v2}, Lkotlin/c0/m;->I(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static final c(Ljava/io/File;Z)Ln/b0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string v0, "$this$sink"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {v0}, Ln/r;->h(Ljava/io/OutputStream;)Ln/b0;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Ljava/io/OutputStream;)Ln/b0;
    .locals 2

    const-string v0, "$this$sink"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ln/v;

    new-instance v1, Ln/e0;

    invoke-direct {v1}, Ln/e0;-><init>()V

    invoke-direct {v0, p0, v1}, Ln/v;-><init>(Ljava/io/OutputStream;Ln/e0;)V

    return-object v0
.end method

.method public static final e(Ljava/net/Socket;)Ln/b0;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "$this$sink"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ln/c0;

    invoke-direct {v0, p0}, Ln/c0;-><init>(Ljava/net/Socket;)V

    .line 2
    new-instance v1, Ln/v;

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    const-string v2, "getOutputStream()"

    invoke-static {p0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v0}, Ln/v;-><init>(Ljava/io/OutputStream;Ln/e0;)V

    .line 3
    invoke-virtual {v0, v1}, Ln/d;->v(Ln/b0;)Ln/b0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ljava/io/File;ZILjava/lang/Object;)Ln/b0;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1}, Ln/r;->g(Ljava/io/File;Z)Ln/b0;

    move-result-object p0

    return-object p0
.end method

.method public static final g(Ljava/io/File;)Ln/d0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string v0, "$this$source"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Ln/r;->l(Ljava/io/InputStream;)Ln/d0;

    move-result-object p0

    return-object p0
.end method

.method public static final h(Ljava/io/InputStream;)Ln/d0;
    .locals 2

    const-string v0, "$this$source"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ln/q;

    new-instance v1, Ln/e0;

    invoke-direct {v1}, Ln/e0;-><init>()V

    invoke-direct {v0, p0, v1}, Ln/q;-><init>(Ljava/io/InputStream;Ln/e0;)V

    return-object v0
.end method

.method public static final i(Ljava/net/Socket;)Ln/d0;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "$this$source"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ln/c0;

    invoke-direct {v0, p0}, Ln/c0;-><init>(Ljava/net/Socket;)V

    .line 2
    new-instance v1, Ln/q;

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const-string v2, "getInputStream()"

    invoke-static {p0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v0}, Ln/q;-><init>(Ljava/io/InputStream;Ln/e0;)V

    .line 3
    invoke-virtual {v0, v1}, Ln/d;->w(Ln/d0;)Ln/d0;

    move-result-object p0

    return-object p0
.end method
