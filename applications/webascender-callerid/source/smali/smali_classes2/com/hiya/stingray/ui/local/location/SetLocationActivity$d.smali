.class final Lcom/hiya/stingray/ui/local/location/SetLocationActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$d;->f:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x3

    if-ne p2, p1, :cond_3

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$d;->f:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    sget p2, Lcom/hiya/stingray/o;->G3:I

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const-string p3, "searchText"

    invoke-static {p1, p3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\ud83d\udc2c"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$d;->f:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->X()Lcom/hiya/stingray/ui/local/location/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hiya/stingray/ui/local/location/a;->e()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->t(Ljava/util/List;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$d;->f:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->a0()Lcom/hiya/stingray/ui/local/location/f;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$d;->f:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    invoke-virtual {v0, p2}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    invoke-static {p2, p3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/local/location/f;->z(Ljava/lang/String;)V

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
