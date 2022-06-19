.class final Lcom/hiya/stingray/ui/callergrid/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/callergrid/e;->r1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/callergrid/e;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/callergrid/e;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/callergrid/e$b;->f:Lcom/hiya/stingray/ui/callergrid/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/callergrid/e$b;->f:Lcom/hiya/stingray/ui/callergrid/e;

    invoke-static {p1}, Lcom/hiya/stingray/ui/callergrid/e;->j1(Lcom/hiya/stingray/ui/callergrid/e;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/callergrid/e$b;->f:Lcom/hiya/stingray/ui/callergrid/e;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/callergrid/e;->l1()Lcom/hiya/stingray/ui/login/o;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/e$b;->f:Lcom/hiya/stingray/ui/callergrid/e;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hiya/stingray/ui/callergrid/e$b;->f:Lcom/hiya/stingray/ui/callergrid/e;

    .line 3
    sget-object v2, Lcom/hiya/stingray/util/n;->f:[Ljava/lang/String;

    const/16 v3, 0x1775

    .line 4
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/hiya/stingray/ui/login/o;->g(Landroid/app/Activity;Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
