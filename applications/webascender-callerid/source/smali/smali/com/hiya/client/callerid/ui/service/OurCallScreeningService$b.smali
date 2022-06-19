.class final Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


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
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "Lkotlin/l<",
        "+",
        "Lcom/hiya/client/callerid/ui/b0/e;",
        "+",
        "Lcom/hiya/client/callerid/ui/c$a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;

.field final synthetic g:Landroid/telecom/Call$Details;

.field final synthetic h:Lg/g/b/c/k;

.field final synthetic i:Lcom/hiya/client/callerid/ui/b0/j;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;Landroid/telecom/Call$Details;Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$b;->f:Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$b;->g:Landroid/telecom/Call$Details;

    iput-object p3, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$b;->h:Lg/g/b/c/k;

    iput-object p4, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$b;->i:Lcom/hiya/client/callerid/ui/b0/j;

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
            "Lcom/hiya/client/callerid/ui/b0/e;",
            "Lcom/hiya/client/callerid/ui/c$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$b;->f:Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$b;->g:Landroid/telecom/Call$Details;

    invoke-virtual {p1}, Lkotlin/l;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hiya/client/callerid/ui/c$a;

    invoke-static {v0, v1, v2}, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;->f(Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;Landroid/telecom/Call$Details;Lcom/hiya/client/callerid/ui/c$a;)V

    .line 2
    invoke-virtual {p1}, Lkotlin/l;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/client/callerid/ui/c$a;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/c$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$b;->f:Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;->i()Lh/a;

    move-result-object v0

    invoke-interface {v0}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/hiya/client/callerid/ui/x/a;

    .line 4
    invoke-virtual {p1}, Lkotlin/l;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/client/callerid/ui/b0/e;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lg/g/b/c/f;->t()Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$b;->h:Lg/g/b/c/k;

    .line 6
    invoke-virtual {p1}, Lkotlin/l;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/client/callerid/ui/b0/e;

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/e;->b()Z

    move-result v4

    const/4 v5, 0x1

    .line 7
    iget-object v6, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$b;->i:Lcom/hiya/client/callerid/ui/b0/j;

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v9, 0x1

    .line 9
    invoke-virtual/range {v1 .. v9}, Lcom/hiya/client/callerid/ui/x/a;->e(Ljava/lang/String;Lg/g/b/c/k;ZZLcom/hiya/client/callerid/ui/b0/j;JI)V

    .line 10
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$b;->f:Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$b;->i:Lcom/hiya/client/callerid/ui/b0/j;

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$b;->h:Lg/g/b/c/k;

    iget-object v2, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$b;->g:Landroid/telecom/Call$Details;

    invoke-static {p1, v2}, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;->d(Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;Landroid/telecom/Call$Details;)J

    move-result-wide v2

    invoke-static {p1, v0, v1, v2, v3}, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;->e(Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;J)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lkotlin/l;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$b;->a(Lkotlin/l;)V

    return-void
.end method
