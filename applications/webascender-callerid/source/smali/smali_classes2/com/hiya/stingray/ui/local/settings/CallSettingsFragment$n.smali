.class final synthetic Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$n;
.super Lkotlin/w/c/i;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->z1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/i;",
        "Lkotlin/w/b/l<",
        "Landroid/content/Context;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/settings/d;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lkotlin/w/c/i;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "isScreenedCallsIdEnabled"

    return-object v0
.end method

.method public final e()Lkotlin/a0/c;
    .locals 1

    const-class v0, Lcom/hiya/stingray/ui/local/settings/d;

    invoke-static {v0}, Lkotlin/w/c/r;->b(Ljava/lang/Class;)Lkotlin/a0/b;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "isScreenedCallsIdEnabled(Landroid/content/Context;)Z"

    return-object v0
.end method

.method public final g(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "p1"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/w/c/c;->g:Ljava/lang/Object;

    check-cast v0, Lcom/hiya/stingray/ui/local/settings/d;

    .line 1
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/local/settings/d;->y(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$n;->g(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
