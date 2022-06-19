.class final synthetic Lcom/hiya/stingray/ui/callergrid/e$f;
.super Lkotlin/w/c/i;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/callergrid/e;->t1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/i;",
        "Lkotlin/w/b/p<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Lcom/hiya/stingray/t/v0;",
        ">;",
        "Ljava/lang/String;",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/callergrid/e;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/w/c/i;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "handleGridItemClick"

    return-object v0
.end method

.method public final e()Lkotlin/a0/c;
    .locals 1

    const-class v0, Lcom/hiya/stingray/ui/callergrid/e;

    invoke-static {v0}, Lkotlin/w/c/r;->b(Ljava/lang/Class;)Lkotlin/a0/b;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "handleGridItemClick(Ljava/util/Map;Ljava/lang/String;)V"

    return-object v0
.end method

.method public final g(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/hiya/stingray/t/v0;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "p1"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p2"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/w/c/c;->g:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/callergrid/e;

    .line 1
    invoke-static {v0, p1, p2}, Lcom/hiya/stingray/ui/callergrid/e;->g1(Lcom/hiya/stingray/ui/callergrid/e;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/ui/callergrid/e$f;->g(Ljava/util/Map;Ljava/lang/String;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method
