.class public Lm/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lm/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/c0$a;,
        Lm/c0$b;
    }
.end annotation


# static fields
.field private static final J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lm/d0;",
            ">;"
        }
    .end annotation
.end field

.field private static final K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lm/m;",
            ">;"
        }
    .end annotation
.end field

.field public static final L:Lm/c0$b;


# instance fields
.field private final A:Lm/h;

.field private final B:Lm/k0/k/c;

.field private final C:I

.field private final D:I

.field private final E:I

.field private final F:I

.field private final G:I

.field private final H:J

.field private final I:Lokhttp3/internal/connection/i;

.field private final f:Lm/r;

.field private final g:Lm/l;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lm/z;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lm/z;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lm/u$b;

.field private final k:Z

.field private final l:Lm/c;

.field private final m:Z

.field private final n:Z

.field private final o:Lm/p;

.field private final p:Lm/d;

.field private final q:Lm/t;

.field private final r:Ljava/net/Proxy;

.field private final s:Ljava/net/ProxySelector;

.field private final t:Lm/c;

.field private final u:Ljavax/net/SocketFactory;

.field private final v:Ljavax/net/ssl/SSLSocketFactory;

.field private final w:Ljavax/net/ssl/X509TrustManager;

.field private final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lm/m;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lm/d0;",
            ">;"
        }
    .end annotation
.end field

