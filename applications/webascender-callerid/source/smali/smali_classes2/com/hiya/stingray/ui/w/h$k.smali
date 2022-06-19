.class final Lcom/hiya/stingray/ui/w/h$k;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/w/h;->i1()V
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
.field final synthetic f:Lcom/hiya/stingray/ui/w/h;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/w/h;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/w/h$k;->f:Lcom/hiya/stingray/ui/w/h;

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
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/h$k;->f:Lcom/hiya/stingray/ui/w/h;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/w/h;->g1()Lcom/hiya/stingray/ui/w/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/w/c;->u(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/h$k;->f:Lcom/hiya/stingray/ui/w/h;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/w/h;->n()Li/c/b0/k/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Li/c/b0/k/a;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/w/h$k;->a(Ljava/lang/String;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method
