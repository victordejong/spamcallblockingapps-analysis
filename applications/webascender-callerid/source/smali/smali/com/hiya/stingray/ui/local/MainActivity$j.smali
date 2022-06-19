.class final Lcom/hiya/stingray/ui/local/MainActivity$j;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/MainActivity;->k0(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/l<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/MainActivity;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/MainActivity$j;->f:Lcom/hiya/stingray/ui/local/MainActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity$j;->f:Lcom/hiya/stingray/ui/local/MainActivity;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/MainActivity;->Z()[Lcom/hiya/stingray/ui/local/MainActivity$c;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 3
    aget-object v4, v0, v3

    .line 4
    invoke-virtual {v4}, Lcom/hiya/stingray/ui/local/MainActivity$c;->a()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/hiya/stingray/ui/local/settings/n;

    invoke-static {v4, v5}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_1
    if-ne p1, v3, :cond_2

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/MainActivity$j;->f:Lcom/hiya/stingray/ui/local/MainActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/MainActivity$j;->f:Lcom/hiya/stingray/ui/local/MainActivity;

    const-class v2, Lcom/hiya/stingray/ui/setting/DebugActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/MainActivity$j;->a(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
