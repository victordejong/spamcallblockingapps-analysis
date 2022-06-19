.class final Lcom/hiya/stingray/ui/local/search/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/search/c;->x()V
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
.field final synthetic f:Lcom/hiya/stingray/ui/local/search/c;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/search/c;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/search/c$c;->f:Lcom/hiya/stingray/ui/local/search/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/l;)Li/c/b0/b/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/l<",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/t/h1/i;",
            ">;)",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/h1/d;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/c$c;->f:Lcom/hiya/stingray/ui/local/search/c;

    invoke-static {v0}, Lcom/hiya/stingray/ui/local/search/c;->t(Lcom/hiya/stingray/ui/local/search/c;)Lcom/hiya/stingray/manager/o4/a;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/l;->c()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Lkotlin/l;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/t/h1/i;

    invoke-virtual {v0}, Lcom/hiya/stingray/t/h1/i;->c()D

    move-result-wide v3

    invoke-virtual {p1}, Lkotlin/l;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/t/h1/i;

    invoke-virtual {p1}, Lcom/hiya/stingray/t/h1/i;->d()D

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Lcom/hiya/stingray/manager/o4/a;->j(Ljava/lang/String;DD)Li/c/b0/b/v;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/hiya/stingray/ui/local/search/c$c$a;->f:Lcom/hiya/stingray/ui/local/search/c$c$a;

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->onErrorResumeNext(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/l;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/search/c$c;->a(Lkotlin/l;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method
