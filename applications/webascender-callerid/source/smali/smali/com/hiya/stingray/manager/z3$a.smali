.class Lcom/hiya/stingray/manager/z3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/z3;->c()Li/c/b0/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/c/b0/d/c<",
        "Ljava/util/List<",
        "Lcom/hiya/stingray/q/c/e;",
        ">;",
        "Ljava/util/List<",
        "Lcom/hiya/stingray/q/c/i/a;",
        ">;",
        "Ljava/util/List<",
        "Lcom/hiya/stingray/t/n0;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/manager/z3;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/z3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/manager/z3$a;->a:Lcom/hiya/stingray/manager/z3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/e;",
            ">;",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/i/a;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/n0;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/q;->g(Ljava/lang/Iterable;)Lcom/google/common/collect/q;

    move-result-object p1

    new-instance v1, Lcom/hiya/stingray/manager/z3$a$c;

    invoke-direct {v1, p0, v0, p2}, Lcom/hiya/stingray/manager/z3$a$c;-><init>(Lcom/hiya/stingray/manager/z3$a;Ljava/util/Map;Ljava/util/List;)V

    .line 3
    invoke-virtual {p1, v1}, Lcom/google/common/collect/q;->d(Lcom/google/common/base/n;)Lcom/google/common/collect/q;

    move-result-object p1

    new-instance p2, Lcom/hiya/stingray/manager/z3$a$b;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/manager/z3$a$b;-><init>(Lcom/hiya/stingray/manager/z3$a;)V

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/common/collect/q;->k(Lcom/google/common/base/g;)Lcom/google/common/collect/q;

    move-result-object p1

    new-instance p2, Lcom/hiya/stingray/manager/z3$a$a;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/manager/z3$a$a;-><init>(Lcom/hiya/stingray/manager/z3$a;)V

    .line 5
    invoke-virtual {p1, p2}, Lcom/google/common/collect/q;->d(Lcom/google/common/base/n;)Lcom/google/common/collect/q;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/google/common/collect/Lists;->h(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/manager/z3$a;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
