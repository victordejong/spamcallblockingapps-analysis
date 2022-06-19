.class public final Lu3/j0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu3/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lu3/c0;)Lu3/j0;
    .locals 2

    const-string v0, "$this$toRequestBody"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ls1/f0/b;->a:Ljava/nio/charset/Charset;

    if-eqz p2, :cond_1

    .line 2
    sget-object v1, Lu3/c0;->d:Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p2, v1}, Lu3/c0;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    sget-object v1, Lu3/c0;->f:Lu3/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; charset=utf-8"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lu3/c0$a;->b(Ljava/lang/String;)Lu3/c0;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v0}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 6
    array-length v1, p1

    invoke-virtual {p0, p1, p2, v0, v1}, Lu3/j0$a;->d([BLu3/c0;II)Lu3/j0;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lu3/c0;Ljava/io/File;)Lu3/j0;
    .locals 1

    const-string v0, "file"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$asRequestBody"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lu3/h0;

    invoke-direct {v0, p2, p1}, Lu3/h0;-><init>(Ljava/io/File;Lu3/c0;)V

    return-object v0
.end method

.method public final c(Lu3/c0;Ljava/lang/String;)Lu3/j0;
    .locals 1

    const-string v0, "content"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2, p1}, Lu3/j0$a;->a(Ljava/lang/String;Lu3/c0;)Lu3/j0;

    move-result-object p1

    return-object p1
.end method

.method public final d([BLu3/c0;II)Lu3/j0;
    .locals 7

    const-string v0, "$this$toRequestBody"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p3

    int-to-long v5, p4

    invoke-static/range {v1 .. v6}, Lu3/p0/c;->c(JJJ)V

    .line 2
    new-instance v0, Lu3/j0$a$a;

    invoke-direct {v0, p1, p2, p4, p3}, Lu3/j0$a$a;-><init>([BLu3/c0;II)V

    return-object v0
.end method
