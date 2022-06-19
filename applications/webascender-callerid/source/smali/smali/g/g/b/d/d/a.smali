.class public final Lg/g/b/d/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/hiya/client/repost/db/b;

.field private final b:Lg/g/b/d/e/b;


# direct methods
.method public constructor <init>(Lcom/hiya/client/repost/db/b;Lg/g/b/d/e/b;)V
    .locals 1

    const-string v0, "storedRequestDbOp"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapper"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/b/d/d/a;->a:Lcom/hiya/client/repost/db/b;

    iput-object p2, p0, Lg/g/b/d/d/a;->b:Lg/g/b/d/e/b;

    return-void
.end method

.method public static final synthetic a(Lg/g/b/d/d/a;)Lg/g/b/d/e/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/b/d/d/a;->b:Lg/g/b/d/e/b;

    return-object p0
.end method

.method public static final synthetic b(Lg/g/b/d/d/a;)Lcom/hiya/client/repost/db/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/b/d/d/a;->a:Lcom/hiya/client/repost/db/b;

    return-object p0
.end method


# virtual methods
.method public final c(Ljava/util/List;)Li/c/b0/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg/g/b/d/e/a;",
            ">;)",
            "Li/c/b0/b/e;"
        }
    .end annotation

    const-string v0, "requests"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lg/g/b/d/d/a$a;

    invoke-direct {v0, p0, p1}, Lg/g/b/d/d/a$a;-><init>(Lg/g/b/d/d/a;Ljava/util/List;)V

    invoke-static {v0}, Li/c/b0/b/e;->k(Li/c/b0/b/h;)Li/c/b0/b/e;

    move-result-object p1

    const-string v0, "Completable.create { emi\u2026)\n            }\n        }"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final d()Li/c/b0/b/e0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/e0<",
            "Ljava/util/List<",
            "Lg/g/b/d/e/a;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg/g/b/d/d/a$b;

    invoke-direct {v0, p0}, Lg/g/b/d/d/a$b;-><init>(Lg/g/b/d/d/a;)V

    invoke-static {v0}, Li/c/b0/b/e0;->p(Ljava/util/concurrent/Callable;)Li/c/b0/b/e0;

    move-result-object v0

    const-string v1, "Single.fromCallable {\n  \u2026)\n            }\n        }"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final e(Ljava/util/List;)Li/c/b0/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg/g/b/d/e/a;",
            ">;)",
            "Li/c/b0/b/e;"
        }
    .end annotation

    const-string v0, "requests"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lg/g/b/d/d/a$c;

    invoke-direct {v0, p0, p1}, Lg/g/b/d/d/a$c;-><init>(Lg/g/b/d/d/a;Ljava/util/List;)V

    invoke-static {v0}, Li/c/b0/b/e;->k(Li/c/b0/b/h;)Li/c/b0/b/e;

    move-result-object p1

    const-string v0, "Completable.create { emi\u2026)\n            }\n        }"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final f(Lg/g/b/d/e/a;)Li/c/b0/b/e;
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lg/g/b/d/d/a$d;

    invoke-direct {v0, p0, p1}, Lg/g/b/d/d/a$d;-><init>(Lg/g/b/d/d/a;Lg/g/b/d/e/a;)V

    invoke-static {v0}, Li/c/b0/b/e;->k(Li/c/b0/b/h;)Li/c/b0/b/e;

    move-result-object p1

    const-string v0, "Completable.create { emi\u2026)\n            }\n        }"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
