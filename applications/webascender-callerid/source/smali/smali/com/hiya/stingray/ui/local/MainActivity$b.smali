.class public final Lcom/hiya/stingray/ui/local/MainActivity$b;
.super Landroidx/fragment/app/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/ui/local/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field private final j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/hiya/stingray/ui/local/common/g;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic k:Lcom/hiya/stingray/ui/local/MainActivity;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/ui/local/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/MainActivity$b;->k:Lcom/hiya/stingray/ui/local/MainActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/fragment/app/w;-><init>(Landroidx/fragment/app/n;)V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/MainActivity$b;->j:Ljava/util/HashMap;

    return-void
.end method

.method private final w(I)Lcom/hiya/stingray/ui/local/common/g;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/local/common/g;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/local/common/g;-><init>()V

    if-nez p1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/MainActivity$b;->k:Lcom/hiya/stingray/ui/local/MainActivity;

    invoke-virtual {v1}, Lcom/hiya/stingray/ui/local/MainActivity;->Z()[Lcom/hiya/stingray/ui/local/MainActivity$c;

    move-result-object v1

    aget-object p1, v1, p1

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/MainActivity$c;->a()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/local/common/g;->p1(Landroidx/fragment/app/Fragment;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/MainActivity$b;->k:Lcom/hiya/stingray/ui/local/MainActivity;

    invoke-static {p1}, Lcom/hiya/stingray/ui/local/MainActivity;->R(Lcom/hiya/stingray/ui/local/MainActivity;)Lkotlin/w/b/l;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/common/i;->e1(Lkotlin/w/b/l;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "object"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/w;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/MainActivity$b;->j:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity$b;->k:Lcom/hiya/stingray/ui/local/MainActivity;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/MainActivity;->Z()[Lcom/hiya/stingray/ui/local/MainActivity$c;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public h(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/w;->h(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "super.instantiateItem(container, position)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity$b;->j:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/hiya/stingray/ui/local/common/g;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.hiya.stingray.ui.local.common.HostFragment"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public t(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity$b;->j:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity$b;->j:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/local/MainActivity$b;->w(I)Lcom/hiya/stingray/ui/local/common/g;

    move-result-object p1

    return-object p1
.end method

.method public final u(I)Lcom/hiya/stingray/ui/local/common/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity$b;->j:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/ui/local/common/g;

    return-object p1
.end method

.method public final v(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity$b;->j:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Trying to initialize fragment before host fragment was initialized"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lr/a/a;->e(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity$b;->j:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v1, v0

    check-cast v1, Lcom/hiya/stingray/ui/local/common/g;

    .line 4
    invoke-virtual {v1}, Lcom/hiya/stingray/ui/local/common/g;->g1()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity$b;->k:Lcom/hiya/stingray/ui/local/MainActivity;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/MainActivity;->Z()[Lcom/hiya/stingray/ui/local/MainActivity$c;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/MainActivity$c;->a()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, p1}, Lcom/hiya/stingray/ui/local/common/g;->p1(Landroidx/fragment/app/Fragment;)V

    .line 6
    invoke-virtual {v1}, Lcom/hiya/stingray/ui/local/common/g;->g1()Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/hiya/stingray/ui/local/common/g;->n1(Lcom/hiya/stingray/ui/local/common/g;Landroidx/fragment/app/Fragment;ZZILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1

    :cond_2
    :goto_0
    return-void

    .line 7
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.hiya.stingray.ui.local.common.HostFragment"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
