.class final Lcom/hiya/stingray/ui/local/common/NavigationTabBar$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$c;->f:Lcom/hiya/stingray/ui/local/common/NavigationTabBar;

    iput-object p2, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$c;->g:Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$c;->f:Lcom/hiya/stingray/ui/local/common/NavigationTabBar;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->getLongPressedCallback()Lkotlin/w/b/l;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$c;->f:Lcom/hiya/stingray/ui/local/common/NavigationTabBar;

    invoke-static {v0}, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->b(Lcom/hiya/stingray/ui/local/common/NavigationTabBar;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$c;->g:Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
