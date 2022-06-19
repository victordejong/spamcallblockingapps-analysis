.class public Le/p/a/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/p/a/r;",
            ">;"
        }
    .end annotation
.end field

.field public static final y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/p/a/i;",
            ">;"
        }
    .end annotation
.end field

.field public static z:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field public final a:Le/p/a/y/g;

.field public b:Le/p/a/j;

.field public c:Ljava/net/Proxy;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/p/a/r;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/p/a/i;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/p/a/o;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/p/a/o;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/net/ProxySelector;

.field public i:Ljava/net/CookieHandler;

.field public j:Le/p/a/y/c;

.field public k:Ljavax/net/SocketFactory;

.field public l:Ljavax/net/ssl/SSLSocketFactory;

.field public m:Ljavax/net/ssl/HostnameVerifier;

.field public n:Le/p/a/e;

.field public o:Le/p/a/b;

.field public p:Le/p/a/h;

.field public q:Le/p/a/k;

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:I

.field public v:I

.field public w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Le/p/a/r;

    .line 1
    sget-object v2, Le/p/a/r;->e:Le/p/a/r;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Le/p/a/r;->d:Le/p/a/r;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Le/p/a/r;->c:Le/p/a/r;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    invoke-static {v1}, Le/p/a/y/i;->h([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Le/p/a/q;->x:Ljava/util/List;

    new-array v0, v0, [Le/p/a/i;

    .line 2
    sget-object v1, Le/p/a/i;->f:Le/p/a/i;

    aput-object v1, v0, v3

    sget-object v1, Le/p/a/i;->g:Le/p/a/i;

    aput-object v1, v0, v4

    sget-object v1, Le/p/a/i;->h:Le/p/a/i;

    aput-object v1, v0, v5

    invoke-static {v0}, Le/p/a/y/i;->h([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Le/p/a/q;->y:Ljava/util/List;

    .line 3
    new-instance v0, Le/p/a/q$a;

    invoke-direct {v0}, Le/p/a/q$a;-><init>()V

    sput-object v0, Le/p/a/y/b;->b:Le/p/a/y/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/p/a/q;->f:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/p/a/q;->g:Ljava/util/List;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Le/p/a/q;->r:Z

    .line 5
    iput-boolean v0, p0, Le/p/a/q;->s:Z

    .line 6
    iput-boolean v0, p0, Le/p/a/q;->t:Z

    const/16 v0, 0x2710

    .line 7
    iput v0, p0, Le/p/a/q;->u:I

    .line 8
    iput v0, p0, Le/p/a/q;->v:I

    .line 9
    iput v0, p0, Le/p/a/q;->w:I

    .line 10
    new-instance v0, Le/p/a/y/g;

    invoke-direct {v0}, Le/p/a/y/g;-><init>()V

    iput-object v0, p0, Le/p/a/q;->a:Le/p/a/y/g;

    .line 11
    new-instance v0, Le/p/a/j;

    invoke-direct {v0}, Le/p/a/j;-><init>()V

    iput-object v0, p0, Le/p/a/q;->b:Le/p/a/j;

    return-void
.end method

.method public constructor <init>(Le/p/a/q;)V
    .locals 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/p/a/q;->f:Ljava/util/List;

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Le/p/a/q;->g:Ljava/util/List;

    const/4 v2, 0x1

    .line 15
    iput-boolean v2, p0, Le/p/a/q;->r:Z

    .line 16
    iput-boolean v2, p0, Le/p/a/q;->s:Z

    .line 17
    iput-boolean v2, p0, Le/p/a/q;->t:Z

    const/16 v2, 0x2710

    .line 18
    iput v2, p0, Le/p/a/q;->u:I

    .line 19
    iput v2, p0, Le/p/a/q;->v:I

    .line 20
    iput v2, p0, Le/p/a/q;->w:I

    .line 21
    iget-object v2, p1, Le/p/a/q;->a:Le/p/a/y/g;

    iput-object v2, p0, Le/p/a/q;->a:Le/p/a/y/g;

    .line 22
    iget-object v2, p1, Le/p/a/q;->b:Le/p/a/j;

    iput-object v2, p0, Le/p/a/q;->b:Le/p/a/j;

    .line 23
    iget-object v2, p1, Le/p/a/q;->c:Ljava/net/Proxy;

    iput-object v2, p0, Le/p/a/q;->c:Ljava/net/Proxy;

    .line 24
    iget-object v2, p1, Le/p/a/q;->d:Ljava/util/List;

    iput-object v2, p0, Le/p/a/q;->d:Ljava/util/List;

    .line 25
    iget-object v2, p1, Le/p/a/q;->e:Ljava/util/List;

    iput-object v2, p0, Le/p/a/q;->e:Ljava/util/List;

    .line 26
    iget-object v2, p1, Le/p/a/q;->f:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 27
    iget-object v0, p1, Le/p/a/q;->g:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 28
    iget-object v0, p1, Le/p/a/q;->h:Ljava/net/ProxySelector;

    iput-object v0, p0, Le/p/a/q;->h:Ljava/net/ProxySelector;

    .line 29
    iget-object v0, p1, Le/p/a/q;->i:Ljava/net/CookieHandler;

    iput-object v0, p0, Le/p/a/q;->i:Ljava/net/CookieHandler;

    .line 30
    iget-object v0, p1, Le/p/a/q;->j:Le/p/a/y/c;

    iput-object v0, p0, Le/p/a/q;->j:Le/p/a/y/c;

    .line 31
    iget-object v0, p1, Le/p/a/q;->k:Ljavax/net/SocketFactory;

    iput-object v0, p0, Le/p/a/q;->k:Ljavax/net/SocketFactory;

    .line 32
    iget-object v0, p1, Le/p/a/q;->l:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Le/p/a/q;->l:Ljavax/net/ssl/SSLSocketFactory;

    .line 33
    iget-object v0, p1, Le/p/a/q;->m:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Le/p/a/q;->m:Ljavax/net/ssl/HostnameVerifier;

    .line 34
    iget-object v0, p1, Le/p/a/q;->n:Le/p/a/e;

    iput-object v0, p0, Le/p/a/q;->n:Le/p/a/e;

    .line 35
    iget-object v0, p1, Le/p/a/q;->o:Le/p/a/b;

    iput-object v0, p0, Le/p/a/q;->o:Le/p/a/b;

    .line 36
    iget-object v0, p1, Le/p/a/q;->p:Le/p/a/h;

    iput-object v0, p0, Le/p/a/q;->p:Le/p/a/h;

    .line 37
    iget-object v0, p1, Le/p/a/q;->q:Le/p/a/k;

    iput-object v0, p0, Le/p/a/q;->q:Le/p/a/k;

    .line 38
    iget-boolean v0, p1, Le/p/a/q;->r:Z

    iput-boolean v0, p0, Le/p/a/q;->r:Z

    .line 39
    iget-boolean v0, p1, Le/p/a/q;->s:Z

    iput-boolean v0, p0, Le/p/a/q;->s:Z

    .line 40
    iget-boolean v0, p1, Le/p/a/q;->t:Z

    iput-boolean v0, p0, Le/p/a/q;->t:Z

    .line 41
    iget v0, p1, Le/p/a/q;->u:I

    iput v0, p0, Le/p/a/q;->u:I

    .line 42
    iget v0, p1, Le/p/a/q;->v:I

    iput v0, p0, Le/p/a/q;->v:I

    .line 43
    iget p1, p1, Le/p/a/q;->w:I

    iput p1, p0, Le/p/a/q;->w:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    new-instance v0, Le/p/a/q;

    invoke-direct {v0, p0}, Le/p/a/q;-><init>(Le/p/a/q;)V

    return-object v0
.end method
