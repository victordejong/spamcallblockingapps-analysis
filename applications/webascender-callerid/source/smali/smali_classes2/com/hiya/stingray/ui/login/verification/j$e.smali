.class final Lcom/hiya/stingray/ui/login/verification/j$e;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/login/verification/j;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/l<",
        "Ljava/lang/String;",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/login/verification/j;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/login/verification/j;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/login/verification/j$e;->f:Lcom/hiya/stingray/ui/login/verification/j;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/j$e;->f:Lcom/hiya/stingray/ui/login/verification/j;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/hiya/stingray/ui/login/verification/j;->g1(Lcom/hiya/stingray/ui/login/verification/j;Z)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/login/verification/j$e;->a(Ljava/lang/String;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method
