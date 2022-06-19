.class final Lcom/hiya/stingray/ui/local/common/NavigationTabBar$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->d(ILjava/lang/Integer;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/common/NavigationTabBar;

.field final synthetic g:Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/common/NavigationTabBar;Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$b;->f:Lcom/hiya/stingray/ui/local/common/NavigationTabBar;

    iput-object p2, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$b;->g:Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$b;->f:Lcom/hiya/stingray/ui/local/common/NavigationTabBar;

    invoke-static {p1}, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->b(Lcom/hiya/stingray/ui/local/common/NavigationTabBar;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$b;->g:Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$b;->f:Lcom/hiya/stingray/ui/local/common/NavigationTabBar;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->getSelectedIndex()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$b;->f:Lcom/hiya/stingray/ui/local/common/NavigationTabBar;

    invoke-virtual {v1, p1}, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->setSelectedIndex(I)V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$b;->f:Lcom/hiya/stingray/ui/local/common/NavigationTabBar;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->getSelectedCallback()Lkotlin/w/b/p;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$b;->f:Lcom/hiya/stingray/ui/local/common/NavigationTabBar;

    invoke-virtual {v1}, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->getSelectedIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lkotlin/w/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/r;

    :cond_0
    return-void
.end method
