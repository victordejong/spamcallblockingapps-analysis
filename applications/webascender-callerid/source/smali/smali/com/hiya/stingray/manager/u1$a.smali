.class final Lcom/hiya/stingray/manager/u1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/u1;->d(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Li/c/b0/b/v;
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
.field final synthetic f:Lcom/hiya/stingray/manager/u1;

.field final synthetic g:Ljava/util/List;

.field final synthetic h:Ljava/util/List;

.field final synthetic i:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/u1;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/u1$a;->f:Lcom/hiya/stingray/manager/u1;

    iput-object p2, p0, Lcom/hiya/stingray/manager/u1$a;->g:Ljava/util/List;

    iput-object p3, p0, Lcom/hiya/stingray/manager/u1$a;->h:Ljava/util/List;

    iput-object p4, p0, Lcom/hiya/stingray/manager/u1$a;->i:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Li/c/b0/b/v;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/hiya/stingray/q/c/i/c;",
            ">;)",
            "Li/c/b0/b/v<",
            "Lkotlin/l<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/g0;",
            ">;",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/g0;",
            ">;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlin/l;

    iget-object v1, p0, Lcom/hiya/stingray/manager/u1$a;->f:Lcom/hiya/stingray/manager/u1;

    iget-object v2, p0, Lcom/hiya/stingray/manager/u1$a;->g:Ljava/util/List;

    iget-object v3, p0, Lcom/hiya/stingray/manager/u1$a;->h:Ljava/util/List;

    const-string v4, "it"

    invoke-static {p1, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2, v3, p1}, Lcom/hiya/stingray/manager/u1;->b(Lcom/hiya/stingray/manager/u1;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/hiya/stingray/manager/u1$a;->f:Lcom/hiya/stingray/manager/u1;

    iget-object v3, p0, Lcom/hiya/stingray/manager/u1$a;->i:Ljava/util/List;

    invoke-static {v2, v3, p1}, Lcom/hiya/stingray/manager/u1;->c(Lcom/hiya/stingray/manager/u1;Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-direct {v0, v1, p1}, Lkotlin/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/u1$a;->a(Ljava/util/Map;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method
