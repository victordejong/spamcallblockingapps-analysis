.class final Lcom/hiya/stingray/ui/local/MainActivity$g;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/l<",
        "Landroidx/fragment/app/Fragment;",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/MainActivity;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/MainActivity$g;->f:Lcom/hiya/stingray/ui/local/MainActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/Fragment;)V
    .locals 3

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity$g;->f:Lcom/hiya/stingray/ui/local/MainActivity;

    invoke-static {v0}, Lcom/hiya/stingray/ui/local/MainActivity;->S(Lcom/hiya/stingray/ui/local/MainActivity;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/hiya/stingray/ui/local/MainActivity;->V(Lcom/hiya/stingray/ui/local/MainActivity;I)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity$g;->f:Lcom/hiya/stingray/ui/local/MainActivity;

    invoke-static {v0}, Lcom/hiya/stingray/ui/local/MainActivity;->Q(Lcom/hiya/stingray/ui/local/MainActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    instance-of v0, p1, Lcom/hiya/stingray/ui/local/common/g;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/hiya/stingray/ui/local/common/g;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/common/g;->o1()V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/MainActivity$g;->f:Lcom/hiya/stingray/ui/local/MainActivity;

    invoke-static {p1, v2}, Lcom/hiya/stingray/ui/local/MainActivity;->U(Lcom/hiya/stingray/ui/local/MainActivity;Z)V

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/MainActivity$g;->f:Lcom/hiya/stingray/ui/local/MainActivity;

    invoke-static {p1}, Lcom/hiya/stingray/ui/local/MainActivity;->S(Lcom/hiya/stingray/ui/local/MainActivity;)I

    move-result p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity$g;->f:Lcom/hiya/stingray/ui/local/MainActivity;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/MainActivity;->Z()[Lcom/hiya/stingray/ui/local/MainActivity$c;

    move-result-object v0

    array-length v0, v0

    if-ne p1, v0, :cond_3

    .line 6
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/MainActivity$g;->f:Lcom/hiya/stingray/ui/local/MainActivity;

    invoke-static {p1}, Lcom/hiya/stingray/ui/local/MainActivity;->T(Lcom/hiya/stingray/ui/local/MainActivity;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/MainActivity$g;->a(Landroidx/fragment/app/Fragment;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method
