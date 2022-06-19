.class final Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;->g(Landroid/telecom/Call$Details;Lcom/hiya/client/callerid/ui/b0/j;)V
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
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/b0/j;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/b0/j;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$a;->f:Lcom/hiya/client/callerid/ui/b0/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/client/callerid/ui/b0/e;)Lkotlin/l;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/client/callerid/ui/b0/e;",
            ")",
            "Lkotlin/l<",
            "Lcom/hiya/client/callerid/ui/b0/e;",
            "Lcom/hiya/client/callerid/ui/c$a;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/hiya/client/callerid/ui/e;->f:Lcom/hiya/client/callerid/ui/e;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/e;->b()Lcom/hiya/client/callerid/ui/a;

    move-result-object v1

    const-string v2, "it"

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$a;->f:Lcom/hiya/client/callerid/ui/b0/j;

    invoke-static {p1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3, p1}, Lcom/hiya/client/callerid/ui/a;->b(Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/client/callerid/ui/b0/e;)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 2
    new-instance v0, Lkotlin/l;

    .line 3
    new-instance v9, Lcom/hiya/client/callerid/ui/c$a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/hiya/client/callerid/ui/c$a;-><init>(ZZZZZILkotlin/w/c/g;)V

    .line 4
    invoke-direct {v0, p1, v9}, Lkotlin/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 5
    :cond_0
    new-instance v1, Lkotlin/l;

    .line 6
    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/e;->d()Lcom/hiya/client/callerid/ui/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v3, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$a;->f:Lcom/hiya/client/callerid/ui/b0/j;

    .line 8
    invoke-static {p1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-interface {v0, v3, p1}, Lcom/hiya/client/callerid/ui/c;->l(Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/client/callerid/ui/b0/e;)Lcom/hiya/client/callerid/ui/c$a;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    new-instance v0, Lcom/hiya/client/callerid/ui/c$a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1f

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/hiya/client/callerid/ui/c$a;-><init>(ZZZZZILkotlin/w/c/g;)V

    .line 11
    :goto_0
    invoke-direct {v1, p1, v0}, Lkotlin/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/client/callerid/ui/b0/e;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$a;->a(Lcom/hiya/client/callerid/ui/b0/e;)Lkotlin/l;

    move-result-object p1

    return-object p1
.end method
