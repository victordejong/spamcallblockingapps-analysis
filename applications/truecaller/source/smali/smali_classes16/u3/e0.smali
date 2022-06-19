.class public Lu3/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lu3/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu3/e0$a;,
        Lu3/e0$b;
    }
.end annotation


# static fields
.field public static final E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu3/f0;",
            ">;"
        }
    .end annotation
.end field

.field public static final J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu3/n;",
            ">;"
        }
    .end annotation
.end field

.field public static final K:Lu3/e0$b;


# instance fields
.field public final A:I

.field public final B:I

.field public final C:J

.field public final D:Lu3/p0/g/k;

.field public final a:Lu3/r;

.field public final b:Lu3/m;

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

.field public final e:Lu3/u$b;

.field public final f:Z

.field public final g:Lu3/c;

.field public final h:Z

.field public final i:Z

.field public final j:Lu3/q;

.field public final k:Lu3/d;

.field public final l:Lu3/t;

.field public final m:Ljava/net/Proxy;

.field public final n:Ljava/net/ProxySelector;

.field public final o:Lu3/c;

.field public final p:Ljavax/net/SocketFactory;

.field public final q:Ljavax/net/ssl/SSLSocketFactory;

.field public final r:Ljavax/net/ssl/X509TrustManager;

.field public final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu3/n;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu3/f0;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Ljavax/net/ssl/HostnameVerifier;

.field public final v:Lu3/h;

