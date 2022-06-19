.class public Lcom/hiya/stingray/manager/m3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/manager/m3$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/hiya/stingray/q/b/v;

.field private final b:Lcom/hiya/stingray/t/i1/o0;

.field private final c:Lcom/hiya/stingray/manager/l2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/hiya/stingray/q/b/v;Lcom/hiya/stingray/t/i1/o0;Lcom/hiya/stingray/manager/l2;)V
    .locals 1

    const-string v0, "databaseProvider"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneSendEventMapper"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "devAnalyticsManager"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/m3;->a:Lcom/hiya/stingray/q/b/v;

    iput-object p2, p0, Lcom/hiya/stingray/manager/m3;->b:Lcom/hiya/stingray/t/i1/o0;

    iput-object p3, p0, Lcom/hiya/stingray/manager/m3;->c:Lcom/hiya/stingray/manager/l2;

    return-void
.end method

.method public static final synthetic a(Lcom/hiya/stingray/manager/m3;)Lcom/hiya/stingray/q/b/v;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/m3;->a:Lcom/hiya/stingray/q/b/v;

    return-object p0
.end method

.method public static final synthetic b(Lcom/hiya/stingray/manager/m3;)Lcom/hiya/stingray/manager/l2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/m3;->c:Lcom/hiya/stingray/manager/l2;

    return-object p0
.end method

.method public static final synthetic c(Lcom/hiya/stingray/manager/m3;)J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/manager/m3;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic d(Lcom/hiya/stingray/manager/m3;)Lcom/hiya/stingray/t/i1/o0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/m3;->b:Lcom/hiya/stingray/t/i1/o0;

    return-object p0
.end method

.method private final f()J
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xa4cb800

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private final h()Li/c/b0/b/e;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/m3$e;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/manager/m3$e;-><init>(Lcom/hiya/stingray/manager/m3;)V

    invoke-static {v0}, Li/c/b0/b/e;->k(Li/c/b0/b/h;)Li/c/b0/b/e;

    move-result-object v0

    const-string v1, "Completable.create { emi\u2026)\n            }\n        }"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final e()Li/c/b0/b/e0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/e0<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/g1/a;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/m3;->j()Li/c/b0/b/e;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/hiya/stingray/manager/m3$b;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/manager/m3$b;-><init>(Lcom/hiya/stingray/manager/m3;)V

    invoke-static {v1}, Li/c/b0/b/e0;->f(Li/c/b0/b/h0;)Li/c/b0/b/e0;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Li/c/b0/b/e;->g(Li/c/b0/b/i0;)Li/c/b0/b/e0;

    move-result-object v0

    const-string v1, "markExpiredEvents().andT\u2026 }\n                    })"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public g(Ljava/lang/String;Lcom/hiya/stingray/manager/m3$a;)Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/manager/m3$a;",
            ")",
            "Li/c/b0/b/e0<",
            "Lcom/google/common/base/j<",
            "Lcom/hiya/stingray/t/g1/a;",
            ">;>;"
        }
    .end annotation

    const-string v0, "number"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventDestination"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/m3$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/hiya/stingray/manager/m3$c;-><init>(Lcom/hiya/stingray/manager/m3;Ljava/lang/String;Lcom/hiya/stingray/manager/m3$a;)V

    invoke-static {v0}, Li/c/b0/b/e0;->f(Li/c/b0/b/h0;)Li/c/b0/b/e0;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/hiya/stingray/manager/m3$d;

    invoke-direct {v0, p0, p2}, Lcom/hiya/stingray/manager/m3$d;-><init>(Lcom/hiya/stingray/manager/m3;Lcom/hiya/stingray/manager/m3$a;)V

    invoke-virtual {p1, v0}, Li/c/b0/b/e0;->h(Li/c/b0/d/g;)Li/c/b0/b/e0;

    move-result-object p1

    const-string p2, "Single.create<Optional<P\u2026estination, it)\n        }"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final i()Li/c/b0/b/e;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/m3$f;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/manager/m3$f;-><init>(Lcom/hiya/stingray/manager/m3;)V

    invoke-static {v0}, Li/c/b0/b/e;->k(Li/c/b0/b/h;)Li/c/b0/b/e;

    move-result-object v0

    const-string v1, "Completable.create { emi\u2026)\n            }\n        }"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final j()Li/c/b0/b/e;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/m3$g;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/manager/m3$g;-><init>(Lcom/hiya/stingray/manager/m3;)V

    invoke-static {v0}, Li/c/b0/b/e;->k(Li/c/b0/b/h;)Li/c/b0/b/e;

    move-result-object v0

    const-string v1, "Completable.create { emi\u2026)\n            }\n        }"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public k(Lcom/hiya/stingray/t/g1/a;)Li/c/b0/b/e;
    .locals 1

    const-string v0, "phoneSendEvent"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/m3$h;

    invoke-direct {v0, p0, p1}, Lcom/hiya/stingray/manager/m3$h;-><init>(Lcom/hiya/stingray/manager/m3;Lcom/hiya/stingray/t/g1/a;)V

    invoke-static {v0}, Li/c/b0/b/e;->k(Li/c/b0/b/h;)Li/c/b0/b/e;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/hiya/stingray/manager/m3$i;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/manager/m3$i;-><init>(Lcom/hiya/stingray/manager/m3;)V

    invoke-virtual {p1, v0}, Li/c/b0/b/e;->o(Li/c/b0/d/g;)Li/c/b0/b/e;

    move-result-object p1

    .line 3
    invoke-direct {p0}, Lcom/hiya/stingray/manager/m3;->h()Li/c/b0/b/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/b/e;->d(Li/c/b0/b/i;)Li/c/b0/b/e;

    move-result-object p1

    const-string v0, "Completable.create { emi\u2026 }.andThen(limitEvents())"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
