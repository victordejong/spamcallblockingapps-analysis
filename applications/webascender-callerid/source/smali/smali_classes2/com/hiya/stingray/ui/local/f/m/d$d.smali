.class final Lcom/hiya/stingray/ui/local/f/m/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/f/m/d;->E(Lcom/hiya/stingray/t/h1/d;)V
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
        "Lcom/hiya/stingray/t/h1/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/f/m/d;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/f/m/d;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/m/d$d;->f:Lcom/hiya/stingray/ui/local/f/m/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/t/h1/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/m/d$d;->f:Lcom/hiya/stingray/ui/local/f/m/d;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/local/f/n/k;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/hiya/stingray/ui/local/f/n/k;->h0(Lcom/hiya/stingray/t/h1/c;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/t/h1/c;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/f/m/d$d;->a(Lcom/hiya/stingray/t/h1/c;)V

    return-void
.end method
