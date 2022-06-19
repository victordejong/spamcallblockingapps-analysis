.class public Lcom/hiya/stingray/q/b/y;
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

    iput-object p1, p0, Lcom/hiya/stingray/q/b/y;->a:Lcom/hiya/stingray/q/b/v;

    return-void
.end method

.method public static final synthetic a(Lcom/hiya/stingray/q/b/y;)Lcom/hiya/stingray/q/b/v;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/q/b/y;->a:Lcom/hiya/stingray/q/b/v;

    return-object p0
.end method


# virtual methods
.method public b()Li/c/b0/b/e;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/q/b/y$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/q/b/y$a;-><init>(Lcom/hiya/stingray/q/b/y;)V

    invoke-static {v0}, Li/c/b0/b/e;->s(Li/c/b0/d/a;)Li/c/b0/b/e;

    move-result-object v0

    const-string v1, "Completable.fromAction {\u2026  realm.close()\n        }"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public c()Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/x0;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/q/b/y$b;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/q/b/y$b;-><init>(Lcom/hiya/stingray/q/b/y;)V

    invoke-static {v0}, Li/c/b0/b/v;->fromCallable(Ljava/util/concurrent/Callable;)Li/c/b0/b/v;

    move-result-object v0

    const-string v1, "Observable.fromCallable \u2026mCallable infos\n        }"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public d(Ljava/lang/String;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/v<",
            "Lcom/google/common/base/j<",
            "Lcom/hiya/stingray/t/x0;",
            ">;>;"
        }
    .end annotation

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/stingray/q/b/y$c;

    invoke-direct {v0, p0, p1}, Lcom/hiya/stingray/q/b/y$c;-><init>(Lcom/hiya/stingray/q/b/y;Ljava/lang/String;)V

    invoke-static {v0}, Li/c/b0/b/v;->fromCallable(Ljava/util/concurrent/Callable;)Li/c/b0/b/v;

    move-result-object p1

    const-string v0, "Observable.fromCallable \u2026mNullable(info)\n        }"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final e(Ljava/lang/String;)Li/c/b0/b/e;
    .locals 2

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/q/b/y;->d(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/q/b/y$d;

    invoke-direct {v1, p0, p1}, Lcom/hiya/stingray/q/b/y$d;-><init>(Lcom/hiya/stingray/q/b/y;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    invoke-static {p1}, Li/c/b0/b/e;->u(Li/c/b0/b/a0;)Li/c/b0/b/e;

    move-result-object p1

    const-string v0, "Completable.fromObservab\u2026          true\n        })"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
