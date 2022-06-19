.class final Lcom/hiya/stingray/manager/g1$g;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/g1;->h()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/manager/g1;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/g1;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/g1$g;->f:Lcom/hiya/stingray/manager/g1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/g1$g;->invoke()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Z
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/g1$g;->f:Lcom/hiya/stingray/manager/g1;

    invoke-static {v0}, Lcom/hiya/stingray/manager/g1;->b(Lcom/hiya/stingray/manager/g1;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/manager/g1$g;->f:Lcom/hiya/stingray/manager/g1;

    invoke-static {v1}, Lcom/hiya/stingray/manager/g1;->b(Lcom/hiya/stingray/manager/g1;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "telecom"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/telecom/TelecomManager;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v1, v3

    :cond_0
    check-cast v1, Landroid/telecom/TelecomManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-static {v0, v3}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
