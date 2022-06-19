.class final Lcom/hiya/stingray/ui/local/search/e$a;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/search/e;-><init>(Landroid/content/Context;Lcom/hiya/stingray/ui/calllog/SearchListAdapter;Lcom/hiya/stingray/ui/local/common/c;Lcom/hiya/stingray/manager/x3;Lcom/hiya/stingray/ui/login/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/l<",
        "Lcom/hiya/stingray/t/h1/d;",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/search/e;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/search/e;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/search/e$a;->f:Lcom/hiya/stingray/ui/local/search/e;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/t/h1/d;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/e$a;->f:Lcom/hiya/stingray/ui/local/search/e;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/search/e;->e()Lkotlin/w/b/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/hiya/stingray/t/h1/d;->j()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/s/k;->J(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/r;

    :cond_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/t/h1/d;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/search/e$a;->a(Lcom/hiya/stingray/t/h1/d;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method
