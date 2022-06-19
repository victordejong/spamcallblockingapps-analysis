.class public Le/p/b/l;
.super Le/p/b/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/p/b/g;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public c(Le/p/b/x;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Le/p/b/x;->c:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "file"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(Le/p/b/x;I)Le/p/b/z$a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Le/p/b/g;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 2
    iget-object v0, p1, Le/p/b/x;->c:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p2

    .line 3
    invoke-static {p2}, Ls1/a/a/a/v0/f/d;->p3(Ljava/io/InputStream;)Lv3/b0;

    move-result-object p2

    .line 4
    new-instance v0, Le/p/b/z$a;

    const/4 v1, 0x0

    sget-object v2, Lcom/squareup/picasso/Picasso$d;->c:Lcom/squareup/picasso/Picasso$d;

    iget-object p1, p1, Le/p/b/x;->c:Landroid/net/Uri;

    .line 5
    new-instance v3, Ln3/q/a/a;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ln3/q/a/a;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const-string v4, "Orientation"

    .line 6
    invoke-virtual {v3, v4, p1}, Ln3/q/a/a;->e(Ljava/lang/String;I)I

    move-result p1

    .line 7
    invoke-direct {v0, v1, p2, v2, p1}, Le/p/b/z$a;-><init>(Landroid/graphics/Bitmap;Lv3/b0;Lcom/squareup/picasso/Picasso$d;I)V

    return-object v0
.end method
