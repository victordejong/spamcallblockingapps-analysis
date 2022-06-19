.class final Lcom/hiya/stingray/ui/premium/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/premium/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/premium/b;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/premium/b;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/premium/b$b;->f:Lcom/hiya/stingray/ui/premium/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/b$b;->f:Lcom/hiya/stingray/ui/premium/b;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/premium/b;->h1()Lcom/hiya/stingray/ui/premium/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/premium/d;->y()V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/b$b;->f:Lcom/hiya/stingray/ui/premium/b;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/premium/b;->g1()Lcom/hiya/stingray/ui/premium/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/premium/a;->a()V

    return-void
.end method
