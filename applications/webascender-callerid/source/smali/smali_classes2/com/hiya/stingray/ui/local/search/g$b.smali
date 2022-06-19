.class final Lcom/hiya/stingray/ui/local/search/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/search/g;->onActivityCreated(Landroid/os/Bundle;)V
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
        "Lcom/hiya/stingray/ui/calllog/SearchListAdapter$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/search/g;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/search/g;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/search/g$b;->f:Lcom/hiya/stingray/ui/local/search/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/ui/calllog/SearchListAdapter$a;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter$a;->INITIAL:Lcom/hiya/stingray/ui/calllog/SearchListAdapter$a;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/search/g$b;->f:Lcom/hiya/stingray/ui/local/search/g;

    invoke-static {p1}, Lcom/hiya/stingray/ui/local/search/g;->i1(Lcom/hiya/stingray/ui/local/search/g;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/hiya/stingray/ui/local/search/g;->j1(Lcom/hiya/stingray/ui/local/search/g;Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/search/g$b;->f:Lcom/hiya/stingray/ui/local/search/g;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/hiya/stingray/ui/local/search/g;->j1(Lcom/hiya/stingray/ui/local/search/g;Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/ui/calllog/SearchListAdapter$a;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/search/g$b;->a(Lcom/hiya/stingray/ui/calllog/SearchListAdapter$a;)V

    return-void
.end method
