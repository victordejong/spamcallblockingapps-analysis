.class public final Lm/c0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:J

.field private D:Lokhttp3/internal/connection/i;

.field private a:Lm/r;

.field private b:Lm/l;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lm/z;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lm/z;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lm/u$b;

.field private f:Z

.field private g:Lm/c;

.field private h:Z

.field private i:Z

.field private j:Lm/p;

.field private k:Lm/d;

.field private l:Lm/t;

.field private m:Ljava/net/Proxy;

.field private n:Ljava/net/ProxySelector;

.field private o:Lm/c;

.field private p:Ljavax/net/SocketFactory;

.field private q:Ljavax/net/ssl/SSLSocketFactory;

.field private r:Ljavax/net/ssl/X509TrustManager;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lm/m;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lm/d0;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljavax/net/ssl/HostnameVerifier;

.field private v:Lm/h;

.field private w:Lm/k0/k/c;

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lm/r;

    invoke-direct {v0}, Lm/r;-><init>()V

    iput-object v0, p0, Lm/c0$a;->a:Lm/r;

    .line 3
    new-instance v0, Lm/l;

    invoke-direct {v0}, Lm/l;-><init>()V

    iput-object v0, p0, Lm/c0$a;->b:Lm/l;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm/c0$a;->c:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm/c0$a;->d:Ljava/util/List;

    .line 6
    sget-object v0, Lm/u;->a:Lm/u;

    invoke-static {v0}, Lm/k0/b;->e(Lm/u;)Lm/u$b;

    move-result-object v0

    iput-object v0, p0, Lm/c0$a;->e:Lm/u$b;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lm/c0$a;->f:Z

    .line 8
    sget-object v1, Lm/c;->a:Lm/c;

    iput-object v1, p0, Lm/c0$a;->g:Lm/c;

    .line 9
    iput-boolean v0, p0, Lm/c0$a;->h:Z

    .line 10
    iput-boolean v0, p0, Lm/c0$a;->i:Z

    .line 11
    sget-object v0, Lm/p;->a:Lm/p;

    iput-object v0, p0, Lm/c0$a;->j:Lm/p;

    .line 12
    sget-object v0, Lm/t;->a:Lm/t;

    iput-object v0, p0, Lm/c0$a;->l:Lm/t;

    .line 13
    iput-object v1, p0, Lm/c0$a;->o:Lm/c;

    .line 14
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    const-string v1, "SocketFactory.getDefault()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lm/c0$a;->p:Ljavax/net/SocketFactory;

    .line 15
    sget-object v0, Lm/c0;->L:Lm/c0$b;

    invoke-virtual {v0}, Lm/c0$b;->a()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lm/c0$a;->s:Ljava/util/List;

    .line 16
    invoke-virtual {v0}, Lm/c0$b;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lm/c0$a;->t:Ljava/util/List;

    .line 17
    sget-object v0, Lm/k0/k/d;->a:Lm/k0/k/d;

    iput-object v0, p0, Lm/c0$a;->u:Ljavax/net/ssl/HostnameVerifier;

    .line 18
    sget-object v0, Lm/h;->c:Lm/h;

    iput-object v0, p0, Lm/c0$a;->v:Lm/h;

    const/16 v0, 0x2710

    .line 19
    iput v0, p0, Lm/c0$a;->y:I

    .line 20
    iput v0, p0, Lm/c0$a;->z:I

    .line 21
    iput v0, p0, Lm/c0$a;->A:I

    const-wide/16 v0, 0x400

    .line 22
    iput-wide v0, p0, Lm/c0$a;->C:J

    return-void
.end method

