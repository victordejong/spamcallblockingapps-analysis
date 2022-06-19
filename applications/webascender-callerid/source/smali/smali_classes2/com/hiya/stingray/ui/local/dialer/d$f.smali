.class final Lcom/hiya/stingray/ui/local/dialer/d$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/dialer/d;->E(Lcom/hiya/stingray/t/n0;)V
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
        "Lcom/hiya/stingray/t/d0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/dialer/d;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/dialer/d;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/dialer/d$f;->f:Lcom/hiya/stingray/ui/local/dialer/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/t/d0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/d$f;->f:Lcom/hiya/stingray/ui/local/dialer/d;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/local/dialer/e;

    const-string v1, "callLogItem"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object p1

    const-string v1, "callLogItem.phone"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/hiya/stingray/ui/local/dialer/e$a;->LIST_ITEM:Lcom/hiya/stingray/ui/local/dialer/e$a;

    invoke-interface {v0, p1, v1}, Lcom/hiya/stingray/ui/local/dialer/e;->B0(Ljava/lang/String;Lcom/hiya/stingray/ui/local/dialer/e$a;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/t/d0;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/dialer/d$f;->a(Lcom/hiya/stingray/t/d0;)V

    return-void
.end method
