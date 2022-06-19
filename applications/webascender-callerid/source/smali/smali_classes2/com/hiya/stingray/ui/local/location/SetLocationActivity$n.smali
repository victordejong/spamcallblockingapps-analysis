.class final Lcom/hiya/stingray/ui/local/location/SetLocationActivity$n;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/location/SetLocationActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/a<",
        "[",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$n;->f:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()[Landroid/view/View;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/view/View;

    .line 1
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$n;->f:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    sget v2, Lcom/hiya/stingray/o;->A2:I

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$n;->f:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    sget v2, Lcom/hiya/stingray/o;->Y4:I

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$n;->f:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    sget v2, Lcom/hiya/stingray/o;->m2:I

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$n;->f:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    sget v2, Lcom/hiya/stingray/o;->F3:I

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$n;->f:Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    sget v2, Lcom/hiya/stingray/o;->h3:I

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$n;->a()[Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
