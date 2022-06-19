.class final Lcom/hiya/client/callerid/ui/overlay/f$a;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/overlay/f;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/a<",
        "[",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/overlay/f;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/overlay/f;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/overlay/f$a;->f:Lcom/hiya/client/callerid/ui/overlay/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()[Landroid/widget/TextView;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/TextView;

    .line 1
    iget-object v1, p0, Lcom/hiya/client/callerid/ui/overlay/f$a;->f:Lcom/hiya/client/callerid/ui/overlay/f;

    invoke-static {v1}, Lcom/hiya/client/callerid/ui/overlay/f;->a(Lcom/hiya/client/callerid/ui/overlay/f;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/hiya/client/callerid/ui/p;->f0:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    iget-object v1, p0, Lcom/hiya/client/callerid/ui/overlay/f$a;->f:Lcom/hiya/client/callerid/ui/overlay/f;

    invoke-static {v1}, Lcom/hiya/client/callerid/ui/overlay/f;->a(Lcom/hiya/client/callerid/ui/overlay/f;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/hiya/client/callerid/ui/p;->b0:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    iget-object v1, p0, Lcom/hiya/client/callerid/ui/overlay/f$a;->f:Lcom/hiya/client/callerid/ui/overlay/f;

    invoke-static {v1}, Lcom/hiya/client/callerid/ui/overlay/f;->a(Lcom/hiya/client/callerid/ui/overlay/f;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/hiya/client/callerid/ui/p;->c0:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/overlay/f$a;->a()[Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method
