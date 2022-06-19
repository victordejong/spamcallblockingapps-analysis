.class final Lcom/hiya/stingray/ui/local/common/c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/common/c$a;->n(Lcom/hiya/stingray/t/h1/d;Landroid/content/Context;Lkotlin/w/b/l;Lkotlin/w/b/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lkotlin/w/b/l;

.field final synthetic g:Lcom/hiya/stingray/t/h1/d;


# direct methods
.method constructor <init>(Lkotlin/w/b/l;Lcom/hiya/stingray/t/h1/d;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/common/c$a$a;->f:Lkotlin/w/b/l;

    iput-object p2, p0, Lcom/hiya/stingray/ui/local/common/c$a$a;->g:Lcom/hiya/stingray/t/h1/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/common/c$a$a;->f:Lkotlin/w/b/l;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/common/c$a$a;->g:Lcom/hiya/stingray/t/h1/d;

    invoke-interface {p1, v0}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/r;

    :cond_0
    return-void
.end method
