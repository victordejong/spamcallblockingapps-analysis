.class public Lcom/hiya/stingray/q/b/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/hiya/stingray/q/b/v;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/q/b/v;)V
    .locals 1

    const-string v0, "databaseProvider"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/q/b/l;->a:Lcom/hiya/stingray/q/b/v;

    return-void
.end method

.method public static final synthetic a(Lcom/hiya/stingray/q/b/l;)Lcom/hiya/stingray/q/b/v;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/q/b/l;->a:Lcom/hiya/stingray/q/b/v;

    return-object p0
.end method


# virtual methods
.method public b()Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/w0;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/q/b/l$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/q/b/l$a;-><init>(Lcom/hiya/stingray/q/b/l;)V

    invoke-static {v0}, Li/c/b0/b/v;->fromCallable(Ljava/util/concurrent/Callable;)Li/c/b0/b/v;

    move-result-object v0

    const-string v1, "Observable.fromCallable \u2026mCallable infos\n        }"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public c()Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/hiya/stingray/t/w0;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/q/b/l;->b()Li/c/b0/b/v;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/q/b/l$b;->f:Lcom/hiya/stingray/q/b/l$b;

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    const-string v1, "getAllInfos().map { info\u2026            map\n        }"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public d(I)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Li/c/b0/b/v<",
            "Lcom/google/common/base/j<",
            "Lcom/hiya/stingray/t/w0;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/q/b/l$c;

    invoke-direct {v0, p0, p1}, Lcom/hiya/stingray/q/b/l$c;-><init>(Lcom/hiya/stingray/q/b/l;I)V

    invoke-static {v0}, Li/c/b0/b/v;->fromCallable(Ljava/util/concurrent/Callable;)Li/c/b0/b/v;

    move-result-object p1

    const-string v0, "Observable.fromCallable \u2026mNullable(info)\n        }"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final e(I)Li/c/b0/b/e;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/q/b/l;->d(I)Li/c/b0/b/v;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/q/b/l$d;

    invoke-direct {v1, p0, p1}, Lcom/hiya/stingray/q/b/l$d;-><init>(Lcom/hiya/stingray/q/b/l;I)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    invoke-static {p1}, Li/c/b0/b/e;->u(Li/c/b0/b/a0;)Li/c/b0/b/e;

    move-result-object p1

    const-string v0, "Completable.fromObservab\u2026          true\n        })"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
