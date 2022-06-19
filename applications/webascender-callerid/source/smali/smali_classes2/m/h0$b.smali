.class public final Lm/h0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
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
    invoke-direct {p0}, Lm/h0$b;-><init>()V

    return-void
.end method

.method public static synthetic i(Lm/h0$b;[BLm/a0;ILjava/lang/Object;)Lm/h0;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lm/h0$b;->h([BLm/a0;)Lm/h0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lm/a0;)Lm/h0;
    .locals 4

    const-string v0, "$this$toResponseBody"

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
    new-instance v1, Ln/f;

    invoke-direct {v1}, Ln/f;-><init>()V

    invoke-virtual {v1, p1, v0}, Ln/f;->n1(Ljava/lang/String;Ljava/nio/charset/Charset;)Ln/f;

    .line 5
    invoke-virtual {v1}, Ln/f;->p0()J

    move-result-wide v2

    invoke-virtual {p0, v1, p2, v2, v3}, Lm/h0$b;->f(Ln/h;Lm/a0;J)Lm/h0;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lm/a0;JLn/h;)Lm/h0;
    .locals 1

    const-string v0, "content"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p4, p1, p2, p3}, Lm/h0$b;->f(Ln/h;Lm/a0;J)Lm/h0;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lm/a0;Ljava/lang/String;)Lm/h0;
    .locals 1

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2, p1}, Lm/h0$b;->a(Ljava/lang/String;Lm/a0;)Lm/h0;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lm/a0;Ln/i;)Lm/h0;
    .locals 1

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2, p1}, Lm/h0$b;->g(Ln/i;Lm/a0;)Lm/h0;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lm/a0;[B)Lm/h0;
    .locals 1

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2, p1}, Lm/h0$b;->h([BLm/a0;)Lm/h0;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ln/h;Lm/a0;J)Lm/h0;
    .locals 1

    const-string v0, "$this$asResponseBody"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lm/h0$b$a;

    invoke-direct {v0, p1, p2, p3, p4}, Lm/h0$b$a;-><init>(Ln/h;Lm/a0;J)V

    return-object v0
.end method

.method public final g(Ln/i;Lm/a0;)Lm/h0;
    .locals 3

    const-string v0, "$this$toResponseBody"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ln/f;

    invoke-direct {v0}, Ln/f;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Ln/f;->G0(Ln/i;)Ln/f;

    .line 3
    invoke-virtual {p1}, Ln/i;->size()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {p0, v0, p2, v1, v2}, Lm/h0$b;->f(Ln/h;Lm/a0;J)Lm/h0;

    move-result-object p1

    return-object p1
.end method

.method public final h([BLm/a0;)Lm/h0;
    .locals 3

    const-string v0, "$this$toResponseBody"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ln/f;

    invoke-direct {v0}, Ln/f;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Ln/f;->J0([B)Ln/f;

    .line 3
    array-length p1, p1

    int-to-long v1, p1

    invoke-virtual {p0, v0, p2, v1, v2}, Lm/h0$b;->f(Ln/h;Lm/a0;J)Lm/h0;

    move-result-object p1

    return-object p1
.end method
