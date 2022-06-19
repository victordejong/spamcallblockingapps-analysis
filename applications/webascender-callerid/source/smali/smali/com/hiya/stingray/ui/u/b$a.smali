.class final Lcom/hiya/stingray/ui/u/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/u/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/u/b;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/u/b;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/u/b$a;->f:Lcom/hiya/stingray/ui/u/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/u/b$a;->f:Lcom/hiya/stingray/ui/u/b;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/u/b;->g1()Lcom/hiya/stingray/ui/u/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/u/e;->D()V

    return-void
.end method
