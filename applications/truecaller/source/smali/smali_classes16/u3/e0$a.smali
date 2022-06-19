.class public final Lu3/e0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu3/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:J

.field public D:Lu3/p0/g/k;

.field public a:Lu3/r;

.field public b:Lu3/m;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu3/b0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu3/b0;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lu3/u$b;

.field public f:Z

.field public g:Lu3/c;

.field public h:Z

.field public i:Z

.field public j:Lu3/q;

.field public k:Lu3/d;

.field public l:Lu3/t;

.field public m:Ljava/net/Proxy;

.field public n:Ljava/net/ProxySelector;

.field public o:Lu3/c;

.field public p:Ljavax/net/SocketFactory;

.field public q:Ljavax/net/ssl/SSLSocketFactory;

.field public r:Ljavax/net/ssl/X509TrustManager;

.field public s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu3/n;",
            ">;"
        }
    .end annotation
.end field

.field public t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lu3/f0;",
            ">;"
        }
    .end annotation
.end field

.field public u:Ljavax/net/ssl/HostnameVerifier;

.field public v:Lu3/h;

.field public w:Lu3/p0/n/c;

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lu3/r;

    invoke-direct {v0}, Lu3/r;-><init>()V

    iput-object v0, p0, Lu3/e0$a;->a:Lu3/r;

    .line 3
    new-instance v0, Lu3/m;

    invoke-direct {v0}, Lu3/m;-><init>()V

    iput-object v0, p0, Lu3/e0$a;->b:Lu3/m;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu3/e0$a;->c:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu3/e0$a;->d:Ljava/util/List;

    .line 6
    sget-object v0, Lu3/u;->a:Lu3/u;

    const-string v1, "$this$asFactory"

    .line 7
    invoke-static {v0, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v1, Lu3/p0/a;

    invoke-direct {v1, v0}, Lu3/p0/a;-><init>(Lu3/u;)V

    .line 9
    iput-object v1, p0, Lu3/e0$a;->e:Lu3/u$b;

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lu3/e0$a;->f:Z

    .line 11
    sget-object v1, Lu3/c;->a:Lu3/c;

    iput-object v1, p0, Lu3/e0$a;->g:Lu3/c;

    .line 12
    iput-boolean v0, p0, Lu3/e0$a;->h:Z

    .line 13
    iput-boolean v0, p0, Lu3/e0$a;->i:Z

    .line 14
    sget-object v0, Lu3/q;->a:Lu3/q;

    iput-object v0, p0, Lu3/e0$a;->j:Lu3/q;

    .line 15
    sget-object v0, Lu3/t;->a:Lu3/t;

    iput-object v0, p0, Lu3/e0$a;->l:Lu3/t;

    .line 16
    iput-object v1, p0, Lu3/e0$a;->o:Lu3/c;

    .line 17
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    const-string v1, "SocketFactory.getDefault()"

    invoke-static {v0, v1}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lu3/e0$a;->p:Ljavax/net/SocketFactory;

    .line 18
    sget-object v0, Lu3/e0;->K:Lu3/e0$b;

    .line 19
    sget-object v0, Lu3/e0;->J:Ljava/util/List;

    .line 20
    iput-object v0, p0, Lu3/e0$a;->s:Ljava/util/List;

    .line 21
    sget-object v0, Lu3/e0;->E:Ljava/util/List;

    .line 22
    iput-object v0, p0, Lu3/e0$a;->t:Ljava/util/List;

    .line 23
    sget-object v0, Lu3/p0/n/d;->a:Lu3/p0/n/d;

    iput-object v0, p0, Lu3/e0$a;->u:Ljavax/net/ssl/HostnameVerifier;

    .line 24
    sget-object v0, Lu3/h;->c:Lu3/h;

    iput-object v0, p0, Lu3/e0$a;->v:Lu3/h;

    const/16 v0, 0x2710

    .line 25
    iput v0, p0, Lu3/e0$a;->y:I

    .line 26
    iput v0, p0, Lu3/e0$a;->z:I

    .line 27
    iput v0, p0, Lu3/e0$a;->A:I

    const-wide/16 v0, 0x400

    .line 28
    iput-wide v0, p0, Lu3/e0$a;->C:J

    return-void
.end method


# virtual methods
.method public final a(Lu3/b0;)Lu3/e0$a;
    .locals 1

    const-string v0, "interceptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lu3/e0$a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final b(JLjava/util/concurrent/TimeUnit;)Lu3/e0$a;
    .locals 1

    const-string v0, "unit"

    invoke-static {p3, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeout"

    .line 1
    invoke-static {v0, p1, p2, p3}, Lu3/p0/c;->b(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lu3/e0$a;->x:I

    return-object p0
.end method

.method public final c(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lu3/e0$a;
    .locals 2

    const-string v0, "sslSocketFactory"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trustManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lu3/e0$a;->q:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {p1, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lu3/e0$a;->r:Ljavax/net/ssl/X509TrustManager;

    invoke-static {p2, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lu3/e0$a;->D:Lu3/p0/g/k;

    .line 3
    :cond_1
    iput-object p1, p0, Lu3/e0$a;->q:Ljavax/net/ssl/SSLSocketFactory;

    .line 4
    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object p1, Lu3/p0/l/h;->c:Lu3/p0/l/h$a;

    .line 6
    sget-object p1, Lu3/p0/l/h;->a:Lu3/p0/l/h;

    .line 7
    invoke-virtual {p1, p2}, Lu3/p0/l/h;->b(Ljavax/net/ssl/X509TrustManager;)Lu3/p0/n/c;

    move-result-object p1

    .line 8
    iput-object p1, p0, Lu3/e0$a;->w:Lu3/p0/n/c;

    .line 9
    iput-object p2, p0, Lu3/e0$a;->r:Ljavax/net/ssl/X509TrustManager;

    return-object p0
.end method
