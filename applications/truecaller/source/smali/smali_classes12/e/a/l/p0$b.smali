.class public final Le/a/l/p0$b;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/l/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final i:Lcom/truecaller/premium/data/PremiumType;

.field public final j:I


# direct methods
.method public constructor <init>(Lcom/truecaller/premium/data/PremiumType;ILandroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "premiumType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getLifecycle()Ln3/v/u;

    move-result-object p3

    invoke-direct {p0, v0, p3}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ln3/v/u;)V

    .line 2
    iput-object p1, p0, Le/a/l/p0$b;->i:Lcom/truecaller/premium/data/PremiumType;

    iput p2, p0, Le/a/l/p0$b;->j:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/l/p0$b;->j:I

    return v0
.end method

.method public h(I)Landroidx/fragment/app/Fragment;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/l/p0$b;->i:Lcom/truecaller/premium/data/PremiumType;

    const-string v1, "premiumType"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Le/a/l/a1;

    invoke-direct {v1}, Le/a/l/a1;-><init>()V

    .line 4
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "type"

    .line 5
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "page_number"

    .line 6
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method
