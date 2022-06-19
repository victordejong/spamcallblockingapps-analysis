.class final Lcom/hiya/stingray/ui/v/a$b;
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

    iput-object p1, p0, Lcom/hiya/stingray/ui/v/a$b;->f:Lcom/hiya/stingray/ui/v/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/t/t0;)V
    .locals 1

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/v/a$b;->f:Lcom/hiya/stingray/ui/v/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/v/a;->o1()Lcom/hiya/stingray/ui/v/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hiya/stingray/t/t0;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/v/f;->w(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/t/t0;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/v/a$b;->a(Lcom/hiya/stingray/t/t0;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method
