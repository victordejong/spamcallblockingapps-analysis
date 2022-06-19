.class public final Lcom/hiya/client/callerid/dao/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/client/callerid/dao/i;


# instance fields
.field private final a:Lg/g/a/a/g/h/b;

.field private final b:Lcom/hiya/client/callerid/prefs/e;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lg/g/a/a/g/h/b;Lcom/hiya/client/callerid/prefs/e;)V
    .locals 1

    const-string v0, "callerProfileApi"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefs"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/client/callerid/dao/j;->a:Lg/g/a/a/g/h/b;

    iput-object p2, p0, Lcom/hiya/client/callerid/dao/j;->b:Lcom/hiya/client/callerid/prefs/e;

    return-void
.end method

.method public static final synthetic b(Lcom/hiya/client/callerid/dao/j;)Lcom/hiya/client/callerid/prefs/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/dao/j;->b:Lcom/hiya/client/callerid/prefs/e;

    return-object p0
.end method

.method private final c()Li/c/b0/b/e0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/e0<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/j;->a:Lg/g/a/a/g/h/b;

    invoke-interface {v0}, Lg/g/a/a/g/h/b;->a()Li/c/b0/b/v;

    move-result-object v0

    invoke-static {v0}, Li/c/b0/b/e0;->q(Li/c/b0/b/a0;)Li/c/b0/b/e0;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/hiya/client/callerid/dao/j$a;

    invoke-direct {v1, p0}, Lcom/hiya/client/callerid/dao/j$a;-><init>(Lcom/hiya/client/callerid/dao/j;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->t(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/hiya/client/callerid/dao/j$b;->f:Lcom/hiya/client/callerid/dao/j$b;

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->y(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object v0

    .line 4
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->D(Li/c/b0/b/d0;)Li/c/b0/b/e0;

    move-result-object v0

    .line 5
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->u(Li/c/b0/b/d0;)Li/c/b0/b/e0;

    move-result-object v0

    const-string v1, "Single.fromObservable(ca\u2026bserveOn(Schedulers.io())"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final d(J)Z
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x240c8400

    add-long/2addr p1, v2

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a()Li/c/b0/b/e0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/e0<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/j;->b:Lcom/hiya/client/callerid/prefs/e;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/prefs/e;->c()Lg/g/a/a/i/o/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lg/g/a/a/i/o/k;->getTimestamp()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/hiya/client/callerid/dao/j;->d(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lg/g/a/a/i/o/k;->getHashCountries()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Li/c/b0/b/e0;->s(Ljava/lang/Object;)Li/c/b0/b/e0;

    move-result-object v0

    const-string v1, "Single.just(cached.hashCountries)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/hiya/client/callerid/dao/j;->c()Li/c/b0/b/e0;

    move-result-object v0

    :goto_0
    return-object v0
.end method
