.class public final Lcom/hiya/stingray/ui/local/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/hiya/stingray/ui/common/i;Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "$this$pushFragment"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object p0

    instance-of v0, p0, Lcom/hiya/stingray/ui/local/MainActivity;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    check-cast p0, Lcom/hiya/stingray/ui/local/MainActivity;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/MainActivity;->f0(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "You should use pushFragment method only when fragment\'s Activity is derived from MainActivity"

    .line 2
    invoke-static {p1, p0}, Lr/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
