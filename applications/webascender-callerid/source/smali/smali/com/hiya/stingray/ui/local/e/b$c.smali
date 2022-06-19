.class final Lcom/hiya/stingray/ui/local/e/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/e/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field final synthetic f:Lcom/hiya/stingray/ui/local/e/b;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/e/b;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/e/b$c;->f:Lcom/hiya/stingray/ui/local/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/t/d0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/e/b$c;->f:Lcom/hiya/stingray/ui/local/e/b;

    const-string v1, "callLogItem"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/local/e/b;->k1(Lcom/hiya/stingray/t/d0;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/e/b$c;->f:Lcom/hiya/stingray/ui/local/e/b;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/e/b;->i1()Lcom/hiya/stingray/ui/local/e/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/e/a;->b()V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/t/d0;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/e/b$c;->a(Lcom/hiya/stingray/t/d0;)V

    return-void
.end method
