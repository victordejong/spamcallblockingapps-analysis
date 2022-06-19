.class final Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;->onScreenCall(Landroid/telecom/Call$Details;)V
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
        "Lkotlin/l<",
        "+",
        "Ljava/lang/Boolean;",
        "+",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;

.field final synthetic g:Landroid/telecom/Call$Details;

.field final synthetic h:Lcom/hiya/client/callerid/ui/b0/j;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;Landroid/telecom/Call$Details;Lcom/hiya/client/callerid/ui/b0/j;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$e;->f:Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$e;->g:Landroid/telecom/Call$Details;

    iput-object p3, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$e;->h:Lcom/hiya/client/callerid/ui/b0/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/l;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/l<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lkotlin/l;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$e;->f:Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;

    .line 3
    iget-object v1, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$e;->g:Landroid/telecom/Call$Details;

    .line 4
    sget-object v2, Lcom/hiya/client/callerid/ui/e;->f:Lcom/hiya/client/callerid/ui/e;

    invoke-virtual {v2}, Lcom/hiya/client/callerid/ui/e;->d()Lcom/hiya/client/callerid/ui/c;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v3, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$e;->h:Lcom/hiya/client/callerid/ui/b0/j;

    .line 6
    invoke-interface {v2, v3}, Lcom/hiya/client/callerid/ui/c;->i(Lcom/hiya/client/callerid/ui/b0/j;)Lcom/hiya/client/callerid/ui/c$a;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    sget-object v2, Lcom/hiya/client/callerid/ui/c;->a:Lcom/hiya/client/callerid/ui/c$b;

    invoke-virtual {v2}, Lcom/hiya/client/callerid/ui/c$b;->a()Lcom/hiya/client/callerid/ui/c$a;

    move-result-object v2

    .line 8
    :goto_0
    invoke-static {v0, v1, v2}, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;->f(Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;Landroid/telecom/Call$Details;Lcom/hiya/client/callerid/ui/c$a;)V

    .line 9
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$e;->f:Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;->i()Lh/a;

    move-result-object v0

    invoke-interface {v0}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/hiya/client/callerid/ui/x/a;

    .line 10
    sget-object v3, Lg/g/b/c/k;->INCOMING:Lg/g/b/c/k;

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 11
    iget-object v6, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$e;->h:Lcom/hiya/client/callerid/ui/b0/j;

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 13
    invoke-virtual {p1}, Lkotlin/l;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    move v9, p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x3

    const/4 v9, 0x3

    :goto_1
    const-string v2, ""

    .line 14
    invoke-virtual/range {v1 .. v9}, Lcom/hiya/client/callerid/ui/x/a;->e(Ljava/lang/String;Lg/g/b/c/k;ZZLcom/hiya/client/callerid/ui/b0/j;JI)V

    .line 15
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$e;->f:Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;

    .line 16
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$e;->h:Lcom/hiya/client/callerid/ui/b0/j;

    .line 17
    iget-object v1, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$e;->g:Landroid/telecom/Call$Details;

    invoke-static {p1, v1}, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;->c(Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;Landroid/telecom/Call$Details;)Lg/g/b/c/k;

    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$e;->f:Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;

    iget-object v3, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$e;->g:Landroid/telecom/Call$Details;

    invoke-static {v2, v3}, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;->d(Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;Landroid/telecom/Call$Details;)J

    move-result-wide v2

    .line 19
    invoke-static {p1, v0, v1, v2, v3}, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;->e(Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;J)V

    goto :goto_2

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$e;->f:Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$e;->g:Landroid/telecom/Call$Details;

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$e;->h:Lcom/hiya/client/callerid/ui/b0/j;

    invoke-static {p1, v0, v1}, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;->a(Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;Landroid/telecom/Call$Details;Lcom/hiya/client/callerid/ui/b0/j;)V

    :goto_2
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lkotlin/l;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$e;->a(Lkotlin/l;)V

    return-void
.end method
