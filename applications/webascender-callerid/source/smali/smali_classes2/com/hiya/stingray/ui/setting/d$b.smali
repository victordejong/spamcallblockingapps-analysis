.class final Lcom/hiya/stingray/ui/setting/d$b;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/ui/setting/d;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/setting/d;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/setting/d$b;->a:Lcom/hiya/stingray/ui/setting/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/setting/d$b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/d$b;->a:Lcom/hiya/stingray/ui/setting/d;

    sget v1, Lcom/hiya/stingray/o;->O2:I

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/setting/d;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "phoneTextView"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
