.class public Lcom/hiya/stingray/q/b/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/common/phone/java/PhoneNormalizer$c;


# instance fields
.field private final a:Lcom/hiya/stingray/q/a/m;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/q/a/m;)V
    .locals 1

    const-string v0, "hashingCountriesDao"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/q/b/x;->a:Lcom/hiya/stingray/q/a/m;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/z<",
            "Lg/g/c/a/a/a/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/b/x;->a:Lcom/hiya/stingray/q/a/m;

    invoke-interface {v0}, Lcom/hiya/stingray/q/a/m;->a()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lcom/hiya/stingray/q/b/x$a;->f:Lcom/hiya/stingray/q/b/x$a;

    invoke-static {v0, v1}, Lcom/google/common/collect/a0;->h(Ljava/lang/Iterable;Lcom/google/common/base/g;)Ljava/lang/Iterable;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/common/collect/z;->s(Ljava/lang/Iterable;)Lcom/google/common/collect/z;

    move-result-object v0

    const-string v1, "ImmutableSet.copyOf(\n   \u2026(input!!) }\n            )"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/google/common/collect/z;->y()Lcom/google/common/collect/z;

    move-result-object v0

    const-string v1, "ImmutableSet.of()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
