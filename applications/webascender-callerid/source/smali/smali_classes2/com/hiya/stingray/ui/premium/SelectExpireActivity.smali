.class public final Lcom/hiya/stingray/ui/premium/SelectExpireActivity;
.super Lcom/hiya/stingray/ui/common/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/premium/SelectExpireActivity$a;
    }
.end annotation


# static fields
.field public static final r:Lcom/hiya/stingray/ui/premium/SelectExpireActivity$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hiya/stingray/ui/premium/SelectExpireActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hiya/stingray/ui/premium/SelectExpireActivity$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lcom/hiya/stingray/ui/premium/SelectExpireActivity;->r:Lcom/hiya/stingray/ui/premium/SelectExpireActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/e;-><init>()V

    return-void
.end method

.method public static final O(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/hiya/stingray/ui/premium/SelectExpireActivity;->r:Lcom/hiya/stingray/ui/premium/SelectExpireActivity$a;

    invoke-virtual {v0, p0}, Lcom/hiya/stingray/ui/premium/SelectExpireActivity$a;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/e;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/e;->z()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->c(Lcom/hiya/stingray/ui/common/e;)V

    const p1, 0x7f0c0027

    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/c;->setContentView(I)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/n;->n()Landroidx/fragment/app/y;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/hiya/stingray/ui/premium/u;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/premium/u;-><init>()V

    const v1, 0x7f090126

    .line 6
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/y;->r(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/y;

    .line 7
    invoke-virtual {p1}, Landroidx/fragment/app/y;->i()I

    return-void
.end method
