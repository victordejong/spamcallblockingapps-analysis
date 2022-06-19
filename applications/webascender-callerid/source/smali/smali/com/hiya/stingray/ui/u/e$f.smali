.class final Lcom/hiya/stingray/ui/u/e$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/u/e;->G()V
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
        "Lcom/hiya/stingray/t/e0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/u/e;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/u/e;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/u/e$f;->f:Lcom/hiya/stingray/ui/u/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/t/e0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/u/e$f;->f:Lcom/hiya/stingray/ui/u/e;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/u/f;

    invoke-virtual {p1}, Lcom/hiya/stingray/t/e0;->e()Ljava/lang/String;

    move-result-object p1

    const-string v1, "it.phone()"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/hiya/stingray/ui/u/f;->Y(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/t/e0;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/u/e$f;->a(Lcom/hiya/stingray/t/e0;)V

    return-void
.end method
