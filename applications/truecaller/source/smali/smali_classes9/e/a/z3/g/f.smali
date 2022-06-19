.class public final Le/a/z3/g/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/p/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/n/p/n<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/UriMatcher;

.field public final b:Le/a/z3/b;

.field public final c:Le/f/a/n/p/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/p/n<",
            "Le/f/a/n/p/g;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/f/a/n/p/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/p/n<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/z3/b;Le/f/a/n/p/n;Le/f/a/n/p/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/z3/b;",
            "Le/f/a/n/p/n<",
            "Le/f/a/n/p/g;",
            "Ljava/io/InputStream;",
            ">;",
            "Le/f/a/n/p/n<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    const-string v0, "provider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "urlLoader"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uriLoader"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/z3/g/f;->b:Le/a/z3/b;

    iput-object p2, p0, Le/a/z3/g/f;->c:Le/f/a/n/p/n;

    iput-object p3, p0, Le/a/z3/g/f;->d:Le/f/a/n/p/n;

    .line 2
    new-instance p2, Landroid/content/UriMatcher;

    const/4 p3, -0x1

    invoke-direct {p2, p3}, Landroid/content/UriMatcher;-><init>(I)V

    .line 3
    invoke-interface {p1}, Le/a/z3/b;->m()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1}, Le/a/z3/b;->l()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p1, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4
    iput-object p2, p0, Le/a/z3/g/f;->a:Landroid/content/UriMatcher;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILe/f/a/n/i;)Le/f/a/n/p/n$a;
    .locals 4

    .line 1
    check-cast p1, Landroid/net/Uri;

    const-string v0, "model"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/z3/g/f;->b:Le/a/z3/b;

    invoke-interface {v0, p1}, Le/a/z3/b;->b(Landroid/net/Uri;)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 6
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 7
    iget-object v3, p0, Le/a/z3/g/f;->d:Le/f/a/n/p/n;

    invoke-interface {v3, v2}, Le/f/a/n/p/n;->b(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p1, p0, Le/a/z3/g/f;->d:Le/f/a/n/p/n;

    invoke-interface {p1, v2, p2, p3, p4}, Le/f/a/n/p/n;->a(Ljava/lang/Object;IILe/f/a/n/i;)Le/f/a/n/p/n$a;

    move-result-object v1

    goto :goto_0

    .line 8
    :cond_1
    new-instance v2, Le/f/a/n/p/g;

    invoke-direct {v2, v0}, Le/f/a/n/p/g;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v3, p0, Le/a/z3/g/f;->c:Le/f/a/n/p/n;

    invoke-interface {v3, v2}, Le/f/a/n/p/n;->b(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "$this$toHttpUrlOrNull"

    .line 10
    invoke-static {v0, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v3, "$this$toHttpUrl"

    .line 11
    invoke-static {v0, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v3, Lu3/a0$a;

    invoke-direct {v3}, Lu3/a0$a;-><init>()V

    invoke-virtual {v3, v1, v0}, Lu3/a0$a;->f(Lu3/a0;Ljava/lang/String;)Lu3/a0$a;

    invoke-virtual {v3}, Lu3/a0$a;->b()Lu3/a0;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz v1, :cond_0

    .line 13
    iget-object p1, p0, Le/a/z3/g/f;->c:Le/f/a/n/p/n;

    invoke-interface {p1, v2, p2, p3, p4}, Le/f/a/n/p/n;->a(Ljava/lang/Object;IILe/f/a/n/i;)Le/f/a/n/p/n$a;

    move-result-object v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    check-cast p1, Landroid/net/Uri;

    const-string v0, "model"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/z3/g/f;->a:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
