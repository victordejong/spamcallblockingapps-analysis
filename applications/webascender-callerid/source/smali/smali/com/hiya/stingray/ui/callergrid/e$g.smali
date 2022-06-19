.class final synthetic Lcom/hiya/stingray/ui/callergrid/e$g;
.super Lkotlin/w/c/i;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/callergrid/e;->t1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/i;",
        "Lkotlin/w/b/a<",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/callergrid/e;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lkotlin/w/c/i;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "handleMorePlacesClick"

    return-object v0
.end method

.method public final e()Lkotlin/a0/c;
    .locals 1

    const-class v0, Lcom/hiya/stingray/ui/callergrid/e;

    invoke-static {v0}, Lkotlin/w/c/r;->b(Ljava/lang/Class;)Lkotlin/a0/b;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "handleMorePlacesClick()V"

    return-object v0
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lkotlin/w/c/c;->g:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/callergrid/e;

    .line 1
    invoke-static {v0}, Lcom/hiya/stingray/ui/callergrid/e;->i1(Lcom/hiya/stingray/ui/callergrid/e;)V

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/callergrid/e$g;->g()V

    sget-object v0, Lkotlin/r;->a:Lkotlin/r;

    return-object v0
.end method
