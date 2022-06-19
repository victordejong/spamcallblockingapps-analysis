.class final Lcom/hiya/stingray/ui/local/h/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/h/b;->h(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/h/b;

.field final synthetic g:I


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/h/b;I)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/h/b$a;->f:Lcom/hiya/stingray/ui/local/h/b;

    iput p2, p0, Lcom/hiya/stingray/ui/local/h/b$a;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/h/b$a;->f:Lcom/hiya/stingray/ui/local/h/b;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/h/b;->t()Lkotlin/w/b/l;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/h/b$a;->f:Lcom/hiya/stingray/ui/local/h/b;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/h/b;->u()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/hiya/stingray/ui/local/h/b$a;->g:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/r;

    :cond_0
    return-void
.end method
