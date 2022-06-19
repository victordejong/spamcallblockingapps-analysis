.class final Lcom/hiya/stingray/ui/callergrid/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/callergrid/k;->x()Li/c/b0/b/v;
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
.field final synthetic f:Lcom/hiya/stingray/ui/callergrid/k;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/callergrid/k;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/callergrid/k$b;->f:Lcom/hiya/stingray/ui/callergrid/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Boolean;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
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

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/callergrid/k$b;->f:Lcom/hiya/stingray/ui/callergrid/k;

    invoke-static {p1}, Lcom/hiya/stingray/ui/callergrid/k;->v(Lcom/hiya/stingray/ui/callergrid/k;)Lcom/hiya/stingray/util/a0;

    move-result-object p1

    const-class v0, Lcom/hiya/stingray/util/i0/a;

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/util/a0;->e(Ljava/lang/Class;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/callergrid/k$b;->f:Lcom/hiya/stingray/ui/callergrid/k;

    invoke-static {p1}, Lcom/hiya/stingray/ui/callergrid/k;->t(Lcom/hiya/stingray/ui/callergrid/k;)Lcom/hiya/stingray/manager/u1;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/k$b;->f:Lcom/hiya/stingray/ui/callergrid/k;

    invoke-static {v0}, Lcom/hiya/stingray/ui/callergrid/k;->t(Lcom/hiya/stingray/ui/callergrid/k;)Lcom/hiya/stingray/manager/u1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u1;->k()Lcom/hiya/stingray/q/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/a;->f()Lcom/hiya/stingray/q/c/c;

    move-result-object v0

    const-string v1, "callerGridManager.sharedPreferences.callerGridData"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/manager/u1;->l(Lcom/hiya/stingray/q/c/c;)Li/c/b0/b/v;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "CallerGrid initialization failure."

    .line 4
    invoke-static {v0, p1}, Lr/a/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    new-instance p1, Lkotlin/l;

    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lkotlin/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p1

    const-string v0, "Observable.just(Pair(emptyList(), emptyList()))"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/callergrid/k$b;->a(Ljava/lang/Boolean;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method
