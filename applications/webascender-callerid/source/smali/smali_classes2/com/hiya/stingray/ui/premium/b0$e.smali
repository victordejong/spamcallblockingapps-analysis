.class final Lcom/hiya/stingray/ui/premium/b0$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/premium/b0;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/premium/b0;

.field final synthetic g:Lkotlin/w/b/l;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/premium/b0;Lkotlin/w/b/l;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/premium/b0$e;->f:Lcom/hiya/stingray/ui/premium/b0;

    iput-object p2, p0, Lcom/hiya/stingray/ui/premium/b0$e;->g:Lkotlin/w/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/b0$e;->g:Lkotlin/w/b/l;

    new-instance v0, Lcom/hiya/stingray/ui/premium/b0$e$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/premium/b0$e$a;-><init>(Lcom/hiya/stingray/ui/premium/b0$e;)V

    invoke-interface {p1, v0}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method
