.class public abstract Lcom/hiya/stingray/ui/local/f/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/local/f/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/hiya/stingray/ui/local/f/g<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Lcom/hiya/stingray/ui/local/f/m/f;

.field public b:Lcom/hiya/stingray/ui/local/f/m/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$d0;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$d0;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1, p2}, Lcom/hiya/stingray/ui/local/f/g$a;->a(Lcom/hiya/stingray/ui/local/f/g;Landroidx/recyclerview/widget/RecyclerView$d0;Ljava/lang/Object;)V

    return-void
.end method

.method public abstract e(I)I
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/a;->b:Lcom/hiya/stingray/ui/local/f/m/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/hiya/stingray/ui/local/f/m/f;->l()V

    return-void

    :cond_0
    const-string v0, "onChangeListener"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/a;->a:Lcom/hiya/stingray/ui/local/f/m/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/hiya/stingray/ui/local/f/m/f;->l()V

    return-void

    :cond_0
    const-string v0, "onSectionItemChangeListener"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final h(Lcom/hiya/stingray/ui/local/f/m/f;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/a;->b:Lcom/hiya/stingray/ui/local/f/m/f;

    return-void
.end method

.method public final i(Lcom/hiya/stingray/ui/local/f/m/f;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/a;->a:Lcom/hiya/stingray/ui/local/f/m/f;

    return-void
.end method
