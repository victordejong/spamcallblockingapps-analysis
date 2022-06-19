.class public Le/m/b/x/c/j/a;
.super Le/m/b/x/c/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/b/x/c/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Le/m/b/x/c/d;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 2
    new-instance p1, Le/m/b/x/c/j/b;

    new-instance p2, Le/m/e/g0/c;

    invoke-direct {p2, v0}, Le/m/e/g0/c;-><init>(Ljava/io/Writer;)V

    invoke-direct {p1, p0, p2}, Le/m/b/x/c/j/b;-><init>(Le/m/b/x/c/j/a;Le/m/e/g0/c;)V

    return-object p1
.end method

.method public b(Ljava/io/InputStream;)Le/m/b/x/c/f;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Le/m/b/x/d/e;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Le/m/b/x/c/j/a;->e(Ljava/io/Reader;)Le/m/b/x/c/f;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Le/m/b/x/c/f;
    .locals 1

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Ljava/io/InputStreamReader;

    sget-object v0, Le/m/b/x/d/e;->a:Ljava/nio/charset/Charset;

    invoke-direct {p2, p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, p2}, Le/m/b/x/c/j/a;->e(Ljava/io/Reader;)Le/m/b/x/c/f;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Le/m/b/x/c/j/a;->e(Ljava/io/Reader;)Le/m/b/x/c/f;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/io/Reader;)Le/m/b/x/c/f;
    .locals 2

    .line 1
    new-instance v0, Le/m/b/x/c/j/c;

    new-instance v1, Le/m/e/g0/a;

    invoke-direct {v1, p1}, Le/m/e/g0/a;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, p0, v1}, Le/m/b/x/c/j/c;-><init>(Le/m/b/x/c/j/a;Le/m/e/g0/a;)V

    return-object v0
.end method
