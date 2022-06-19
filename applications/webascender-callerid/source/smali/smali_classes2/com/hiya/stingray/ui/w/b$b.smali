.class final Lcom/hiya/stingray/ui/w/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/w/b;->r(Lcom/hiya/stingray/t/n0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/w/b;

.field final synthetic g:Lcom/hiya/stingray/t/n0;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/w/b;Lcom/hiya/stingray/t/n0;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/w/b$b;->f:Lcom/hiya/stingray/ui/w/b;

    iput-object p2, p0, Lcom/hiya/stingray/ui/w/b$b;->g:Lcom/hiya/stingray/t/n0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/w/b$b;->f:Lcom/hiya/stingray/ui/w/b;

    invoke-static {p1}, Lcom/hiya/stingray/ui/w/b;->n(Lcom/hiya/stingray/ui/w/b;)Lkotlin/w/b/l;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/ui/w/b$b;->g:Lcom/hiya/stingray/t/n0;

    invoke-interface {p1, v0}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/r;

    :cond_0
    return-void
.end method
