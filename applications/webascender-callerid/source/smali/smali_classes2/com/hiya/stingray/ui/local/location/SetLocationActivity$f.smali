.class final Lcom/hiya/stingray/ui/local/location/SetLocationActivity$f;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic f:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$f;->f:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$f;->f:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    invoke-static {p1}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->Q(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;)Lcom/hiya/stingray/t/h1/i;

    move-result-object p1

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$f;->f:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    sget v0, Lcom/hiya/stingray/o;->h3:I

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "recentPlacesRecyclerView"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->V(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$f;->f:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    sget v0, Lcom/hiya/stingray/o;->G3:I

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const-string v0, "searchText"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$f;->f:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    invoke-static {p1}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->U(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$f;->f:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    invoke-static {p1}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->T(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$f;->a(Ljava/lang/String;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method
