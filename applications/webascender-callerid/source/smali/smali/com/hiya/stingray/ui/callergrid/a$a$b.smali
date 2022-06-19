.class final Lcom/hiya/stingray/ui/callergrid/a$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/callergrid/a$a;->p(Landroid/content/Context;ILcom/hiya/stingray/t/g0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/callergrid/a$a;

.field final synthetic g:Lcom/hiya/stingray/t/g0;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/callergrid/a$a;Lcom/hiya/stingray/t/g0;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/callergrid/a$a$b;->f:Lcom/hiya/stingray/ui/callergrid/a$a;

    iput-object p2, p0, Lcom/hiya/stingray/ui/callergrid/a$a$b;->g:Lcom/hiya/stingray/t/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/callergrid/a$a$b;->f:Lcom/hiya/stingray/ui/callergrid/a$a;

    invoke-static {p1}, Lcom/hiya/stingray/ui/callergrid/a$a;->n(Lcom/hiya/stingray/ui/callergrid/a$a;)Lkotlin/w/b/p;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/a$a$b;->g:Lcom/hiya/stingray/t/g0;

    invoke-virtual {v0}, Lcom/hiya/stingray/t/g0;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/callergrid/a$a$b;->g:Lcom/hiya/stingray/t/g0;

    invoke-virtual {v1}, Lcom/hiya/stingray/t/g0;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lkotlin/w/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/r;

    :cond_0
    return-void
.end method
