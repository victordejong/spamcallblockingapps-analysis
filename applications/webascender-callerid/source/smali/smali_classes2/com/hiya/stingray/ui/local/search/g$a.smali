.class final Lcom/hiya/stingray/ui/local/search/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/search/g;->onActivityCreated(Landroid/os/Bundle;)V
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
        "Lcom/hiya/stingray/t/n0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/search/g;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/search/g;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/search/g$a;->f:Lcom/hiya/stingray/ui/local/search/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/t/n0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/g$a;->f:Lcom/hiya/stingray/ui/local/search/g;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/search/g;->l1()Lcom/hiya/stingray/ui/local/search/a;

    move-result-object v0

    const-string v1, "identityData"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/local/search/a;->C(Lcom/hiya/stingray/t/n0;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/g$a;->f:Lcom/hiya/stingray/ui/local/search/g;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/search/g;->n1()Lcom/hiya/stingray/ui/local/search/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/local/search/f;->i(Lcom/hiya/stingray/t/n0;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/t/n0;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/search/g$a;->a(Lcom/hiya/stingray/t/n0;)V

    return-void
.end method
