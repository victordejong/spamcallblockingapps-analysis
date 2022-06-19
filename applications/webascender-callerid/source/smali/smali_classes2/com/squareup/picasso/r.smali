.class Lcom/squareup/picasso/r;
.super Lcom/squareup/picasso/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/r$b;,
        Lcom/squareup/picasso/r$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/squareup/picasso/j;

.field private final b:Lcom/squareup/picasso/a0;


# direct methods
.method constructor <init>(Lcom/squareup/picasso/j;Lcom/squareup/picasso/a0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/squareup/picasso/y;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/squareup/picasso/r;->a:Lcom/squareup/picasso/j;

    .line 3
    iput-object p2, p0, Lcom/squareup/picasso/r;->b:Lcom/squareup/picasso/a0;

    return-void
.end method

.method private static j(Lcom/squareup/picasso/w;I)Lm/e0;
    .locals 2

    if-eqz p1, :cond_3

    .line 1
    invoke-static {p1}, Lcom/squareup/picasso/q;->isOfflineOnly(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lm/e;->n:Lm/e;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lm/e$a;

    invoke-direct {v0}, Lm/e$a;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/squareup/picasso/q;->shouldReadFromDiskCache(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {v0}, Lm/e$a;->d()Lm/e$a;

    .line 6
    :cond_1
    invoke-static {p1}, Lcom/squareup/picasso/q;->shouldWriteToDiskCache(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    invoke-virtual {v0}, Lm/e$a;->e()Lm/e$a;

    .line 8
    :cond_2
    invoke-virtual {v0}, Lm/e$a;->a()Lm/e;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 9
    :goto_0
    new-instance v0, Lm/e0$a;

    invoke-direct {v0}, Lm/e0$a;-><init>()V

    iget-object p0, p0, Lcom/squareup/picasso/w;->d:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lm/e0$a;->k(Ljava/lang/String;)Lm/e0$a;

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {v0, p1}, Lm/e0$a;->c(Lm/e;)Lm/e0$a;

    .line 11
    :cond_4
    invoke-virtual {v0}, Lm/e0$a;->b()Lm/e0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c(Lcom/squareup/picasso/w;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/squareup/picasso/w;->d:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "http"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method e()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public f(Lcom/squareup/picasso/w;I)Lcom/squareup/picasso/y$a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/squareup/picasso/r;->j(Lcom/squareup/picasso/w;I)Lm/e0;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lcom/squareup/picasso/r;->a:Lcom/squareup/picasso/j;

    invoke-interface {v0, p2}, Lcom/squareup/picasso/j;->a(Lm/e0;)Lm/g0;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Lm/g0;->a()Lm/h0;

    move-result-object v0

    .line 4
    invoke-virtual {p2}, Lm/g0;->y()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5
    invoke-virtual {p2}, Lm/g0;->c()Lm/g0;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/squareup/picasso/Picasso$e;->NETWORK:Lcom/squareup/picasso/Picasso$e;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/squareup/picasso/Picasso$e;->DISK:Lcom/squareup/picasso/Picasso$e;

    .line 6
    :goto_0
    sget-object p2, Lcom/squareup/picasso/Picasso$e;->DISK:Lcom/squareup/picasso/Picasso$e;

    const-wide/16 v1, 0x0

    if-ne p1, p2, :cond_2

    invoke-virtual {v0}, Lm/h0;->contentLength()J

    move-result-wide v3

    cmp-long p2, v3, v1

    if-eqz p2, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v0}, Lm/h0;->close()V

    .line 8
    new-instance p1, Lcom/squareup/picasso/r$a;

    const-string p2, "Received response with 0 content-length header."

    invoke-direct {p1, p2}, Lcom/squareup/picasso/r$a;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    :goto_1
    sget-object p2, Lcom/squareup/picasso/Picasso$e;->NETWORK:Lcom/squareup/picasso/Picasso$e;

    if-ne p1, p2, :cond_3

    invoke-virtual {v0}, Lm/h0;->contentLength()J

    move-result-wide v3

    cmp-long p2, v3, v1

    if-lez p2, :cond_3

    .line 10
    iget-object p2, p0, Lcom/squareup/picasso/r;->b:Lcom/squareup/picasso/a0;

    invoke-virtual {v0}, Lm/h0;->contentLength()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/squareup/picasso/a0;->f(J)V

    .line 11
    :cond_3
    new-instance p2, Lcom/squareup/picasso/y$a;

    invoke-virtual {v0}, Lm/h0;->source()Ln/h;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/squareup/picasso/y$a;-><init>(Ln/d0;Lcom/squareup/picasso/Picasso$e;)V

    return-object p2

    .line 12
    :cond_4
    invoke-virtual {v0}, Lm/h0;->close()V

    .line 13
    new-instance v0, Lcom/squareup/picasso/r$b;

    invoke-virtual {p2}, Lm/g0;->f()I

    move-result p2

    iget p1, p1, Lcom/squareup/picasso/w;->c:I

    invoke-direct {v0, p2, p1}, Lcom/squareup/picasso/r$b;-><init>(II)V

    throw v0
.end method

.method h(ZLandroid/net/NetworkInfo;)Z
    .locals 0

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
