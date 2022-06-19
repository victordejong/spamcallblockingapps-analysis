.class final Lcom/hiya/stingray/ui/premium/i$h;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/premium/i;->n1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/p<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/premium/i;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/premium/i;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/premium/i$h;->f:Lcom/hiya/stingray/ui/premium/i;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/i$h;->f:Lcom/hiya/stingray/ui/premium/i;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/premium/i;->j1()Lcom/hiya/stingray/ui/premium/l;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/premium/l;->y(Z)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/i$h;->f:Lcom/hiya/stingray/ui/premium/i;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/premium/i;->h1()Lcom/hiya/stingray/ui/premium/j;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/premium/j;->b(Z)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/i$h;->f:Lcom/hiya/stingray/ui/premium/i;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/premium/i;->j1()Lcom/hiya/stingray/ui/premium/l;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/premium/l;->x(Z)V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/i$h;->f:Lcom/hiya/stingray/ui/premium/i;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/premium/i;->h1()Lcom/hiya/stingray/ui/premium/j;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/premium/j;->a(Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/ui/premium/i$h;->a(IZ)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method