.field private final z:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lm/c0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lm/c0$b;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lm/c0;->L:Lm/c0$b;

    const/4 v0, 0x2

    new-array v1, v0, [Lm/d0;

    .line 1
    sget-object v2, Lm/d0;->HTTP_2:Lm/d0;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lm/d0;->HTTP_1_1:Lm/d0;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lm/k0/b;->t([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lm/c0;->J:Ljava/util/List;

    new-array v0, v0, [Lm/m;

    .line 2
    sget-object v1, Lm/m;->g:Lm/m;

    aput-object v1, v0, v3

    sget-object v1, Lm/m;->h:Lm/m;

    aput-object v1, v0, v4

    .line 3
    invoke-static {v0}, Lm/k0/b;->t([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lm/c0;->K:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    new-instance v0, Lm/c0$a;

    invoke-direct {v0}, Lm/c0$a;-><init>()V

    invoke-direct {p0, v0}, Lm/c0;-><init>(Lm/c0$a;)V

    return-void
.end method

.method public constructor <init>(Lm/c0$a;)V
    .locals 3

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lm/c0$a;->u()Lm/r;

    move-result-object v0

    iput-object v0, p0, Lm/c0;->f:Lm/r;

    .line 3
    invoke-virtual {p1}, Lm/c0$a;->r()Lm/l;

    move-result-object v0

    iput-object v0, p0, Lm/c0;->g:Lm/l;

    .line 4
    invoke-virtual {p1}, Lm/c0$a;->A()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lm/k0/b;->P(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lm/c0;->h:Ljava/util/List;

    .line 5
    invoke-virtual {p1}, Lm/c0$a;->C()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lm/k0/b;->P(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lm/c0;->i:Ljava/util/List;

    .line 6
    invoke-virtual {p1}, Lm/c0$a;->w()Lm/u$b;

    move-result-object v0

    iput-object v0, p0, Lm/c0;->j:Lm/u$b;

    .line 7
    invoke-virtual {p1}, Lm/c0$a;->J()Z

    move-result v0

    iput-boolean v0, p0, Lm/c0;->k:Z

    .line 8
    invoke-virtual {p1}, Lm/c0$a;->l()Lm/c;

    move-result-object v0

    iput-object v0, p0, Lm/c0;->l:Lm/c;

    .line 9
    invoke-virtual {p1}, Lm/c0$a;->x()Z

    move-result v0

    iput-boolean v0, p0, Lm/c0;->m:Z

    .line 10
    invoke-virtual {p1}, Lm/c0$a;->y()Z

    move-result v0

    iput-boolean v0, p0, Lm/c0;->n:Z

    .line 11
    invoke-virtual {p1}, Lm/c0$a;->t()Lm/p;

    move-result-object v0

    iput-object v0, p0, Lm/c0;->o:Lm/p;

    .line 12
    invoke-virtual {p1}, Lm/c0$a;->m()Lm/d;

    move-result-object v0

    iput-object v0, p0, Lm/c0;->p:Lm/d;

    .line 13
    invoke-virtual {p1}, Lm/c0$a;->v()Lm/t;

    move-result-object v0

    iput-object v0, p0, Lm/c0;->q:Lm/t;

    .line 14
    invoke-virtual {p1}, Lm/c0$a;->F()Ljava/net/Proxy;

    move-result-object v0

    iput-object v0, p0, Lm/c0;->r:Ljava/net/Proxy;

    .line 15
    invoke-virtual {p1}, Lm/c0$a;->F()Ljava/net/Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lm/k0/j/a;->a:Lm/k0/j/a;

    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {p1}, Lm/c0$a;->H()Ljava/net/ProxySelector;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lm/k0/j/a;->a:Lm/k0/j/a;

    .line 17
    :goto_1
    iput-object v0, p0, Lm/c0;->s:Ljava/net/ProxySelector;

    .line 18
    invoke-virtual {p1}, Lm/c0$a;->G()Lm/c;

    move-result-object v0

    iput-object v0, p0, Lm/c0;->t:Lm/c;

    .line 19
    invoke-virtual {p1}, Lm/c0$a;->L()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lm/c0;->u:Ljavax/net/SocketFactory;

    .line 20
    invoke-virtual {p1}, Lm/c0$a;->s()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lm/c0;->x:Ljava/util/List;

    .line 21
    invoke-virtual {p1}, Lm/c0$a;->E()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lm/c0;->y:Ljava/util/List;

    .line 22
    invoke-virtual {p1}, Lm/c0$a;->z()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    iput-object v1, p0, Lm/c0;->z:Ljavax/net/ssl/HostnameVerifier;

    .line 23
    invoke-virtual {p1}, Lm/c0$a;->n()I

    move-result v1

    iput v1, p0, Lm/c0;->C:I

    .line 24
    invoke-virtual {p1}, Lm/c0$a;->q()I

    move-result v1

    iput v1, p0, Lm/c0;->D:I

    .line 25
    invoke-virtual {p1}, Lm/c0$a;->I()I

    move-result v1

    iput v1, p0, Lm/c0;->E:I

    .line 26
    invoke-virtual {p1}, Lm/c0$a;->N()I

    move-result v1

    iput v1, p0, Lm/c0;->F:I

    .line 27
    invoke-virtual {p1}, Lm/c0$a;->D()I

    move-result v1

    iput v1, p0, Lm/c0;->G:I

    .line 28
    invoke-virtual {p1}, Lm/c0$a;->B()J

    move-result-wide v1

    iput-wide v1, p0, Lm/c0;->H:J

    .line 29
    invoke-virtual {p1}, Lm/c0$a;->K()Lokhttp3/internal/connection/i;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Lokhttp3/internal/connection/i;

    invoke-direct {v1}, Lokhttp3/internal/connection/i;-><init>()V

    :goto_2
    iput-object v1, p0, Lm/c0;->I:Lokhttp3/internal/connection/i;

    .line 30
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    .line 31
    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm/m;

    .line 32
    invoke-virtual {v1}, Lm/m;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    :cond_6
    :goto_3
    const/4 v0, 0x0

    if-eqz v2, :cond_7

    .line 33
    iput-object v0, p0, Lm/c0;->v:Ljavax/net/ssl/SSLSocketFactory;

    .line 34
    iput-object v0, p0, Lm/c0;->B:Lm/k0/k/c;

    .line 35
    iput-object v0, p0, Lm/c0;->w:Ljavax/net/ssl/X509TrustManager;

    .line 36
    sget-object p1, Lm/h;->c:Lm/h;

    iput-object p1, p0, Lm/c0;->A:Lm/h;

    goto :goto_4

    .line 37
    :cond_7
    invoke-virtual {p1}, Lm/c0$a;->M()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 38
    invoke-virtual {p1}, Lm/c0$a;->M()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lm/c0;->v:Ljavax/net/ssl/SSLSocketFactory;

    .line 39
    invoke-virtual {p1}, Lm/c0$a;->o()Lm/k0/k/c;

    move-result-object v1

    if-eqz v1, :cond_a

    iput-object v1, p0, Lm/c0;->B:Lm/k0/k/c;

    .line 40
    invoke-virtual {p1}, Lm/c0$a;->O()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    if-eqz v2, :cond_9

    iput-object v2, p0, Lm/c0;->w:Ljavax/net/ssl/X509TrustManager;

    .line 41
    invoke-virtual {p1}, Lm/c0$a;->p()Lm/h;

    move-result-object p1

    if-eqz v1, :cond_8

    .line 42
    invoke-virtual {p1, v1}, Lm/h;->e(Lm/k0/k/c;)Lm/h;

    move-result-object p1

    iput-object p1, p0, Lm/c0;->A:Lm/h;

    goto :goto_4

    :cond_8
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0

    .line 43
    :cond_9
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0

    .line 44
    :cond_a
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0

    .line 45
    :cond_b
    sget-object v1, Lm/k0/i/h;->c:Lm/k0/i/h$a;

    invoke-virtual {v1}, Lm/k0/i/h$a;->g()Lm/k0/i/h;

    move-result-object v2

    invoke-virtual {v2}, Lm/k0/i/h;->p()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    iput-object v2, p0, Lm/c0;->w:Ljavax/net/ssl/X509TrustManager;

    .line 46
    invoke-virtual {v1}, Lm/k0/i/h$a;->g()Lm/k0/i/h;

    move-result-object v1

    if-eqz v2, :cond_e

    invoke-virtual {v1, v2}, Lm/k0/i/h;->o(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lm/c0;->v:Ljavax/net/ssl/SSLSocketFactory;

    .line 47
    sget-object v1, Lm/k0/k/c;->a:Lm/k0/k/c$a;

    if-eqz v2, :cond_d

    invoke-virtual {v1, v2}, Lm/k0/k/c$a;->a(Ljavax/net/ssl/X509TrustManager;)Lm/k0/k/c;

    move-result-object v1

    iput-object v1, p0, Lm/c0;->B:Lm/k0/k/c;

    .line 48
    invoke-virtual {p1}, Lm/c0$a;->p()Lm/h;

    move-result-object p1

    if-eqz v1, :cond_c

    .line 49
    invoke-virtual {p1, v1}, Lm/h;->e(Lm/k0/k/c;)Lm/h;

    move-result-object p1

    iput-object p1, p0, Lm/c0;->A:Lm/h;

    .line 50
    :goto_4
    invoke-direct {p0}, Lm/c0;->J()V

    return-void

    .line 51
    :cond_c
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0

    .line 52
    :cond_d
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0

    .line 53
    :cond_e
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0
.end method

.method private final J()V
    .locals 4

    .line 1
    iget-object v0, p0, Lm/c0;->h:Ljava/util/List;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>"

    if-eqz v0, :cond_11

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    if-eqz v0, :cond_10

    .line 2
    iget-object v0, p0, Lm/c0;->i:Ljava/util/List;

    if-eqz v0, :cond_f

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_e

    .line 3
    iget-object v0, p0, Lm/c0;->x:Ljava/util/List;

    .line 4
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm/m;

    .line 6
    invoke-virtual {v1}, Lm/m;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_a

    .line 7
    iget-object v0, p0, Lm/c0;->v:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    const-string v1, "Check failed."

    if-eqz v0, :cond_9

    .line 8
    iget-object v0, p0, Lm/c0;->B:Lm/k0/k/c;

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_8

    .line 9
    iget-object v0, p0, Lm/c0;->w:Ljavax/net/ssl/X509TrustManager;

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_7

    .line 10
    iget-object v0, p0, Lm/c0;->A:Lm/h;

    sget-object v2, Lm/h;->c:Lm/h;

    invoke-static {v0, v2}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_a
    iget-object v0, p0, Lm/c0;->v:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_d

    .line 15
    iget-object v0, p0, Lm/c0;->B:Lm/k0/k/c;

    if-eqz v0, :cond_c

    .line 16
    iget-object v0, p0, Lm/c0;->w:Ljavax/net/ssl/X509TrustManager;

    if-eqz v0, :cond_b

    :goto_4
    return-void

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "x509TrustManager == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "certificateChainCleaner == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "sslSocketFactory == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null network interceptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm/c0;->i:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null interceptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm/c0;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final synthetic b()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lm/c0;->K:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic d()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lm/c0;->J:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic e(Lm/c0;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/c0;->v:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method


# virtual methods
.method public final A()I
    .locals 1

    .line 1
    iget v0, p0, Lm/c0;->G:I

    return v0
.end method

.method public final B()Ljava/util/List;
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
    iget-object v0, p0, Lm/c0;->y:Ljava/util/List;

    return-object v0
.end method

.method public final C()Ljava/net/Proxy;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/c0;->r:Ljava/net/Proxy;

    return-object v0
.end method

.method public final D()Lm/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/c0;->t:Lm/c;

    return-object v0
.end method

.method public final E()Ljava/net/ProxySelector;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/c0;->s:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public final F()I
    .locals 1

    .line 1
    iget v0, p0, Lm/c0;->E:I

    return v0
.end method

.method public final G()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm/c0;->k:Z

    return v0
.end method

.method public final H()Ljavax/net/SocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/c0;->u:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public final I()Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    .line 1
    iget-object v0, p0, Lm/c0;->v:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CLEARTEXT-only client"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final L()I
    .locals 1

    .line 1
    iget v0, p0, Lm/c0;->F:I

    return v0
.end method

.method public final N()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/c0;->w:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method public a(Lm/e0;)Lm/f;
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lokhttp3/internal/connection/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lokhttp3/internal/connection/e;-><init>(Lm/c0;Lm/e0;Z)V

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lm/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/c0;->l:Lm/c;

    return-object v0
.end method

.method public final g()Lm/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/c0;->p:Lm/d;

    return-object v0
.end method

.method public final h()I
    .locals 1

    .line 1
    iget v0, p0, Lm/c0;->C:I

    return v0
.end method

.method public final i()Lm/k0/k/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/c0;->B:Lm/k0/k/c;

    return-object v0
.end method

.method public final k()Lm/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/c0;->A:Lm/h;

    return-object v0
.end method

.method public final l()I
    .locals 1

    .line 1
    iget v0, p0, Lm/c0;->D:I

    return v0
.end method

.method public final m()Lm/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/c0;->g:Lm/l;

    return-object v0
.end method

.method public final n()Ljava/util/List;
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
    iget-object v0, p0, Lm/c0;->x:Ljava/util/List;

    return-object v0
.end method

.method public final o()Lm/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/c0;->o:Lm/p;

    return-object v0
.end method

.method public final p()Lm/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/c0;->f:Lm/r;

    return-object v0
.end method

.method public final q()Lm/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/c0;->q:Lm/t;

    return-object v0
.end method

.method public final r()Lm/u$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/c0;->j:Lm/u$b;

    return-object v0
.end method

.method public final s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm/c0;->m:Z

    return v0
.end method

.method public final t()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm/c0;->n:Z

    return v0
.end method

.method public final u()Lokhttp3/internal/connection/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/c0;->I:Lokhttp3/internal/connection/i;

    return-object v0
.end method

.method public final v()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/c0;->z:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public final w()Ljava/util/List;
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
    iget-object v0, p0, Lm/c0;->h:Ljava/util/List;

    return-object v0
.end method

.method public final x()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lm/c0;->H:J

    return-wide v0
.end method

.method public final y()Ljava/util/List;
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
    iget-object v0, p0, Lm/c0;->i:Ljava/util/List;

    return-object v0
.end method

.method public z()Lm/c0$a;
    .locals 1

    .line 1
    new-instance v0, Lm/c0$a;

    invoke-direct {v0, p0}, Lm/c0$a;-><init>(Lm/c0;)V

    return-object v0
.end method
