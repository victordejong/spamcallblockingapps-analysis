.class final Lcom/hiya/stingray/ui/w/l$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/w/l;->p()V
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

    iput-object p1, p0, Lcom/hiya/stingray/ui/w/l$l;->f:Lcom/hiya/stingray/ui/w/l;

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
            "Lcom/hiya/stingray/ui/w/l$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l$l;->f:Lcom/hiya/stingray/ui/w/l;

    invoke-virtual {p1}, Lkotlin/l;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hiya/stingray/ui/w/l;->t(Lcom/hiya/stingray/ui/w/l;Ljava/lang/String;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/w/l$l;->f:Lcom/hiya/stingray/ui/w/l;

    invoke-virtual {p1}, Lkotlin/l;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/hiya/stingray/ui/w/l;->B(Lcom/hiya/stingray/ui/w/l;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hiya/stingray/ui/w/l$l;->f:Lcom/hiya/stingray/ui/w/l;

    invoke-static {v1}, Lcom/hiya/stingray/ui/w/l;->v(Lcom/hiya/stingray/ui/w/l;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l$l;->f:Lcom/hiya/stingray/ui/w/l;

    invoke-static {v0}, Lcom/hiya/stingray/ui/w/l;->x(Lcom/hiya/stingray/ui/w/l;)Lcom/hiya/stingray/manager/o4/a;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lkotlin/l;->c()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lkotlin/l;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/t/h1/i;

    invoke-virtual {v0}, Lcom/hiya/stingray/t/h1/i;->c()D

    move-result-wide v3

    .line 6
    invoke-virtual {p1}, Lkotlin/l;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/t/h1/i;

    invoke-virtual {v0}, Lcom/hiya/stingray/t/h1/i;->d()D

    move-result-wide v5

    .line 7
    invoke-virtual/range {v1 .. v6}, Lcom/hiya/stingray/manager/o4/a;->j(Ljava/lang/String;DD)Li/c/b0/b/v;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/hiya/stingray/s/b;

    invoke-direct {v1}, Lcom/hiya/stingray/s/b;-><init>()V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    .line 9
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Li/c/b0/b/v;->timeout(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/v;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/hiya/stingray/ui/w/l$l$a;

    invoke-direct {v1, p1}, Lcom/hiya/stingray/ui/w/l$l$a;-><init>(Lkotlin/l;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/hiya/stingray/ui/w/l$l;->f:Lcom/hiya/stingray/ui/w/l;

    invoke-virtual {p1}, Lkotlin/l;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/hiya/stingray/ui/w/l;->G(Lcom/hiya/stingray/ui/w/l;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 12
    new-instance v0, Lcom/hiya/stingray/ui/w/l$a;

    invoke-virtual {p1}, Lkotlin/l;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/t/h1/i;

    invoke-direct {v0, v1, v2, p1}, Lcom/hiya/stingray/ui/w/l$a;-><init>(Ljava/util/List;ZLcom/hiya/stingray/t/h1/i;)V

    invoke-static {v0}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p1

    .line 13
    new-instance v0, Lcom/hiya/stingray/s/b;

    invoke-direct {v0}, Lcom/hiya/stingray/s/b;-><init>()V

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v0

    goto :goto_1

    .line 14
    :cond_2
    new-instance v0, Lcom/hiya/stingray/ui/w/l$a;

    invoke-virtual {p1}, Lkotlin/l;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/t/h1/i;

    invoke-direct {v0, v1, v3, p1}, Lcom/hiya/stingray/ui/w/l$a;-><init>(Ljava/util/List;ZLcom/hiya/stingray/t/h1/i;)V

    invoke-static {v0}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p1

    .line 15
    new-instance v0, Lcom/hiya/stingray/s/b;

    invoke-direct {v0}, Lcom/hiya/stingray/s/b;-><init>()V

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/l;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/w/l$l;->a(Lkotlin/l;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method
