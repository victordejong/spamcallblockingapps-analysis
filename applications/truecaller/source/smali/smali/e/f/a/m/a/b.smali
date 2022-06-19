.class public Le/f/a/m/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/n/d;
.implements Lu3/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/n/n/d<",
        "Ljava/io/InputStream;",
        ">;",
        "Lu3/g;"
    }
.end annotation


# instance fields
.field public final a:Lu3/f$a;

.field public final b:Le/f/a/n/p/g;

.field public c:Ljava/io/InputStream;

.field public d:Lu3/l0;

.field public e:Le/f/a/n/n/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/n/d$a<",
            "-",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field public volatile f:Lu3/f;


# direct methods
.method public constructor <init>(Lu3/f$a;Le/f/a/n/p/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/f/a/m/a/b;->a:Lu3/f$a;

    .line 3
    iput-object p2, p0, Le/f/a/m/a/b;->b:Le/f/a/n/p/g;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public b()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Le/f/a/m/a/b;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    :cond_0
    iget-object v0, p0, Le/f/a/m/a/b;->d:Lu3/l0;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lu3/l0;->close()V

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Le/f/a/m/a/b;->e:Le/f/a/n/n/d$a;

    return-void
.end method

.method public c()Le/f/a/n/a;
    .locals 1

    .line 1
    sget-object v0, Le/f/a/n/a;->b:Le/f/a/n/a;

    return-object v0
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/a/m/a/b;->f:Lu3/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lu3/f;->cancel()V

    :cond_0
    return-void
.end method

.method public d(Le/f/a/f;Le/f/a/n/n/d$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/f;",
            "Le/f/a/n/n/d$a<",
            "-",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Lu3/g0$a;

    invoke-direct {p1}, Lu3/g0$a;-><init>()V

    iget-object v0, p0, Le/f/a/m/a/b;->b:Le/f/a/n/p/g;

    .line 2
    invoke-virtual {v0}, Le/f/a/n/p/g;->d()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Lu3/g0$a;->i(Ljava/lang/String;)Lu3/g0$a;

    .line 4
    iget-object v0, p0, Le/f/a/m/a/b;->b:Le/f/a/n/p/g;

    .line 5
    iget-object v0, v0, Le/f/a/n/p/g;->b:Le/f/a/n/p/h;

    invoke-interface {v0}, Le/f/a/n/p/h;->a()Ljava/util/Map;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lu3/g0$a;->a(Ljava/lang/String;Ljava/lang/String;)Lu3/g0$a;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lu3/g0$a;->b()Lu3/g0;

    move-result-object p1

    .line 10
    iput-object p2, p0, Le/f/a/m/a/b;->e:Le/f/a/n/n/d$a;

    .line 11
    iget-object p2, p0, Le/f/a/m/a/b;->a:Lu3/f$a;

    invoke-interface {p2, p1}, Lu3/f$a;->a(Lu3/g0;)Lu3/f;

    move-result-object p1

    iput-object p1, p0, Le/f/a/m/a/b;->f:Lu3/f;

    .line 12
    iget-object p1, p0, Le/f/a/m/a/b;->f:Lu3/f;

    invoke-interface {p1, p0}, Lu3/f;->M1(Lu3/g;)V

    return-void
.end method

.method public onFailure(Lu3/f;Ljava/io/IOException;)V
    .locals 1

    const-string p1, "OkHttpFetcher"

    const/4 v0, 0x3

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    .line 2
    iget-object p1, p0, Le/f/a/m/a/b;->e:Le/f/a/n/n/d$a;

    invoke-interface {p1, p2}, Le/f/a/n/n/d$a;->f(Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lu3/f;Lu3/k0;)V
    .locals 2

    .line 1
    iget-object p1, p2, Lu3/k0;->h:Lu3/l0;

    .line 2
    iput-object p1, p0, Le/f/a/m/a/b;->d:Lu3/l0;

    .line 3
    invoke-virtual {p2}, Lu3/k0;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Le/f/a/m/a/b;->d:Lu3/l0;

    const-string p2, "Argument must not be null"

    .line 5
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Lu3/l0;->k()J

    move-result-wide p1

    .line 7
    iget-object v0, p0, Le/f/a/m/a/b;->d:Lu3/l0;

    invoke-virtual {v0}, Lu3/l0;->b()Ljava/io/InputStream;

    move-result-object v0

    .line 8
    new-instance v1, Le/f/a/t/c;

    invoke-direct {v1, v0, p1, p2}, Le/f/a/t/c;-><init>(Ljava/io/InputStream;J)V

    .line 9
    iput-object v1, p0, Le/f/a/m/a/b;->c:Ljava/io/InputStream;

    .line 10
    iget-object p1, p0, Le/f/a/m/a/b;->e:Le/f/a/n/n/d$a;

    invoke-interface {p1, v1}, Le/f/a/n/n/d$a;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Le/f/a/m/a/b;->e:Le/f/a/n/n/d$a;

    new-instance v0, Le/f/a/n/e;

    .line 12
    iget-object v1, p2, Lu3/k0;->d:Ljava/lang/String;

    .line 13
    iget p2, p2, Lu3/k0;->e:I

    .line 14
    invoke-direct {v0, v1, p2}, Le/f/a/n/e;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Le/f/a/n/n/d$a;->f(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
