.class final Lcom/hiya/stingray/manager/u1$b;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/u1;->e()Li/c/b0/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/l<",
        "Lcom/hiya/stingray/q/c/b;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/manager/u1;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/u1;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/u1$b;->f:Lcom/hiya/stingray/manager/u1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/q/c/b;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u1$b;->f:Lcom/hiya/stingray/manager/u1;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u1;->g()Lcom/hiya/stingray/ui/callergrid/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/callergrid/j;->j()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/b;->e()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/q/c/b;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/u1$b;->a(Lcom/hiya/stingray/q/c/b;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
