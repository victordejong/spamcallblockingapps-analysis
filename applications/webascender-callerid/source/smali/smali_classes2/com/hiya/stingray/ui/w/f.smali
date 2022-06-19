.class public final Lcom/hiya/stingray/ui/w/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/lang/String;)Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/hiya/stingray/t/n0;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/e0<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/n0;",
            ">;>;"
        }
    .end annotation

    const-string v0, "identities"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constraint"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/w/f$a;

    invoke-direct {v0, p2, p1}, Lcom/hiya/stingray/ui/w/f$a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v0}, Li/c/b0/b/e0;->p(Ljava/util/concurrent/Callable;)Li/c/b0/b/e0;

    move-result-object p1

    const-string p2, "Single.fromCallable {\n  \u2026}\n            }\n        }"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
