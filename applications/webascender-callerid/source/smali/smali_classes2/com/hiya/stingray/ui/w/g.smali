.class public final Lcom/hiya/stingray/ui/w/g;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source "SourceFile"


# instance fields
.field private final a:Lkotlin/w/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/w/b/a<",
            "Lkotlin/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lkotlin/w/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/w/b/a<",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tapCallback"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/hiya/stingray/ui/w/g;->a:Lkotlin/w/b/a;

    return-void
.end method

.method public static final synthetic n(Lcom/hiya/stingray/ui/w/g;)Lkotlin/w/b/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/w/g;->a:Lkotlin/w/b/a;

    return-object p0
.end method


# virtual methods
.method public final o()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/hiya/stingray/o;->f0:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/hiya/stingray/ui/w/g$a;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/w/g$a;-><init>(Lcom/hiya/stingray/ui/w/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
