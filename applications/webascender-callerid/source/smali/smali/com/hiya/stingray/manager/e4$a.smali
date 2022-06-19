.class final Lcom/hiya/stingray/manager/e4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/e4;->e(Ljava/lang/String;Ljava/lang/String;)Li/c/b0/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "Lg/g/a/a/i/m/c;",
        "Li/c/b0/b/v<",
        "Ljava/util/List<",
        "+",
        "Lcom/hiya/stingray/t/c1;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/manager/e4;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/e4;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/e4$a;->f:Lcom/hiya/stingray/manager/e4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg/g/a/a/i/m/c;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/a/a/i/m/c;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/c1;",
            ">;>;"
        }
    .end annotation

    const-string v0, "reportsListDTO"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lg/g/a/a/i/m/c;->getReports()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/manager/e4$a$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/manager/e4$a$a;-><init>(Lcom/hiya/stingray/manager/e4$a;)V

    invoke-static {p1, v0}, Lcom/google/common/collect/a0;->h(Ljava/lang/Iterable;Lcom/google/common/base/g;)Ljava/lang/Iterable;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/Lists;->h(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v0, "Lists.newArrayList(filteredReportsWithComments)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lg/g/a/a/i/m/c;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/e4$a;->a(Lg/g/a/a/i/m/c;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method
