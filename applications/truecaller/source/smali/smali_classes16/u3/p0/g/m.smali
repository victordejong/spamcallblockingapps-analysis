.class public final Lu3/p0/g/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu3/p0/g/m$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu3/n0;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lu3/a;

.field public final f:Lu3/p0/g/k;

.field public final g:Lu3/f;

.field public final h:Lu3/u;


# direct methods
.method public constructor <init>(Lu3/a;Lu3/p0/g/k;Lu3/f;Lu3/u;)V
    .locals 2

    const-string v0, "address"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "routeDatabase"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p3, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "eventListener"

    invoke-static {p4, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu3/p0/g/m;->e:Lu3/a;

    iput-object p2, p0, Lu3/p0/g/m;->f:Lu3/p0/g/k;

    iput-object p3, p0, Lu3/p0/g/m;->g:Lu3/f;

    iput-object p4, p0, Lu3/p0/g/m;->h:Lu3/u;

    .line 2
    sget-object p2, Ls1/u/s;->a:Ls1/u/s;

    iput-object p2, p0, Lu3/p0/g/m;->a:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lu3/p0/g/m;->c:Ljava/util/List;

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lu3/p0/g/m;->d:Ljava/util/List;

    .line 5
    iget-object p2, p1, Lu3/a;->a:Lu3/a0;

    .line 6
    iget-object p1, p1, Lu3/a;->j:Ljava/net/Proxy;

    .line 7
    new-instance p4, Lu3/p0/g/n;

    invoke-direct {p4, p0, p1, p2}, Lu3/p0/g/n;-><init>(Lu3/p0/g/m;Ljava/net/Proxy;Lu3/a0;)V

    .line 8
    invoke-static {p3, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "url"

    invoke-static {p2, p1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p4}, Lu3/p0/g/n;->a()Ljava/util/List;

    move-result-object p4

    iput-object p4, p0, Lu3/p0/g/m;->a:Ljava/util/List;

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lu3/p0/g/m;->b:I

    .line 11
    invoke-static {p3, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "proxies"

    invoke-static {p4, p1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lu3/p0/g/m;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lu3/p0/g/m;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget v0, p0, Lu3/p0/g/m;->b:I

    iget-object v1, p0, Lu3/p0/g/m;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
