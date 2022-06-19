.class public final Lokhttp3/internal/http2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/e$b;,
        Lokhttp3/internal/http2/e$e;,
        Lokhttp3/internal/http2/e$d;,
        Lokhttp3/internal/http2/e$c;
    }
.end annotation


# static fields
.field private static final H:Lokhttp3/internal/http2/m;

.field public static final I:Lokhttp3/internal/http2/e$c;


# instance fields
.field private A:J

.field private B:J

.field private C:J

.field private final D:Ljava/net/Socket;

.field private final E:Lokhttp3/internal/http2/i;

.field private final F:Lokhttp3/internal/http2/e$e;

.field private final G:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Z

.field private final g:Lokhttp3/internal/http2/e$d;

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lokhttp3/internal/http2/h;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:Z

.field private final m:Lm/k0/e/e;

.field private final n:Lm/k0/e/d;

.field private final o:Lm/k0/e/d;

.field private final p:Lm/k0/e/d;

.field private final q:Lokhttp3/internal/http2/l;

.field private r:J

.field private s:J

.field private t:J

.field private u:J

.field private v:J

.field private w:J

.field private final x:Lokhttp3/internal/http2/m;

.field private y:Lokhttp3/internal/http2/m;

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lokhttp3/internal/http2/e$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/e$c;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lokhttp3/internal/http2/e;->I:Lokhttp3/internal/http2/e$c;

    .line 1
    new-instance v0, Lokhttp3/internal/http2/m;

    invoke-direct {v0}, Lokhttp3/internal/http2/m;-><init>()V

    const/4 v1, 0x7

    const v2, 0xffff

    .line 2
    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/http2/m;->h(II)Lokhttp3/internal/http2/m;

    const/4 v1, 0x5

    const/16 v2, 0x4000

    .line 3
    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/http2/m;->h(II)Lokhttp3/internal/http2/m;

    .line 4
    sput-object v0, Lokhttp3/internal/http2/e;->H:Lokhttp3/internal/http2/m;

    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/http2/e$b;)V
    .locals 12

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lokhttp3/internal/http2/e$b;->b()Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/internal/http2/e;->f:Z

    .line 3
    invoke-virtual {p1}, Lokhttp3/internal/http2/e$b;->d()Lokhttp3/internal/http2/e$d;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/internal/http2/e;->g:Lokhttp3/internal/http2/e$d;

    .line 4
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lokhttp3/internal/http2/e;->h:Ljava/util/Map;

    .line 5
    invoke-virtual {p1}, Lokhttp3/internal/http2/e$b;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/internal/http2/e;->i:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lokhttp3/internal/http2/e$b;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    iput v2, p0, Lokhttp3/internal/http2/e;->k:I

    .line 7
    invoke-virtual {p1}, Lokhttp3/internal/http2/e$b;->j()Lm/k0/e/e;

    move-result-object v2

    iput-object v2, p0, Lokhttp3/internal/http2/e;->m:Lm/k0/e/e;

    .line 8
    invoke-virtual {v2}, Lm/k0/e/e;->i()Lm/k0/e/d;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/internal/http2/e;->n:Lm/k0/e/d;

    .line 9
    invoke-virtual {v2}, Lm/k0/e/e;->i()Lm/k0/e/d;

    move-result-object v4

    iput-object v4, p0, Lokhttp3/internal/http2/e;->o:Lm/k0/e/d;

    .line 10
    invoke-virtual {v2}, Lm/k0/e/e;->i()Lm/k0/e/d;

    move-result-object v2

    iput-object v2, p0, Lokhttp3/internal/http2/e;->p:Lm/k0/e/d;

    .line 11
    invoke-virtual {p1}, Lokhttp3/internal/http2/e$b;->f()Lokhttp3/internal/http2/l;

    move-result-object v2

    iput-object v2, p0, Lokhttp3/internal/http2/e;->q:Lokhttp3/internal/http2/l;

    .line 12
    new-instance v2, Lokhttp3/internal/http2/m;

    invoke-direct {v2}, Lokhttp3/internal/http2/m;-><init>()V

    .line 13
    invoke-virtual {p1}, Lokhttp3/internal/http2/e$b;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x7

    const/high16 v5, 0x1000000

    .line 14
    invoke-virtual {v2, v4, v5}, Lokhttp3/internal/http2/m;->h(II)Lokhttp3/internal/http2/m;

    .line 15
    :cond_1
    iput-object v2, p0, Lokhttp3/internal/http2/e;->x:Lokhttp3/internal/http2/m;

    .line 16
    sget-object v2, Lokhttp3/internal/http2/e;->H:Lokhttp3/internal/http2/m;

    iput-object v2, p0, Lokhttp3/internal/http2/e;->y:Lokhttp3/internal/http2/m;

    .line 17
    invoke-virtual {v2}, Lokhttp3/internal/http2/m;->c()I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, p0, Lokhttp3/internal/http2/e;->C:J

    .line 18
    invoke-virtual {p1}, Lokhttp3/internal/http2/e$b;->h()Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lokhttp3/internal/http2/e;->D:Ljava/net/Socket;

    .line 19
    new-instance v2, Lokhttp3/internal/http2/i;

    invoke-virtual {p1}, Lokhttp3/internal/http2/e$b;->g()Ln/g;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Lokhttp3/internal/http2/i;-><init>(Ln/g;Z)V

    iput-object v2, p0, Lokhttp3/internal/http2/e;->E:Lokhttp3/internal/http2/i;

    .line 20
    new-instance v2, Lokhttp3/internal/http2/e$e;

    new-instance v4, Lokhttp3/internal/http2/g;

    invoke-virtual {p1}, Lokhttp3/internal/http2/e$b;->i()Ln/h;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lokhttp3/internal/http2/g;-><init>(Ln/h;Z)V

    invoke-direct {v2, p0, v4}, Lokhttp3/internal/http2/e$e;-><init>(Lokhttp3/internal/http2/e;Lokhttp3/internal/http2/g;)V

    iput-object v2, p0, Lokhttp3/internal/http2/e;->F:Lokhttp3/internal/http2/e$e;

    .line 21
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/http2/e;->G:Ljava/util/Set;

    .line 22
    invoke-virtual {p1}, Lokhttp3/internal/http2/e$b;->e()I

    move-result v0

    if-eqz v0, :cond_2

    .line 23
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lokhttp3/internal/http2/e$b;->e()I

    move-result p1

    int-to-long v4, p1

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ping"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 25
    new-instance p1, Lokhttp3/internal/http2/e$a;

    move-object v6, p1

    move-object v7, v8

    move-object v9, p0

    move-wide v10, v4

    invoke-direct/range {v6 .. v11}, Lokhttp3/internal/http2/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lokhttp3/internal/http2/e;J)V

    invoke-virtual {v3, p1, v4, v5}, Lm/k0/e/d;->i(Lm/k0/e/a;J)V

    :cond_2
    return-void
