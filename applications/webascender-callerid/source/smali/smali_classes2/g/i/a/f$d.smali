.class Lg/i/a/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/i/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/i/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field private final a:Lcom/squareup/picasso/x;

.field final synthetic b:Lg/i/a/f;


# direct methods
.method constructor <init>(Lg/i/a/f;Lcom/squareup/picasso/Picasso;Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/i/a/f$d;->b:Lg/i/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p2, p3}, Lcom/squareup/picasso/Picasso;->load(Landroid/net/Uri;)Lcom/squareup/picasso/x;

    move-result-object p1

    iput-object p1, p0, Lg/i/a/f$d;->a:Lcom/squareup/picasso/x;

    return-void
.end method

.method constructor <init>(Lg/i/a/f;Lcom/squareup/picasso/Picasso;Ljava/io/File;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lg/i/a/f$d;->b:Lg/i/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p2, p3}, Lcom/squareup/picasso/Picasso;->load(Ljava/io/File;)Lcom/squareup/picasso/x;

    move-result-object p1

    iput-object p1, p0, Lg/i/a/f$d;->a:Lcom/squareup/picasso/x;

    return-void
.end method

.method constructor <init>(Lg/i/a/f;Lcom/squareup/picasso/Picasso;Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lg/i/a/f$d;->b:Lg/i/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p2, p3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/x;

    move-result-object p1

    iput-object p1, p0, Lg/i/a/f$d;->a:Lcom/squareup/picasso/x;

    return-void
.end method


# virtual methods
.method public a()Lg/i/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/i/a/f$d;->a:Lcom/squareup/picasso/x;

    invoke-virtual {v0}, Lcom/squareup/picasso/x;->d()Lcom/squareup/picasso/x;

    return-object p0
.end method

.method public b()Lg/i/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/i/a/f$d;->a:Lcom/squareup/picasso/x;

    invoke-virtual {v0}, Lcom/squareup/picasso/x;->m()Lcom/squareup/picasso/x;

    return-object p0
.end method

.method public c(II)Lg/i/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/i/a/f$d;->a:Lcom/squareup/picasso/x;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/picasso/x;->q(II)Lcom/squareup/picasso/x;

    return-object p0
.end method

.method public d(Lg/i/a/h;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/i/a/f$d;->b:Lg/i/a/f;

    invoke-static {v0}, Lg/i/a/f;->f(Lg/i/a/f;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/i/a/f$d;->a:Lcom/squareup/picasso/x;

    iget-object v1, p0, Lg/i/a/f$d;->b:Lg/i/a/f;

    invoke-static {v1}, Lg/i/a/f;->f(Lg/i/a/f;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/squareup/picasso/c0;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/x;->l(Lcom/squareup/picasso/c0;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lg/i/a/f$e;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lg/i/a/f$e;-><init>(Lg/i/a/h;Lg/i/a/f$a;)V

    .line 4
    iget-object v1, p0, Lg/i/a/f$d;->b:Lg/i/a/f;

    invoke-static {v1}, Lg/i/a/f;->f(Lg/i/a/f;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lg/i/a/f$d;->a:Lcom/squareup/picasso/x;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/x;->l(Lcom/squareup/picasso/c0;)V

    :goto_0
    return-void
.end method

.method public e(Lg/i/a/i;)Lg/i/a/g;
    .locals 2

    .line 1
    iget-object v0, p0, Lg/i/a/f$d;->a:Lcom/squareup/picasso/x;

    new-instance v1, Lg/i/a/f$f;

    invoke-direct {v1, p1}, Lg/i/a/f$f;-><init>(Lg/i/a/i;)V

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/x;->s(Lcom/squareup/picasso/e0;)Lcom/squareup/picasso/x;

    return-object p0
.end method

.method public f()Lg/i/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/i/a/f$d;->a:Lcom/squareup/picasso/x;

    invoke-virtual {v0}, Lcom/squareup/picasso/x;->n()Lcom/squareup/picasso/x;

    return-object p0
.end method

.method public g()Lg/i/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/i/a/f$d;->a:Lcom/squareup/picasso/x;

    invoke-virtual {v0}, Lcom/squareup/picasso/x;->a()Lcom/squareup/picasso/x;

    return-object p0
.end method

.method public h(Landroid/widget/ImageView;Lg/i/a/a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lg/i/a/f$d;->a:Lcom/squareup/picasso/x;

    new-instance v1, Lg/i/a/f$c;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lg/i/a/f$c;-><init>(Lg/i/a/a;Lg/i/a/f$a;)V

    invoke-virtual {v0, p1, v1}, Lcom/squareup/picasso/x;->h(Landroid/widget/ImageView;Lcom/squareup/picasso/e;)V

    return-void
.end method

.method public i(Landroid/widget/ImageView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/i/a/f$d;->a:Lcom/squareup/picasso/x;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/x;->g(Landroid/widget/ImageView;)V

    return-void
.end method
