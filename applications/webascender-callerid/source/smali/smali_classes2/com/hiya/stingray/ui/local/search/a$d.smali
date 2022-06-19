.class final Lcom/hiya/stingray/ui/local/search/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/search/a;->B(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "Lcom/google/common/collect/g<",
        "Lcom/hiya/stingray/ui/calllog/x;",
        "Lcom/hiya/stingray/t/n0;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/search/a;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/search/a;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/search/a$d;->f:Lcom/hiya/stingray/ui/local/search/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/common/collect/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/g<",
            "Lcom/hiya/stingray/ui/calllog/x;",
            "Lcom/hiya/stingray/t/n0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/a$d;->f:Lcom/hiya/stingray/ui/local/search/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/local/search/d;

    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object v1

    .line 2
    sget-object v2, Lcom/hiya/stingray/ui/calllog/x;->CALLLOG_AND_CONTACTS:Lcom/hiya/stingray/ui/calllog/x;

    invoke-virtual {p1, v2}, Lcom/google/common/collect/g;->B(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v2, "multimap.get(SearchSource.CALLLOG_AND_CONTACTS)"

    invoke-static {p1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {v0, v1, p1}, Lcom/hiya/stingray/ui/local/search/d;->e(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/collect/g;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/search/a$d;->a(Lcom/google/common/collect/g;)V

    return-void
.end method
