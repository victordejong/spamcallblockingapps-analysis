.class final Lcom/hiya/stingray/ui/local/dialer/DialerFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filter$FilterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/dialer/DialerFragment;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/dialer/DialerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/dialer/DialerFragment$b;->f:Lcom/hiya/stingray/ui/local/dialer/DialerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFilterComplete(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/dialer/DialerFragment$b;->f:Lcom/hiya/stingray/ui/local/dialer/DialerFragment;

    sget v0, Lcom/hiya/stingray/o;->E3:I

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "searchRecyclerView"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