.method public constructor <init>(Lm/c0;)V
    .locals 2

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lm/c0$a;-><init>()V

    .line 24
    invoke-virtual {p1}, Lm/c0;->p()Lm/r;

    move-result-object v0

    iput-object v0, p0, Lm/c0$a;->a:Lm/r;

    .line 25
    invoke-virtual {p1}, Lm/c0;->m()Lm/l;

    move-result-object v0

    iput-object v0, p0, Lm/c0$a;->b:Lm/l;

    .line 26
    iget-object v0, p0, Lm/c0$a;->c:Ljava/util/List;

    invoke-virtual {p1}, Lm/c0;->w()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/s/k;->w(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 27
    iget-object v0, p0, Lm/c0$a;->d:Ljava/util/List;

    invoke-virtual {p1}, Lm/c0;->y()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/s/k;->w(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 28
    invoke-virtual {p1}, Lm/c0;->r()Lm/u$b;

    move-result-object v0

    iput-object v0, p0, Lm/c0$a;->e:Lm/u$b;

    .line 29
    invoke-virtual {p1}, Lm/c0;->G()Z

    move-result v0

    iput-boolean v0, p0, Lm/c0$a;->f:Z

    .line 30
    invoke-virtual {p1}, Lm/c0;->f()Lm/c;

    move-result-object v0

    iput-object v0, p0, Lm/c0$a;->g:Lm/c;

    .line 31
    invoke-virtual {p1}, Lm/c0;->s()Z

    move-result v0

    iput-boolean v0, p0, Lm/c0$a;->h:Z

    .line 32
    invoke-virtual {p1}, Lm/c0;->t()Z

    move-result v0

    iput-boolean v0, p0, Lm/c0$a;->i:Z

    .line 33
    invoke-virtual {p1}, Lm/c0;->o()Lm/p;

    move-result-object v0

    iput-object v0, p0, Lm/c0$a;->j:Lm/p;

    .line 34
    invoke-virtual {p1}, Lm/c0;->g()Lm/d;

    move-result-object v0

    iput-object v0, p0, Lm/c0$a;->k:Lm/d;

    .line 35
    invoke-virtual {p1}, Lm/c0;->q()Lm/t;

    move-result-object v0

    iput-object v0, p0, Lm/c0$a;->l:Lm/t;

    .line 36
    invoke-virtual {p1}, Lm/c0;->C()Ljava/net/Proxy;

    move-result-object v0

    iput-object v0, p0, Lm/c0$a;->m:Ljava/net/Proxy;

    .line 37
    invoke-virtual {p1}, Lm/c0;->E()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lm/c0$a;->n:Ljava/net/ProxySelector;

    .line 38
    invoke-virtual {p1}, Lm/c0;->D()Lm/c;

    move-result-object v0

    iput-object v0, p0, Lm/c0$a;->o:Lm/c;

    .line 39
    invoke-virtual {p1}, Lm/c0;->H()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lm/c0$a;->p:Ljavax/net/SocketFactory;

    .line 40
    invoke-static {p1}, Lm/c0;->e(Lm/c0;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lm/c0$a;->q:Ljavax/net/ssl/SSLSocketFactory;

    .line 41
    invoke-virtual {p1}, Lm/c0;->N()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    iput-object v0, p0, Lm/c0$a;->r:Ljavax/net/ssl/X509TrustManager;

    .line 42
    invoke-virtual {p1}, Lm/c0;->n()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lm/c0$a;->s:Ljava/util/List;

    .line 43
    invoke-virtual {p1}, Lm/c0;->B()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lm/c0$a;->t:Ljava/util/List;

    .line 44
    invoke-virtual {p1}, Lm/c0;->v()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    iput-object v0, p0, Lm/c0$a;->u:Ljavax/net/ssl/HostnameVerifier;

    .line 45
    invoke-virtual {p1}, Lm/c0;->k()Lm/h;

    move-result-object v0

    iput-object v0, p0, Lm/c0$a;->v:Lm/h;

    .line 46
    invoke-virtual {p1}, Lm/c0;->i()Lm/k0/k/c;

    move-result-object v0

    iput-object v0, p0, Lm/c0$a;->w:Lm/k0/k/c;

    .line 47
    invoke-virtual {p1}, Lm/c0;->h()I

    move-result v0

    iput v0, p0, Lm/c0$a;->x:I

    .line 48
    invoke-virtual {p1}, Lm/c0;->l()I

    move-result v0

    iput v0, p0, Lm/c0$a;->y:I

    .line 49
    invoke-virtual {p1}, Lm/c0;->F()I

    move-result v0

    iput v0, p0, Lm/c0$a;->z:I

    .line 50
    invoke-virtual {p1}, Lm/c0;->L()I

    move-result v0

    iput v0, p0, Lm/c0$a;->A:I

    .line 51
    invoke-virtual {p1}, Lm/c0;->A()I

    move-result v0

    iput v0, p0, Lm/c0$a;->B:I

    .line 52
    invoke-virtual {p1}, Lm/c0;->x()J

    move-result-wide v0

    iput-wide v0, p0, Lm/c0$a;->C:J

    .line 53
    invoke-virtual {p1}, Lm/c0;->u()Lokhttp3/internal/connection/i;

    move-result-object p1

    iput-object p1, p0, Lm/c0$a;->D:Lokhttp3/internal/connection/i;

    return-void
.end method


# virtual methods
.method public final A()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lm/z;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm/c0$a;->c:Ljava/util/List;

    return-object v0
.end method

.method public final B()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lm/c0$a;->C:J

    return-wide v0
.end method

.method public final C()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lm/z;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm/c0$a;->d:Ljava/util/List;

    return-object v0
.end method

.method public final D()I
    .locals 1

    .line 1
    iget v0, p0, Lm/c0$a;->B:I

    return v0
.end method

.method public final E()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lm/d0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm/c0$a;->t:Ljava/util/List;

    return-object v0
.end method

.method public final F()Ljava/net/Proxy;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/c0$a;->m:Ljava/net/Proxy;

    return-object v0
.end method

.method public final G()Lm/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/c0$a;->o:Lm/c;

    return-object v0
.end method

.method public final H()Ljava/net/ProxySelector;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/c0$a;->n:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public final I()I
    .locals 1

    .line 1
    iget v0, p0, Lm/c0$a;->z:I

    return v0
.end method

.method public final J()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm/c0$a;->f:Z

    return v0
.end method

.method public final K()Lokhttp3/internal/connection/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/c0$a;->D:Lokhttp3/internal/connection/i;

    return-object v0
.end method

.method public final L()Ljavax/net/SocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/c0$a;->p:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public final M()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/c0$a;->q:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public final N()I
    .locals 1

    .line 1
    iget v0, p0, Lm/c0$a;->A:I

    return v0
.end method

.method public final O()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/c0$a;->r:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method public final P(JLjava/util/concurrent/TimeUnit;)Lm/c0$a;
    .locals 1

    const-string v0, "unit"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeout"

    .line 1
    invoke-static {v0, p1, p2, p3}, Lm/k0/b;->h(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lm/c0$a;->z:I

    return-object p0
.end method

.method public final Q(Ljavax/net/ssl/SSLSocketFactory;)Lm/c0$a;
    .locals 4

    const-string v0, "sslSocketFactory"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lm/c0$a;->q:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {p1, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-object v1, p0, Lm/c0$a;->D:Lokhttp3/internal/connection/i;

    .line 3
    :cond_0
    iput-object p1, p0, Lm/c0$a;->q:Ljavax/net/ssl/SSLSocketFactory;

    .line 4
    sget-object v0, Lm/k0/i/h;->c:Lm/k0/i/h$a;

    invoke-virtual {v0}, Lm/k0/i/h$a;->g()Lm/k0/i/h;

    move-result-object v2

    invoke-virtual {v2, p1}, Lm/k0/i/h;->q(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    if-eqz v2, :cond_2

    iput-object v2, p0, Lm/c0$a;->r:Ljavax/net/ssl/X509TrustManager;

    .line 5
    invoke-virtual {v0}, Lm/k0/i/h$a;->g()Lm/k0/i/h;

    move-result-object p1

    iget-object v0, p0, Lm/c0$a;->r:Ljavax/net/ssl/X509TrustManager;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lm/k0/i/h;->c(Ljavax/net/ssl/X509TrustManager;)Lm/k0/k/c;

    move-result-object p1

    iput-object p1, p0, Lm/c0$a;->w:Lm/k0/k/c;

    return-object p0

    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    .line 6
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to extract the trust manager on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lm/k0/i/h$a;->g()Lm/k0/i/h;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "sslSocketFactory is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final R(JLjava/util/concurrent/TimeUnit;)Lm/c0$a;
    .locals 1

    const-string v0, "unit"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeout"

    .line 1
    invoke-static {v0, p1, p2, p3}, Lm/k0/b;->h(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lm/c0$a;->A:I

    return-object p0
.end method

.method public final a(Lm/z;)Lm/c0$a;
    .locals 1

    const-string v0, "interceptor"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lm/c0$a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final b(Lm/z;)Lm/c0$a;
    .locals 1

    const-string v0, "interceptor"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lm/c0$a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final c()Lm/c0;
    .locals 1

    .line 1
    new-instance v0, Lm/c0;

    invoke-direct {v0, p0}, Lm/c0;-><init>(Lm/c0$a;)V

    return-object v0
.end method

.method public final d(Lm/d;)Lm/c0$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lm/c0$a;->k:Lm/d;

    return-object p0
.end method

.method public final e(JLjava/util/concurrent/TimeUnit;)Lm/c0$a;
    .locals 1

    const-string v0, "unit"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeout"

    .line 1
    invoke-static {v0, p1, p2, p3}, Lm/k0/b;->h(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lm/c0$a;->x:I

    return-object p0
.end method

.method public final f(JLjava/util/concurrent/TimeUnit;)Lm/c0$a;
    .locals 1

    const-string v0, "unit"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeout"

    .line 1
    invoke-static {v0, p1, p2, p3}, Lm/k0/b;->h(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lm/c0$a;->y:I

    return-object p0
.end method

.method public final g(Ljava/util/List;)Lm/c0$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lm/m;",
            ">;)",
            "Lm/c0$a;"
        }
    .end annotation

    const-string v0, "connectionSpecs"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lm/c0$a;->s:Ljava/util/List;

    invoke-static {p1, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lm/c0$a;->D:Lokhttp3/internal/connection/i;

    .line 3
    :cond_0
    invoke-static {p1}, Lm/k0/b;->P(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lm/c0$a;->s:Ljava/util/List;

    return-object p0
.end method

.method public final h(Lm/r;)Lm/c0$a;
    .locals 1

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lm/c0$a;->a:Lm/r;

    return-object p0
.end method

.method public final i(Lm/u;)Lm/c0$a;
    .locals 1

    const-string v0, "eventListener"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lm/k0/b;->e(Lm/u;)Lm/u$b;

    move-result-object p1

    iput-object p1, p0, Lm/c0$a;->e:Lm/u$b;

    return-object p0
.end method

.method public final j(Z)Lm/c0$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lm/c0$a;->h:Z

    return-object p0
.end method

.method public final k(Z)Lm/c0$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lm/c0$a;->i:Z

    return-object p0
.end method

.method public final l()Lm/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/c0$a;->g:Lm/c;

    return-object v0
.end method

.method public final m()Lm/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/c0$a;->k:Lm/d;

    return-object v0
.end method

.method public final n()I
    .locals 1

    .line 1
    iget v0, p0, Lm/c0$a;->x:I

    return v0
.end method

.method public final o()Lm/k0/k/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/c0$a;->w:Lm/k0/k/c;

    return-object v0
.end method

.method public final p()Lm/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/c0$a;->v:Lm/h;

    return-object v0
.end method

.method public final q()I
    .locals 1

    .line 1
    iget v0, p0, Lm/c0$a;->y:I

    return v0
.end method

.method public final r()Lm/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/c0$a;->b:Lm/l;

    return-object v0
.end method

.method public final s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lm/m;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm/c0$a;->s:Ljava/util/List;

    return-object v0
.end method

.method public final t()Lm/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/c0$a;->j:Lm/p;

    return-object v0
.end method

.method public final u()Lm/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/c0$a;->a:Lm/r;

    return-object v0
.end method

.method public final v()Lm/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/c0$a;->l:Lm/t;

    return-object v0
.end method

.method public final w()Lm/u$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/c0$a;->e:Lm/u$b;

    return-object v0
.end method

.method public final x()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm/c0$a;->h:Z

    return v0
.end method

.method public final y()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm/c0$a;->i:Z

    return v0
.end method

.method public final z()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/c0$a;->u:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method
