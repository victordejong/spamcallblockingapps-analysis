.class Lcom/squareup/picasso/k;
.super Lcom/squareup/picasso/g;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/squareup/picasso/g;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static k(Landroid/net/Uri;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lf/l/a/a;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lf/l/a/a;-><init>(Ljava/lang/String;)V

    const-string p0, "Orientation"

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p0, v1}, Lf/l/a/a;->e(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public c(Lcom/squareup/picasso/w;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/squareup/picasso/w;->d:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "file"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(Lcom/squareup/picasso/w;I)Lcom/squareup/picasso/y$a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/g;->j(Lcom/squareup/picasso/w;)Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p2}, Ln/r;->l(Ljava/io/InputStream;)Ln/d0;

    move-result-object p2

    .line 2
    new-instance v0, Lcom/squareup/picasso/y$a;

    sget-object v1, Lcom/squareup/picasso/Picasso$e;->DISK:Lcom/squareup/picasso/Picasso$e;

    iget-object p1, p1, Lcom/squareup/picasso/w;->d:Landroid/net/Uri;

    invoke-static {p1}, Lcom/squareup/picasso/k;->k(Landroid/net/Uri;)I

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v0, v2, p2, v1, p1}, Lcom/squareup/picasso/y$a;-><init>(Landroid/graphics/Bitmap;Ln/d0;Lcom/squareup/picasso/Picasso$e;I)V

    return-object v0
.end method