.end method

.method public static final synthetic A(Lokhttp3/internal/http2/e;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lokhttp3/internal/http2/e;->u:J

    return-void
.end method

.method public static final synthetic C(Lokhttp3/internal/http2/e;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lokhttp3/internal/http2/e;->r:J

    return-void
.end method

.method public static final synthetic D(Lokhttp3/internal/http2/e;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lokhttp3/internal/http2/e;->s:J

    return-void
.end method

.method public static final synthetic K(Lokhttp3/internal/http2/e;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lokhttp3/internal/http2/e;->l:Z

    return-void
.end method

.method private final K0(ILjava/util/List;Z)Lokhttp3/internal/http2/h;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/b;",
            ">;Z)",
            "Lokhttp3/internal/http2/h;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    xor-int/lit8 v6, p3, 0x1

    const/4 v4, 0x0

    .line 1
    iget-object v7, p0, Lokhttp3/internal/http2/e;->E:Lokhttp3/internal/http2/i;

    monitor-enter v7

    .line 2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget v0, p0, Lokhttp3/internal/http2/e;->k:I

    const v1, 0x3fffffff    # 1.9999999f

    if-le v0, v1, :cond_0

    .line 4
    sget-object v0, Lokhttp3/internal/http2/a;->REFUSED_STREAM:Lokhttp3/internal/http2/a;

    invoke-virtual {p0, v0}, Lokhttp3/internal/http2/e;->k1(Lokhttp3/internal/http2/a;)V

    .line 5
    :cond_0
    iget-boolean v0, p0, Lokhttp3/internal/http2/e;->l:Z

    if-nez v0, :cond_7

    .line 6
    iget v8, p0, Lokhttp3/internal/http2/e;->k:I

    add-int/lit8 v0, v8, 0x2

    .line 7
    iput v0, p0, Lokhttp3/internal/http2/e;->k:I

    .line 8
    new-instance v9, Lokhttp3/internal/http2/h;

    const/4 v5, 0x0

    move-object v0, v9

    move v1, v8

    move-object v2, p0

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/http2/h;-><init>(ILokhttp3/internal/http2/e;ZZLm/x;)V

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    .line 9
    iget-wide v1, p0, Lokhttp3/internal/http2/e;->B:J

    iget-wide v3, p0, Lokhttp3/internal/http2/e;->C:J

    cmp-long p3, v1, v3

    if-gez p3, :cond_2

    invoke-virtual {v9}, Lokhttp3/internal/http2/h;->r()J

    move-result-wide v1

    invoke-virtual {v9}, Lokhttp3/internal/http2/h;->q()J

    move-result-wide v3

    cmp-long p3, v1, v3

    if-ltz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p3, 0x1

    .line 10
    :goto_1
    invoke-virtual {v9}, Lokhttp3/internal/http2/h;->u()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    iget-object v1, p0, Lokhttp3/internal/http2/e;->h:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_3
    sget-object v1, Lkotlin/r;->a:Lkotlin/r;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    monitor-exit p0

    if-nez p1, :cond_4

    .line 14
    iget-object p1, p0, Lokhttp3/internal/http2/e;->E:Lokhttp3/internal/http2/i;

    invoke-virtual {p1, v6, v8, p2}, Lokhttp3/internal/http2/i;->f(ZILjava/util/List;)V

    goto :goto_2

    .line 15
    :cond_4
    iget-boolean v1, p0, Lokhttp3/internal/http2/e;->f:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_6

    .line 16
    iget-object v0, p0, Lokhttp3/internal/http2/e;->E:Lokhttp3/internal/http2/i;

    invoke-virtual {v0, p1, v8, p2}, Lokhttp3/internal/http2/i;->g(IILjava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 17
    :goto_2
    monitor-exit v7

    if-eqz p3, :cond_5

    .line 18
    iget-object p1, p0, Lokhttp3/internal/http2/e;->E:Lokhttp3/internal/http2/i;

    invoke-virtual {p1}, Lokhttp3/internal/http2/i;->flush()V

    :cond_5
    return-object v9

    :cond_6
    :try_start_3
    const-string p1, "client streams shouldn\'t have associated stream IDs"

    .line 19
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 20
    :cond_7
    :try_start_4
    new-instance p1, Lokhttp3/internal/http2/ConnectionShutdownException;

    invoke-direct {p1}, Lokhttp3/internal/http2/ConnectionShutdownException;-><init>()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    .line 21
    :try_start_5
    monitor-exit p0

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    .line 22
    monitor-exit v7

    throw p1
.end method

.method public static final synthetic L(Lokhttp3/internal/http2/e;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lokhttp3/internal/http2/e;->C:J

    return-void
.end method

.method private final N(Ljava/io/IOException;)V
    .locals 1

    .line 1
    sget-object v0, Lokhttp3/internal/http2/a;->PROTOCOL_ERROR:Lokhttp3/internal/http2/a;

    invoke-virtual {p0, v0, v0, p1}, Lokhttp3/internal/http2/e;->M(Lokhttp3/internal/http2/a;Lokhttp3/internal/http2/a;Ljava/io/IOException;)V

    return-void
.end method

.method public static final synthetic a(Lokhttp3/internal/http2/e;Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lokhttp3/internal/http2/e;->N(Ljava/io/IOException;)V

    return-void
.end method

.method public static final synthetic b(Lokhttp3/internal/http2/e;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/internal/http2/e;->v:J

    return-wide v0
.end method

.method public static final synthetic c(Lokhttp3/internal/http2/e;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http2/e;->G:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic e()Lokhttp3/internal/http2/m;
    .locals 1

    .line 1
    sget-object v0, Lokhttp3/internal/http2/e;->H:Lokhttp3/internal/http2/m;

    return-object v0
.end method

.method public static final synthetic f(Lokhttp3/internal/http2/e;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/internal/http2/e;->u:J

    return-wide v0
.end method

.method public static final synthetic g(Lokhttp3/internal/http2/e;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/internal/http2/e;->r:J

    return-wide v0
.end method

.method public static final synthetic i(Lokhttp3/internal/http2/e;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/internal/http2/e;->s:J

    return-wide v0
.end method

.method public static final synthetic j(Lokhttp3/internal/http2/e;)Lokhttp3/internal/http2/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http2/e;->q:Lokhttp3/internal/http2/l;

    return-object p0
.end method

.method public static final synthetic l(Lokhttp3/internal/http2/e;)Lm/k0/e/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http2/e;->p:Lm/k0/e/d;

    return-object p0
.end method

.method public static final synthetic o(Lokhttp3/internal/http2/e;)Lm/k0/e/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http2/e;->m:Lm/k0/e/e;

    return-object p0
.end method

.method public static final synthetic r(Lokhttp3/internal/http2/e;)Lm/k0/e/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http2/e;->n:Lm/k0/e/d;

    return-object p0
.end method

.method public static synthetic s1(Lokhttp3/internal/http2/e;ZLm/k0/e/e;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 1
    sget-object p2, Lm/k0/e/e;->h:Lm/k0/e/e;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/http2/e;->n1(ZLm/k0/e/e;)V

    return-void
.end method

.method public static final synthetic y(Lokhttp3/internal/http2/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lokhttp3/internal/http2/e;->l:Z

    return p0
.end method

.method public static final synthetic z(Lokhttp3/internal/http2/e;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lokhttp3/internal/http2/e;->v:J

    return-void
.end method


# virtual methods
.method public final A1(IZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/b;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "alternating"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/e;->E:Lokhttp3/internal/http2/i;

    invoke-virtual {v0, p2, p1, p3}, Lokhttp3/internal/http2/i;->f(ZILjava/util/List;)V

    return-void
.end method

.method public final B1(ZII)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/e;->E:Lokhttp3/internal/http2/i;

    invoke-virtual {v0, p1, p2, p3}, Lokhttp3/internal/http2/i;->h(ZII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-direct {p0, p1}, Lokhttp3/internal/http2/e;->N(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method

.method public final C1(ILokhttp3/internal/http2/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "statusCode"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/e;->E:Lokhttp3/internal/http2/i;

    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/http2/i;->i(ILokhttp3/internal/http2/a;)V

    return-void
.end method

.method public final D1(ILokhttp3/internal/http2/a;)V
    .locals 11

    const-string v0, "errorCode"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/e;->n:Lm/k0/e/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lokhttp3/internal/http2/e;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] writeSynReset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2
    new-instance v1, Lokhttp3/internal/http2/e$k;

    const/4 v7, 0x1

    move-object v3, v1

    move-object v4, v6

    move v5, v7

    move-object v8, p0

    move v9, p1

    move-object v10, p2

    invoke-direct/range {v3 .. v10}, Lokhttp3/internal/http2/e$k;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLokhttp3/internal/http2/e;ILokhttp3/internal/http2/a;)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lm/k0/e/d;->i(Lm/k0/e/a;J)V

    return-void
.end method

.method public final E1(IJ)V
    .locals 12

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/e;->n:Lm/k0/e/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lokhttp3/internal/http2/e;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] windowUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2
    new-instance v1, Lokhttp3/internal/http2/e$l;

    const/4 v7, 0x1

    move-object v3, v1

    move-object v4, v6

    move v5, v7

    move-object v8, p0

    move v9, p1

    move-wide v10, p2

    invoke-direct/range {v3 .. v11}, Lokhttp3/internal/http2/e$l;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLokhttp3/internal/http2/e;IJ)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lm/k0/e/d;->i(Lm/k0/e/a;J)V

    return-void
.end method

.method public final G0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/internal/http2/e;->C:J

    return-wide v0
.end method

.method public final I0()Lokhttp3/internal/http2/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/e;->E:Lokhttp3/internal/http2/i;

    return-object v0
.end method

.method public final declared-synchronized J0(J)Z
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/http2/e;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    .line 2
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lokhttp3/internal/http2/e;->u:J

    iget-wide v4, p0, Lokhttp3/internal/http2/e;->t:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    iget-wide v2, p0, Lokhttp3/internal/http2/e;->w:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    const/4 p1, 0x1

    .line 3
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final M(Lokhttp3/internal/http2/a;Lokhttp3/internal/http2/a;Ljava/io/IOException;)V
    .locals 3

    const-string v0, "connectionCode"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "streamCode"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-boolean v0, Lm/k0/b;->g:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Thread "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    const-string v0, "Thread.currentThread()"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " MUST NOT hold lock on "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lokhttp3/internal/http2/e;->k1(Lokhttp3/internal/http2/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    .line 4
    monitor-enter p0

    .line 5
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/e;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 6
    iget-object p1, p0, Lokhttp3/internal/http2/e;->h:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    new-array v0, v1, [Lokhttp3/internal/http2/h;

    .line 7
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, [Lokhttp3/internal/http2/h;

    .line 8
    iget-object v0, p0, Lokhttp3/internal/http2/e;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_1

    .line 9
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_3
    :goto_1
    sget-object v0, Lkotlin/r;->a:Lkotlin/r;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    monitor-exit p0

    if-eqz p1, :cond_4

    .line 12
    array-length v0, p1

    :goto_2
    if-ge v1, v0, :cond_4

    aget-object v2, p1, v1

    .line 13
    :try_start_2
    invoke-virtual {v2, p2, p3}, Lokhttp3/internal/http2/h;->d(Lokhttp3/internal/http2/a;Ljava/io/IOException;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 14
    :cond_4
    :try_start_3
    iget-object p1, p0, Lokhttp3/internal/http2/e;->E:Lokhttp3/internal/http2/i;

    invoke-virtual {p1}, Lokhttp3/internal/http2/i;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 15
    :catch_2
    :try_start_4
    iget-object p1, p0, Lokhttp3/internal/http2/e;->D:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 16
    :catch_3
    iget-object p1, p0, Lokhttp3/internal/http2/e;->n:Lm/k0/e/d;

    invoke-virtual {p1}, Lm/k0/e/d;->n()V

    .line 17
    iget-object p1, p0, Lokhttp3/internal/http2/e;->o:Lm/k0/e/d;

    invoke-virtual {p1}, Lm/k0/e/d;->n()V

    .line 18
    iget-object p1, p0, Lokhttp3/internal/http2/e;->p:Lm/k0/e/d;

    invoke-virtual {p1}, Lm/k0/e/d;->n()V

    return-void

    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0

    throw p1
.end method

.method public final N0(Ljava/util/List;Z)Lokhttp3/internal/http2/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/b;",
            ">;Z)",
            "Lokhttp3/internal/http2/h;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "requestHeaders"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lokhttp3/internal/http2/e;->K0(ILjava/util/List;Z)Lokhttp3/internal/http2/h;

    move-result-object p1

    return-object p1
.end method

.method public final O0(ILn/h;IZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v8, Ln/f;

    invoke-direct {v8}, Ln/f;-><init>()V

    int-to-long v0, p3

    .line 2
    invoke-interface {p2, v0, v1}, Ln/h;->o1(J)V

    .line 3
    invoke-interface {p2, v8, v0, v1}, Ln/d0;->read(Ln/f;J)J

    .line 4
    iget-object p2, p0, Lokhttp3/internal/http2/e;->o:Lm/k0/e/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lokhttp3/internal/http2/e;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] onData"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5
    new-instance v0, Lokhttp3/internal/http2/e$f;

    const/4 v5, 0x1

    move-object v1, v0

    move-object v2, v4

    move v3, v5

    move-object v6, p0

    move v7, p1

    move v9, p3

    move v10, p4

    invoke-direct/range {v1 .. v10}, Lokhttp3/internal/http2/e$f;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLokhttp3/internal/http2/e;ILn/f;IZ)V

    const-wide/16 p3, 0x0

    invoke-virtual {p2, v0, p3, p4}, Lm/k0/e/d;->i(Lm/k0/e/a;J)V

    return-void
.end method

.method public final T0(ILjava/util/List;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/b;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "requestHeaders"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/e;->o:Lm/k0/e/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lokhttp3/internal/http2/e;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] onHeaders"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2
    new-instance v1, Lokhttp3/internal/http2/e$g;

    const/4 v7, 0x1

    move-object v3, v1

    move-object v4, v6

    move v5, v7

    move-object v8, p0

    move v9, p1

    move-object v10, p2

    move v11, p3

    invoke-direct/range {v3 .. v11}, Lokhttp3/internal/http2/e$g;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLokhttp3/internal/http2/e;ILjava/util/List;Z)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lm/k0/e/d;->i(Lm/k0/e/a;J)V

    return-void
.end method

.method public final U0(ILjava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "requestHeaders"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/e;->G:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p2, Lokhttp3/internal/http2/a;->PROTOCOL_ERROR:Lokhttp3/internal/http2/a;

    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/http2/e;->D1(ILokhttp3/internal/http2/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/e;->G:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    .line 7
    iget-object v0, p0, Lokhttp3/internal/http2/e;->o:Lm/k0/e/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lokhttp3/internal/http2/e;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] onRequest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v1, 0x0

    const/4 v7, 0x1

    .line 8
    new-instance v11, Lokhttp3/internal/http2/e$h;

    move-object v3, v11

    move-object v4, v6

    move v5, v7

    move-object v8, p0

    move v9, p1

    move-object v10, p2

    invoke-direct/range {v3 .. v10}, Lokhttp3/internal/http2/e$h;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLokhttp3/internal/http2/e;ILjava/util/List;)V

    invoke-virtual {v0, v11, v1, v2}, Lm/k0/e/d;->i(Lm/k0/e/a;J)V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0

    throw p1
.end method

.method public final X()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/e;->f:Z

    return v0
.end method

.method public final X0(ILokhttp3/internal/http2/a;)V
    .locals 11

    const-string v0, "errorCode"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/e;->o:Lm/k0/e/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lokhttp3/internal/http2/e;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] onReset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2
    new-instance v1, Lokhttp3/internal/http2/e$i;

    const/4 v7, 0x1

    move-object v3, v1

    move-object v4, v6

    move v5, v7

    move-object v8, p0

    move v9, p1

    move-object v10, p2

    invoke-direct/range {v3 .. v10}, Lokhttp3/internal/http2/e$i;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLokhttp3/internal/http2/e;ILokhttp3/internal/http2/a;)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lm/k0/e/d;->i(Lm/k0/e/a;J)V

    return-void
.end method

.method public final Y()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/e;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final Z0(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final declared-synchronized b1(I)Lokhttp3/internal/http2/h;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/e;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/internal/http2/h;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c1()V
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lokhttp3/internal/http2/e;->u:J

    iget-wide v2, p0, Lokhttp3/internal/http2/e;->t:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    .line 3
    :try_start_1
    iput-wide v2, p0, Lokhttp3/internal/http2/e;->t:J

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const v2, 0x3b9aca00

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokhttp3/internal/http2/e;->w:J

    .line 5
    sget-object v0, Lkotlin/r;->a:Lkotlin/r;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    .line 7
    iget-object v0, p0, Lokhttp3/internal/http2/e;->n:Lm/k0/e/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lokhttp3/internal/http2/e;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ping"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v1, 0x0

    const/4 v7, 0x1

    .line 8
    new-instance v9, Lokhttp3/internal/http2/e$j;

    move-object v3, v9

    move-object v4, v6

    move v5, v7

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lokhttp3/internal/http2/e$j;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLokhttp3/internal/http2/e;)V

    invoke-virtual {v0, v9, v1, v2}, Lm/k0/e/d;->i(Lm/k0/e/a;J)V

    return-void

    :catchall_0
    move-exception v0

    .line 9
    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 3

    .line 1
    sget-object v0, Lokhttp3/internal/http2/a;->NO_ERROR:Lokhttp3/internal/http2/a;

    sget-object v1, Lokhttp3/internal/http2/a;->CANCEL:Lokhttp3/internal/http2/a;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lokhttp3/internal/http2/e;->M(Lokhttp3/internal/http2/a;Lokhttp3/internal/http2/a;Ljava/io/IOException;)V

    return-void
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/e;->E:Lokhttp3/internal/http2/i;

    invoke-virtual {v0}, Lokhttp3/internal/http2/i;->flush()V

    return-void
.end method

.method public final g1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lokhttp3/internal/http2/e;->j:I

    return-void
.end method

.method public final h1(Lokhttp3/internal/http2/m;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lokhttp3/internal/http2/e;->y:Lokhttp3/internal/http2/m;

    return-void
.end method

.method public final k0()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/internal/http2/e;->j:I

    return v0
.end method

.method public final k1(Lokhttp3/internal/http2/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "statusCode"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/e;->E:Lokhttp3/internal/http2/i;

    monitor-enter v0

    .line 2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-boolean v1, p0, Lokhttp3/internal/http2/e;->l:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 5
    :try_start_3
    iput-boolean v1, p0, Lokhttp3/internal/http2/e;->l:Z

    .line 6
    iget v1, p0, Lokhttp3/internal/http2/e;->j:I

    .line 7
    sget-object v2, Lkotlin/r;->a:Lkotlin/r;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 8
    :try_start_4
    monitor-exit p0

    .line 9
    iget-object v2, p0, Lokhttp3/internal/http2/e;->E:Lokhttp3/internal/http2/i;

    sget-object v3, Lm/k0/b;->a:[B

    invoke-virtual {v2, v1, p1, v3}, Lokhttp3/internal/http2/i;->e(ILokhttp3/internal/http2/a;[B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_5
    monitor-exit p0

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    .line 12
    monitor-exit v0

    throw p1
.end method

.method public final l0()Lokhttp3/internal/http2/e$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/e;->g:Lokhttp3/internal/http2/e$d;

    return-object v0
.end method

.method public final n1(ZLm/k0/e/e;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "taskRunner"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lokhttp3/internal/http2/e;->E:Lokhttp3/internal/http2/i;

    invoke-virtual {p1}, Lokhttp3/internal/http2/i;->V()V

    .line 2
    iget-object p1, p0, Lokhttp3/internal/http2/e;->E:Lokhttp3/internal/http2/i;

    iget-object v0, p0, Lokhttp3/internal/http2/e;->x:Lokhttp3/internal/http2/m;

    invoke-virtual {p1, v0}, Lokhttp3/internal/http2/i;->j(Lokhttp3/internal/http2/m;)V

    .line 3
    iget-object p1, p0, Lokhttp3/internal/http2/e;->x:Lokhttp3/internal/http2/m;

    invoke-virtual {p1}, Lokhttp3/internal/http2/m;->c()I

    move-result p1

    const v0, 0xffff

    if-eq p1, v0, :cond_0

    .line 4
    iget-object v1, p0, Lokhttp3/internal/http2/e;->E:Lokhttp3/internal/http2/i;

    const/4 v2, 0x0

    sub-int/2addr p1, v0

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/internal/http2/i;->d(IJ)V

    .line 5
    :cond_0
    invoke-virtual {p2}, Lm/k0/e/e;->i()Lm/k0/e/d;

    move-result-object p1

    iget-object v4, p0, Lokhttp3/internal/http2/e;->i:Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/internal/http2/e;->F:Lokhttp3/internal/http2/e$e;

    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    .line 6
    new-instance p2, Lm/k0/e/c;

    move-object v0, p2

    move-object v2, v4

    move v3, v5

    invoke-direct/range {v0 .. v5}, Lm/k0/e/c;-><init>(Lkotlin/w/b/a;Ljava/lang/String;ZLjava/lang/String;Z)V

    invoke-virtual {p1, p2, v6, v7}, Lm/k0/e/d;->i(Lm/k0/e/a;J)V

    return-void
.end method

.method public final p0()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/internal/http2/e;->k:I

    return v0
.end method

.method public final q0()Lokhttp3/internal/http2/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/e;->x:Lokhttp3/internal/http2/m;

    return-object v0
.end method

.method public final s0()Lokhttp3/internal/http2/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/e;->y:Lokhttp3/internal/http2/m;

    return-object v0
.end method

.method public final declared-synchronized u0(I)Lokhttp3/internal/http2/h;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/e;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/internal/http2/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final y0()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lokhttp3/internal/http2/h;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/e;->h:Ljava/util/Map;

    return-object v0
.end method

.method public final declared-synchronized y1(J)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lokhttp3/internal/http2/e;->z:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lokhttp3/internal/http2/e;->z:J

    .line 2
    iget-wide p1, p0, Lokhttp3/internal/http2/e;->A:J

    sub-long/2addr v0, p1

    .line 3
    iget-object p1, p0, Lokhttp3/internal/http2/e;->x:Lokhttp3/internal/http2/m;

    invoke-virtual {p1}, Lokhttp3/internal/http2/m;->c()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-long p1, p1

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Lokhttp3/internal/http2/e;->E1(IJ)V

    .line 5
    iget-wide p1, p0, Lokhttp3/internal/http2/e;->A:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lokhttp3/internal/http2/e;->A:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final z1(IZLn/f;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p4, v1

    if-nez v3, :cond_0

    .line 1
    iget-object p4, p0, Lokhttp3/internal/http2/e;->E:Lokhttp3/internal/http2/i;

    invoke-virtual {p4, p2, p1, p3, v0}, Lokhttp3/internal/http2/i;->a0(ZILn/f;I)V

    return-void

    :cond_0
    :goto_0
    cmp-long v3, p4, v1

    if-lez v3, :cond_4

    .line 2
    new-instance v3, Lkotlin/w/c/o;

    invoke-direct {v3}, Lkotlin/w/c/o;-><init>()V

    .line 3
    monitor-enter p0

    .line 4
    :goto_1
    :try_start_0
    iget-wide v4, p0, Lokhttp3/internal/http2/e;->B:J

    iget-wide v6, p0, Lokhttp3/internal/http2/e;->C:J

    cmp-long v8, v4, v6

    if-ltz v8, :cond_2

    .line 5
    iget-object v4, p0, Lokhttp3/internal/http2/e;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 7
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sub-long/2addr v6, v4

    .line 8
    :try_start_1
    invoke-static {p4, p5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v5, v4

    iput v5, v3, Lkotlin/w/c/o;->f:I

    .line 9
    iget-object v4, p0, Lokhttp3/internal/http2/e;->E:Lokhttp3/internal/http2/i;

    invoke-virtual {v4}, Lokhttp3/internal/http2/i;->l1()I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Lkotlin/w/c/o;->f:I

    .line 10
    iget-wide v5, p0, Lokhttp3/internal/http2/e;->B:J

    int-to-long v7, v4

    add-long/2addr v5, v7

    iput-wide v5, p0, Lokhttp3/internal/http2/e;->B:J

    .line 11
    sget-object v3, Lkotlin/r;->a:Lkotlin/r;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    monitor-exit p0

    int-to-long v5, v4

    sub-long/2addr p4, v5

    .line 13
    iget-object v3, p0, Lokhttp3/internal/http2/e;->E:Lokhttp3/internal/http2/i;

    if-eqz p2, :cond_3

    cmp-long v5, p4, v1

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v3, v5, p1, p3, v4}, Lokhttp3/internal/http2/i;->a0(ZILn/f;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 14
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 15
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    :goto_3
    monitor-exit p0

    throw p1

    :cond_4
    return-void
.end method
