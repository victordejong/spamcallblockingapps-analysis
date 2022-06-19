.class final Lcom/hiya/stingray/ui/w/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/w/l;->M()V
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
        "TT;",
        "Li/c/b0/b/a0<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/w/l;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/w/l;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/w/l$b;->f:Lcom/hiya/stingray/ui/w/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/hiya/stingray/t/d0;",
            "Ljava/lang/Integer;",
            ">;)",
            "Li/c/b0/b/v<",
            "Lcom/google/common/collect/g<",
            "Lcom/hiya/stingray/ui/calllog/x;",
            "Lcom/hiya/stingray/t/n0;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l$b;->f:Lcom/hiya/stingray/ui/w/l;

    invoke-static {v0}, Lcom/hiya/stingray/ui/w/l;->z(Lcom/hiya/stingray/ui/w/l;)Lcom/hiya/stingray/manager/z3;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lkotlin/s/k;->i0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/manager/z3;->e(Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/w/l$b;->a(Ljava/util/Map;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method
