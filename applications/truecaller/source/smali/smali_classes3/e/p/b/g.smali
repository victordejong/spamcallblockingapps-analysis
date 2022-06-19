.class public Le/p/b/g;
.super Le/p/b/z;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/p/b/z;-><init>()V

    .line 2
    iput-object p1, p0, Le/p/b/g;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public c(Le/p/b/x;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Le/p/b/x;->c:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "content"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(Le/p/b/x;I)Le/p/b/z$a;
    .locals 1
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
    iget-object p1, p1, Le/p/b/x;->c:Landroid/net/Uri;

    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 3
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->p3(Ljava/io/InputStream;)Lv3/b0;

    move-result-object p1

    .line 4
    new-instance p2, Le/p/b/z$a;

    sget-object v0, Lcom/squareup/picasso/Picasso$d;->c:Lcom/squareup/picasso/Picasso$d;

    invoke-direct {p2, p1, v0}, Le/p/b/z$a;-><init>(Lv3/b0;Lcom/squareup/picasso/Picasso$d;)V

    return-object p2
.end method
