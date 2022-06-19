.class public final Lcom/hiya/client/callerid/dao/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lg/g/b/b/d/d;

.field private final b:Lg/g/a/a/h/g;


# direct methods
.method public constructor <init>(Lg/g/b/b/d/d;Lg/g/a/a/h/g;)V
    .locals 1

    const-string v0, "localOverrideIdDbOp"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userInfoDao"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/client/callerid/dao/r;->a:Lg/g/b/b/d/d;

    iput-object p2, p0, Lcom/hiya/client/callerid/dao/r;->b:Lg/g/a/a/h/g;

    return-void
.end method

.method public static final synthetic a(Lcom/hiya/client/callerid/dao/r;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/hiya/client/callerid/dao/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/hiya/client/callerid/dao/r;)Lg/g/b/b/d/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/dao/r;->a:Lg/g/b/b/d/d;

    return-object p0
.end method

.method public static final synthetic c(Lcom/hiya/client/callerid/dao/r;)Lg/g/a/a/h/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/dao/r;->b:Lg/g/a/a/h/g;

    return-object p0
.end method

.method private final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lg/g/b/a/k/j;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lg/g/a/a/i/h;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lg/g/a/a/i/h;->getPhone()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    move-object p1, p2

    :cond_0
    return-object p1
.end method


# virtual methods
.method public final e()Li/c/b0/b/e0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/e0<",
            "Ljava/util/List<",
            "Lg/g/b/c/m;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/dao/r$a;

    invoke-direct {v0, p0}, Lcom/hiya/client/callerid/dao/r$a;-><init>(Lcom/hiya/client/callerid/dao/r;)V

    invoke-static {v0}, Li/c/b0/b/e0;->f(Li/c/b0/b/h0;)Li/c/b0/b/e0;

    move-result-object v0

    const-string v1, "Single.create {\n        \u2026lOverrideIds())\n        }"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)Li/c/b0/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/p<",
            "Lg/g/b/c/m;",
            ">;"
        }
    .end annotation

    const-string v0, "phone"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryHint"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/dao/r$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/hiya/client/callerid/dao/r$b;-><init>(Lcom/hiya/client/callerid/dao/r;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Li/c/b0/b/p;->e(Li/c/b0/b/s;)Li/c/b0/b/p;

    move-result-object p1

    const-string p2, "Maybe.create {\n         \u2026)\n            }\n        }"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final g(J)Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Li/c/b0/b/e0<",
            "Ljava/util/List<",
            "Lg/g/b/c/m;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/dao/r$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/hiya/client/callerid/dao/r$c;-><init>(Lcom/hiya/client/callerid/dao/r;J)V

    invoke-static {v0}, Li/c/b0/b/e0;->f(Li/c/b0/b/h0;)Li/c/b0/b/e0;

    move-result-object p1

    const-string p2, "Single.create {\n        \u2026amp(timestamp))\n        }"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;)Li/c/b0/b/e;
    .locals 1

    const-string v0, "phone"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryHint"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/dao/r$d;

    invoke-direct {v0, p0, p1, p2}, Lcom/hiya/client/callerid/dao/r$d;-><init>(Lcom/hiya/client/callerid/dao/r;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Li/c/b0/b/e;->k(Li/c/b0/b/h;)Li/c/b0/b/e;

    move-result-object p1

    const-string p2, "Completable.create { emi\u2026)\n            }\n        }"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Li/c/b0/b/e;
    .locals 10

    const-string v0, "phone"

    move-object v3, p1

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryHint"

    move-object v4, p2

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categoryName"

    move-object v5, p3

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reportedName"

    move-object v6, p4

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userComment"

    move-object/from16 v8, p6

    invoke-static {v8, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileTag"

    move-object/from16 v7, p7

    invoke-static {v7, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/dao/r$e;

    move-object v1, v0

    move-object v2, p0

    move v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/hiya/client/callerid/dao/r$e;-><init>(Lcom/hiya/client/callerid/dao/r;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Li/c/b0/b/e;->k(Li/c/b0/b/h;)Li/c/b0/b/e;

    move-result-object v0

    const-string v1, "Completable.create { emi\u2026)\n            }\n        }"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
