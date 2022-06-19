.class final Lcom/hiya/stingray/ui/v/a$c;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/v/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/l<",
        "Lcom/hiya/stingray/t/t0;",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/v/a;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/v/a;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/v/a$c;->f:Lcom/hiya/stingray/ui/v/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/t/t0;)V
    .locals 3

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/hiya/stingray/t/t0;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/v/a$c;->f:Lcom/hiya/stingray/ui/v/a;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/hiya/stingray/util/e0;->B(Ljava/lang/String;Landroid/content/Context;)Z

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/v/a$c;->f:Lcom/hiya/stingray/ui/v/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/v/a;->k1()Lcom/hiya/stingray/ui/v/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/v/b;->a(Lcom/hiya/stingray/t/t0;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/t/t0;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/v/a$c;->a(Lcom/hiya/stingray/t/t0;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method
