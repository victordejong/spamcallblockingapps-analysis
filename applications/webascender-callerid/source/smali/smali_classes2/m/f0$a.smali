.class public final Lm/f0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/w/c/g;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lm/f0$a;-><init>()V

    return-void
.end method

.method public static synthetic i(Lm/f0$a;Lm/a0;[BIIILjava/lang/Object;)Lm/f0;
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 1
    array-length p4, p2

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lm/f0$a;->f(Lm/a0;[BII)Lm/f0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lm/f0$a;[BLm/a0;IIILjava/lang/Object;)Lm/f0;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    .line 1
    array-length p4, p1

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lm/f0$a;->h([BLm/a0;II)Lm/f0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/io/File;Lm/a0;)Lm/f0;
    .locals 1

    const-string v0, "$this$asRequestBody"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lm/f0$a$a;

    invoke-direct {v0, p1, p2}, Lm/f0$a$a;-><init>(Ljava/io/File;Lm/a0;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;Lm/a0;)Lm/f0;
    .locals 3

    const-string v0, "$this$toRequestBody"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lkotlin/c0/d;->a:Ljava/nio/charset/Charset;

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-static {p2, v2, v1, v2}, Lm/a0;->e(Lm/a0;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/nio/charset/Charset;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lm/a0;->g:Lm/a0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; charset=utf-8"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lm/a0$a;->b(Ljava/lang/String;)Lm/a0;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    array-length v1, p1

    invoke-virtual {p0, p1, p2, v0, v1}, Lm/f0$a;->h([BLm/a0;II)Lm/f0;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lm/a0;Ljava/io/File;)Lm/f0;
    .locals 1

    const-string v0, "file"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2, p1}, Lm/f0$a;->a(Ljava/io/File;Lm/a0;)Lm/f0;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lm/a0;Ljava/lang/String;)Lm/f0;
    .locals 1

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2, p1}, Lm/f0$a;->b(Ljava/lang/String;Lm/a0;)Lm/f0;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lm/a0;Ln/i;)Lm/f0;
    .locals 1

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2, p1}, Lm/f0$a;->g(Ln/i;Lm/a0;)Lm/f0;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lm/a0;[BII)Lm/f0;
    .locals 1

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2, p1, p3, p4}, Lm/f0$a;->h([BLm/a0;II)Lm/f0;

    move-result-object p1

    return-object p1
.end method

.method public final g(Ln/i;Lm/a0;)Lm/f0;
    .locals 1

    const-string v0, "$this$toRequestBody"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lm/f0$a$b;

    invoke-direct {v0, p1, p2}, Lm/f0$a$b;-><init>(Ln/i;Lm/a0;)V

    return-object v0
.end method

.method public final h([BLm/a0;II)Lm/f0;
    .locals 7

    const-string v0, "$this$toRequestBody"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p3

    int-to-long v5, p4

    invoke-static/range {v1 .. v6}, Lm/k0/b;->i(JJJ)V

    .line 2
    new-instance v0, Lm/f0$a$c;

    invoke-direct {v0, p1, p2, p4, p3}, Lm/f0$a$c;-><init>([BLm/a0;II)V

    return-object v0
.end method