.field public final w:Lu3/p0/n/c;

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lu3/e0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu3/e0$b;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lu3/e0;->K:Lu3/e0$b;

    const/4 v0, 0x2

    new-array v1, v0, [Lu3/f0;

    .line 1
    sget-object v2, Lu3/f0;->e:Lu3/f0;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lu3/f0;->c:Lu3/f0;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lu3/p0/c;->l([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lu3/e0;->E:Ljava/util/List;

    new-array v0, v0, [Lu3/n;

    .line 2
    sget-object v1, Lu3/n;->g:Lu3/n;

    aput-object v1, v0, v3

    sget-object v1, Lu3/n;->h:Lu3/n;

    aput-object v1, v0, v4

    .line 3
    invoke-static {v0}, Lu3/p0/c;->l([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lu3/e0;->J:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 108
    new-instance v0, Lu3/e0$a;

    invoke-direct {v0}, Lu3/e0$a;-><init>()V

    invoke-direct {p0, v0}, Lu3/e0;-><init>(Lu3/e0$a;)V

    return-void
.end method

.method public constructor <init>(Lu3/e0$a;)V
    .locals 5

    const-string v0, "builder"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lu3/e0$a;->a:Lu3/r;

    .line 3
    iput-object v0, p0, Lu3/e0;->a:Lu3/r;

    .line 4
    iget-object v0, p1, Lu3/e0$a;->b:Lu3/m;

    .line 5
    iput-object v0, p0, Lu3/e0;->b:Lu3/m;

    .line 6
    iget-object v0, p1, Lu3/e0$a;->c:Ljava/util/List;

    .line 7
    invoke-static {v0}, Lu3/p0/c;->x(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lu3/e0;->c:Ljava/util/List;

    .line 8
    iget-object v0, p1, Lu3/e0$a;->d:Ljava/util/List;

    .line 9
    invoke-static {v0}, Lu3/p0/c;->x(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lu3/e0;->d:Ljava/util/List;

    .line 10
    iget-object v0, p1, Lu3/e0$a;->e:Lu3/u$b;

    .line 11
    iput-object v0, p0, Lu3/e0;->e:Lu3/u$b;

    .line 12
    iget-boolean v0, p1, Lu3/e0$a;->f:Z

    .line 13
    iput-boolean v0, p0, Lu3/e0;->f:Z

    .line 14
    iget-object v0, p1, Lu3/e0$a;->g:Lu3/c;

    .line 15
    iput-object v0, p0, Lu3/e0;->g:Lu3/c;

    .line 16
    iget-boolean v0, p1, Lu3/e0$a;->h:Z

    .line 17
    iput-boolean v0, p0, Lu3/e0;->h:Z

    .line 18
    iget-boolean v0, p1, Lu3/e0$a;->i:Z

    .line 19
    iput-boolean v0, p0, Lu3/e0;->i:Z

    .line 20
    iget-object v0, p1, Lu3/e0$a;->j:Lu3/q;

    .line 21
    iput-object v0, p0, Lu3/e0;->j:Lu3/q;

    .line 22
    iget-object v0, p1, Lu3/e0$a;->k:Lu3/d;

    .line 23
    iput-object v0, p0, Lu3/e0;->k:Lu3/d;

    .line 24
    iget-object v0, p1, Lu3/e0$a;->l:Lu3/t;

    .line 25
    iput-object v0, p0, Lu3/e0;->l:Lu3/t;

    .line 26
    iget-object v0, p1, Lu3/e0$a;->m:Ljava/net/Proxy;

    .line 27
    iput-object v0, p0, Lu3/e0;->m:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    .line 28
    sget-object v0, Lu3/p0/m/a;->a:Lu3/p0/m/a;

    goto :goto_1

    .line 29
    :cond_0
    iget-object v0, p1, Lu3/e0$a;->n:Ljava/net/ProxySelector;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 30
    :cond_1
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lu3/p0/m/a;->a:Lu3/p0/m/a;

    .line 31
    :goto_1
    iput-object v0, p0, Lu3/e0;->n:Ljava/net/ProxySelector;

    .line 32
    iget-object v0, p1, Lu3/e0$a;->o:Lu3/c;

    .line 33
    iput-object v0, p0, Lu3/e0;->o:Lu3/c;

    .line 34
    iget-object v0, p1, Lu3/e0$a;->p:Ljavax/net/SocketFactory;

    .line 35
    iput-object v0, p0, Lu3/e0;->p:Ljavax/net/SocketFactory;

    .line 36
    iget-object v0, p1, Lu3/e0$a;->s:Ljava/util/List;

    .line 37
    iput-object v0, p0, Lu3/e0;->s:Ljava/util/List;

    .line 38
    iget-object v1, p1, Lu3/e0$a;->t:Ljava/util/List;

    .line 39
    iput-object v1, p0, Lu3/e0;->t:Ljava/util/List;

    .line 40
    iget-object v1, p1, Lu3/e0$a;->u:Ljavax/net/ssl/HostnameVerifier;

    .line 41
    iput-object v1, p0, Lu3/e0;->u:Ljavax/net/ssl/HostnameVerifier;

    .line 42
    iget v1, p1, Lu3/e0$a;->x:I

    .line 43
    iput v1, p0, Lu3/e0;->x:I

    .line 44
    iget v1, p1, Lu3/e0$a;->y:I

    .line 45
    iput v1, p0, Lu3/e0;->y:I

    .line 46
    iget v1, p1, Lu3/e0$a;->z:I

    .line 47
    iput v1, p0, Lu3/e0;->z:I

    .line 48
    iget v1, p1, Lu3/e0$a;->A:I

    .line 49
    iput v1, p0, Lu3/e0;->A:I

    .line 50
    iget v1, p1, Lu3/e0$a;->B:I

    .line 51
    iput v1, p0, Lu3/e0;->B:I

    .line 52
    iget-wide v1, p1, Lu3/e0$a;->C:J

    .line 53
    iput-wide v1, p0, Lu3/e0;->C:J

    .line 54
    iget-object v1, p1, Lu3/e0$a;->D:Lu3/p0/g/k;

    if-eqz v1, :cond_3

    goto :goto_2

    .line 55
    :cond_3
    new-instance v1, Lu3/p0/g/k;

    invoke-direct {v1}, Lu3/p0/g/k;-><init>()V

    :goto_2
    iput-object v1, p0, Lu3/e0;->D:Lu3/p0/g/k;

    .line 56
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    .line 57
    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu3/n;

    .line 58
    iget-boolean v1, v1, Lu3/n;->a:Z

    if-eqz v1, :cond_5

    move v0, v2

    goto :goto_4

    :cond_6
    :goto_3
    move v0, v3

    :goto_4
    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 59
    iput-object v1, p0, Lu3/e0;->q:Ljavax/net/ssl/SSLSocketFactory;

    .line 60
    iput-object v1, p0, Lu3/e0;->w:Lu3/p0/n/c;

    .line 61
    iput-object v1, p0, Lu3/e0;->r:Ljavax/net/ssl/X509TrustManager;

    .line 62
    sget-object p1, Lu3/h;->c:Lu3/h;

    iput-object p1, p0, Lu3/e0;->v:Lu3/h;

    goto :goto_5

    .line 63
    :cond_7
    iget-object v0, p1, Lu3/e0$a;->q:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_a

    .line 64
    iput-object v0, p0, Lu3/e0;->q:Ljavax/net/ssl/SSLSocketFactory;

    .line 65
    iget-object v0, p1, Lu3/e0$a;->w:Lu3/p0/n/c;

    if-eqz v0, :cond_9

    .line 66
    iput-object v0, p0, Lu3/e0;->w:Lu3/p0/n/c;

    .line 67
    iget-object v4, p1, Lu3/e0$a;->r:Ljavax/net/ssl/X509TrustManager;

    if-eqz v4, :cond_8

    .line 68
    iput-object v4, p0, Lu3/e0;->r:Ljavax/net/ssl/X509TrustManager;

    .line 69
    iget-object p1, p1, Lu3/e0$a;->v:Lu3/h;

    .line 70
    invoke-virtual {p1, v0}, Lu3/h;->b(Lu3/p0/n/c;)Lu3/h;

    move-result-object p1

    iput-object p1, p0, Lu3/e0;->v:Lu3/h;

    goto :goto_5

    .line 71
    :cond_8
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v1

    .line 72
    :cond_9
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v1

    .line 73
    :cond_a
    sget-object v0, Lu3/p0/l/h;->c:Lu3/p0/l/h$a;

    .line 74
    sget-object v0, Lu3/p0/l/h;->a:Lu3/p0/l/h;

    .line 75
    invoke-virtual {v0}, Lu3/p0/l/h;->n()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    iput-object v0, p0, Lu3/e0;->r:Ljavax/net/ssl/X509TrustManager;

    .line 76
    sget-object v4, Lu3/p0/l/h;->a:Lu3/p0/l/h;

    if-eqz v0, :cond_1e

    .line 77
    invoke-virtual {v4, v0}, Lu3/p0/l/h;->m(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    iput-object v4, p0, Lu3/e0;->q:Ljavax/net/ssl/SSLSocketFactory;

    const-string v4, "trustManager"

    .line 78
    invoke-static {v0, v4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    sget-object v4, Lu3/p0/l/h;->a:Lu3/p0/l/h;

    .line 80
    invoke-virtual {v4, v0}, Lu3/p0/l/h;->b(Ljavax/net/ssl/X509TrustManager;)Lu3/p0/n/c;

    move-result-object v0

    .line 81
    iput-object v0, p0, Lu3/e0;->w:Lu3/p0/n/c;

    .line 82
    iget-object p1, p1, Lu3/e0$a;->v:Lu3/h;

    if-eqz v0, :cond_1d

    .line 83
    invoke-virtual {p1, v0}, Lu3/h;->b(Lu3/p0/n/c;)Lu3/h;

    move-result-object p1

    iput-object p1, p0, Lu3/e0;->v:Lu3/h;

    .line 84
    :goto_5
    iget-object p1, p0, Lu3/e0;->c:Ljava/util/List;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>"

    if-eqz p1, :cond_1c

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v3

    if-eqz p1, :cond_1b

    .line 85
    iget-object p1, p0, Lu3/e0;->d:Ljava/util/List;

    if-eqz p1, :cond_1a

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v3

    if-eqz p1, :cond_19

    .line 86
    iget-object p1, p0, Lu3/e0;->s:Ljava/util/List;

    .line 87
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_6

    .line 88
    :cond_b
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu3/n;

    .line 89
    iget-boolean v0, v0, Lu3/n;->a:Z

    if-eqz v0, :cond_c

    move p1, v2

    goto :goto_7

    :cond_d
    :goto_6
    move p1, v3

    :goto_7
    if-eqz p1, :cond_15

    .line 90
    iget-object p1, p0, Lu3/e0;->q:Ljavax/net/ssl/SSLSocketFactory;

    if-nez p1, :cond_e

    move p1, v3

    goto :goto_8

    :cond_e
    move p1, v2

    :goto_8
    const-string v0, "Check failed."

    if-eqz p1, :cond_14

    .line 91
    iget-object p1, p0, Lu3/e0;->w:Lu3/p0/n/c;

    if-nez p1, :cond_f

    move p1, v3

    goto :goto_9

    :cond_f
    move p1, v2

    :goto_9
    if-eqz p1, :cond_13

    .line 92
    iget-object p1, p0, Lu3/e0;->r:Ljavax/net/ssl/X509TrustManager;

    if-nez p1, :cond_10

    move v2, v3

    :cond_10
    if-eqz v2, :cond_12

    .line 93
    iget-object p1, p0, Lu3/e0;->v:Lu3/h;

    sget-object v1, Lu3/h;->c:Lu3/h;

    invoke-static {p1, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_a

    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 94
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_15
    iget-object p1, p0, Lu3/e0;->q:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz p1, :cond_18

    .line 98
    iget-object p1, p0, Lu3/e0;->w:Lu3/p0/n/c;

    if-eqz p1, :cond_17

    .line 99
    iget-object p1, p0, Lu3/e0;->r:Ljavax/net/ssl/X509TrustManager;

    if-eqz p1, :cond_16

    :goto_a
    return-void

    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "x509TrustManager == null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "certificateChainCleaner == null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "sslSocketFactory == null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    const-string p1, "Null network interceptor: "

    .line 102
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lu3/e0;->d:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    new-instance p1, Ls1/p;

    invoke-direct {p1, v0}, Ls1/p;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    const-string p1, "Null interceptor: "

    .line 104
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lu3/e0;->c:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 105
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    new-instance p1, Ls1/p;

    invoke-direct {p1, v0}, Ls1/p;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_1d
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v1

    .line 107
    :cond_1e
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v1
.end method


# virtual methods
.method public a(Lu3/g0;)Lu3/f;
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lu3/p0/g/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lu3/p0/g/e;-><init>(Lu3/e0;Lu3/g0;Z)V

    return-object v0
.end method

.method public b()Lu3/e0$a;
    .locals 3

    .line 1
    new-instance v0, Lu3/e0$a;

    const-string v1, "okHttpClient"

    .line 2
    invoke-static {p0, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {v0}, Lu3/e0$a;-><init>()V

    .line 4
    iget-object v1, p0, Lu3/e0;->a:Lu3/r;

    .line 5
    iput-object v1, v0, Lu3/e0$a;->a:Lu3/r;

    .line 6
    iget-object v1, p0, Lu3/e0;->b:Lu3/m;

    .line 7
    iput-object v1, v0, Lu3/e0$a;->b:Lu3/m;

    .line 8
    iget-object v1, v0, Lu3/e0$a;->c:Ljava/util/List;

    .line 9
    iget-object v2, p0, Lu3/e0;->c:Ljava/util/List;

    .line 10
    invoke-static {v1, v2}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 11
    iget-object v1, v0, Lu3/e0$a;->d:Ljava/util/List;

    .line 12
    iget-object v2, p0, Lu3/e0;->d:Ljava/util/List;

    .line 13
    invoke-static {v1, v2}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 14
    iget-object v1, p0, Lu3/e0;->e:Lu3/u$b;

    .line 15
    iput-object v1, v0, Lu3/e0$a;->e:Lu3/u$b;

    .line 16
    iget-boolean v1, p0, Lu3/e0;->f:Z

    .line 17
    iput-boolean v1, v0, Lu3/e0$a;->f:Z

    .line 18
    iget-object v1, p0, Lu3/e0;->g:Lu3/c;

    .line 19
    iput-object v1, v0, Lu3/e0$a;->g:Lu3/c;

    .line 20
    iget-boolean v1, p0, Lu3/e0;->h:Z

    .line 21
    iput-boolean v1, v0, Lu3/e0$a;->h:Z

    .line 22
    iget-boolean v1, p0, Lu3/e0;->i:Z

    .line 23
    iput-boolean v1, v0, Lu3/e0$a;->i:Z

    .line 24
    iget-object v1, p0, Lu3/e0;->j:Lu3/q;

    .line 25
    iput-object v1, v0, Lu3/e0$a;->j:Lu3/q;

    .line 26
    iget-object v1, p0, Lu3/e0;->k:Lu3/d;

    .line 27
    iput-object v1, v0, Lu3/e0$a;->k:Lu3/d;

    .line 28
    iget-object v1, p0, Lu3/e0;->l:Lu3/t;

    .line 29
    iput-object v1, v0, Lu3/e0$a;->l:Lu3/t;

    .line 30
    iget-object v1, p0, Lu3/e0;->m:Ljava/net/Proxy;

    .line 31
    iput-object v1, v0, Lu3/e0$a;->m:Ljava/net/Proxy;

    .line 32
    iget-object v1, p0, Lu3/e0;->n:Ljava/net/ProxySelector;

    .line 33
    iput-object v1, v0, Lu3/e0$a;->n:Ljava/net/ProxySelector;

    .line 34
    iget-object v1, p0, Lu3/e0;->o:Lu3/c;

    .line 35
    iput-object v1, v0, Lu3/e0$a;->o:Lu3/c;

    .line 36
    iget-object v1, p0, Lu3/e0;->p:Ljavax/net/SocketFactory;

    .line 37
    iput-object v1, v0, Lu3/e0$a;->p:Ljavax/net/SocketFactory;

    .line 38
    iget-object v1, p0, Lu3/e0;->q:Ljavax/net/ssl/SSLSocketFactory;

    .line 39
    iput-object v1, v0, Lu3/e0$a;->q:Ljavax/net/ssl/SSLSocketFactory;

    .line 40
    iget-object v1, p0, Lu3/e0;->r:Ljavax/net/ssl/X509TrustManager;

    .line 41
    iput-object v1, v0, Lu3/e0$a;->r:Ljavax/net/ssl/X509TrustManager;

    .line 42
    iget-object v1, p0, Lu3/e0;->s:Ljava/util/List;

    .line 43
    iput-object v1, v0, Lu3/e0$a;->s:Ljava/util/List;

    .line 44
    iget-object v1, p0, Lu3/e0;->t:Ljava/util/List;

    .line 45
    iput-object v1, v0, Lu3/e0$a;->t:Ljava/util/List;

    .line 46
    iget-object v1, p0, Lu3/e0;->u:Ljavax/net/ssl/HostnameVerifier;

    .line 47
    iput-object v1, v0, Lu3/e0$a;->u:Ljavax/net/ssl/HostnameVerifier;

    .line 48
    iget-object v1, p0, Lu3/e0;->v:Lu3/h;

    .line 49
    iput-object v1, v0, Lu3/e0$a;->v:Lu3/h;

    .line 50
    iget-object v1, p0, Lu3/e0;->w:Lu3/p0/n/c;

    .line 51
    iput-object v1, v0, Lu3/e0$a;->w:Lu3/p0/n/c;

    .line 52
    iget v1, p0, Lu3/e0;->x:I

    .line 53
    iput v1, v0, Lu3/e0$a;->x:I

    .line 54
    iget v1, p0, Lu3/e0;->y:I

    .line 55
    iput v1, v0, Lu3/e0$a;->y:I

    .line 56
    iget v1, p0, Lu3/e0;->z:I

    .line 57
    iput v1, v0, Lu3/e0$a;->z:I

    .line 58
    iget v1, p0, Lu3/e0;->A:I

    .line 59
    iput v1, v0, Lu3/e0$a;->A:I

    .line 60
    iget v1, p0, Lu3/e0;->B:I

    .line 61
    iput v1, v0, Lu3/e0$a;->B:I

    .line 62
    iget-wide v1, p0, Lu3/e0;->C:J

    .line 63
    iput-wide v1, v0, Lu3/e0$a;->C:J

    .line 64
    iget-object v1, p0, Lu3/e0;->D:Lu3/p0/g/k;

    .line 65
    iput-object v1, v0, Lu3/e0$a;->D:Lu3/p0/g/k;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
