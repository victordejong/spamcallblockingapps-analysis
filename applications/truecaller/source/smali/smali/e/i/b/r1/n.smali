.class public final Le/i/b/r1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/advancednative/ImageLoader;


# instance fields
.field public final a:Lcom/squareup/picasso/Picasso;

.field public final b:Le/i/b/w1/a;


# direct methods
.method public constructor <init>(Lcom/squareup/picasso/Picasso;Le/i/b/w1/a;)V
    .locals 1

    const-string v0, "picasso"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncResources"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/i/b/r1/n;->a:Lcom/squareup/picasso/Picasso;

    iput-object p2, p0, Le/i/b/r1/n;->b:Le/i/b/w1/a;

    return-void
.end method


# virtual methods
.method public loadImageInto(Ljava/net/URL;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const-string v0, "imageUrl"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageView"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/i/b/r1/n;->b:Le/i/b/w1/a;

    new-instance v1, Le/i/b/r1/n$a;

    invoke-direct {v1, p0, p1, p3, p2}, Le/i/b/r1/n$a;-><init>(Le/i/b/r1/n;Ljava/net/URL;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "resourceHandler"

    invoke-static {v1, p1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p1, Le/i/b/w1/a$a;

    invoke-direct {p1, v0}, Le/i/b/w1/a$a;-><init>(Le/i/b/w1/a;)V

    .line 4
    :try_start_0
    invoke-virtual {v1, p1}, Le/i/b/r1/n$a;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    .line 5
    invoke-virtual {p1}, Le/i/b/w1/a$a;->a()V

    .line 6
    throw p2
.end method

.method public preload(Ljava/net/URL;)V
    .locals 1

    const-string v0, "imageUrl"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/i/b/r1/n;->a:Lcom/squareup/picasso/Picasso;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->e(Ljava/lang/String;)Le/p/b/y;

    move-result-object p1

    invoke-virtual {p1}, Le/p/b/y;->b()V

    return-void
.end method
