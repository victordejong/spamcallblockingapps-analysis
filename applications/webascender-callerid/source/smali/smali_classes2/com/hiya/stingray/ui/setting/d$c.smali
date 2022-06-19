.class final Lcom/hiya/stingray/ui/setting/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/setting/d;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/u<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/ui/setting/d;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/setting/d;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/setting/d$c;->a:Lcom/hiya/stingray/ui/setting/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/setting/d$c;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final b(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/d$c;->a:Lcom/hiya/stingray/ui/setting/d;

    sget v1, Lcom/hiya/stingray/o;->W1:I

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/setting/d;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v1, "loadingView"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/hiya/stingray/util/e0;->z(Landroid/view/View;Z)V

    return-void
.end method
