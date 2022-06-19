.class public final Lcom/hiya/stingray/q/a/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/q/a/m;


# instance fields
.field private final a:Lcom/hiya/stingray/manager/x3;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/x3;)V
    .locals 1

    const-string v0, "remoteConfigManager"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/q/a/n;->a:Lcom/hiya/stingray/manager/x3;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/a/n;->a:Lcom/hiya/stingray/manager/x3;

    const-string v1, "hashed_countries"

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ", "

    invoke-static {v1}, Lcom/google/common/base/p;->f(Ljava/lang/String;)Lcom/google/common/base/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/base/p;->g(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->h(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "Lists.newArrayList(Split\u2026tToList(hashedCountries))"

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->g()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "Lists.newArrayList()"

    :goto_0
    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
