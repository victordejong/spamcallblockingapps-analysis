.class public final Le/a/h/b/b$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/b;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/h/b/b$a;->a:I

    iput-object p2, p0, Le/a/h/b/b$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget p1, p0, Le/a/h/b/b$a;->a:I

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1
    iget-object p1, p0, Le/a/h/b/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/h/b/b;

    .line 2
    sget v1, Le/a/h/b/b;->c:I

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "activity ?: return"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Le/a/h/b/b;->OA()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;->ORDER_TCGM:Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;

    invoke-static {v1, p1, p2, v0, v2}, Le/a/w4/s/b0;->PA(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;)V

    :cond_0
    return-void

    .line 5
    :cond_1
    throw p2

    .line 6
    :cond_2
    iget-object p1, p0, Le/a/h/b/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/h/b/b;

    .line 7
    sget v0, Le/a/h/b/b;->c:I

    .line 8
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    instance-of v1, v0, Le/a/h/b/i;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move-object p2, v0

    :goto_0
    check-cast p2, Le/a/h/b/i;

    if-eqz p2, :cond_4

    .line 9
    sget-object v0, Lcom/truecaller/calling/dialer/DialerMode;->STANDALONE:Lcom/truecaller/calling/dialer/DialerMode;

    invoke-virtual {p1}, Le/a/h/b/b;->OA()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Le/a/h/b/i;->x5(Lcom/truecaller/calling/dialer/DialerMode;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
