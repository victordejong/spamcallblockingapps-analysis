.class final Lcom/hiya/stingray/ui/local/location/SetLocationActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$c;->f:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$c;->f:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    sget p2, Lcom/hiya/stingray/o;->G3:I

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const-string v0, "searchText"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$c;->f:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    const v2, 0x7f1101a1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$c;->f:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$c;->f:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    invoke-static {p1}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->T(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;)V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$c;->f:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    sget p2, Lcom/hiya/stingray/o;->h3:I

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "recentPlacesRecyclerView"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->V(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    return-void
.end method
