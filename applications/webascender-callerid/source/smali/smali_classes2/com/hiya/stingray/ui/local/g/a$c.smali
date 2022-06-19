.class final Lcom/hiya/stingray/ui/local/g/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/g/a;->l1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/g/a;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/g/a;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/g/a$c;->f:Lcom/hiya/stingray/ui/local/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/g/a$c;->f:Lcom/hiya/stingray/ui/local/g/a;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/g/a;->j1()Lcom/hiya/stingray/ui/login/o;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/g/a$c;->f:Lcom/hiya/stingray/ui/local/g/a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/g/a$c;->f:Lcom/hiya/stingray/ui/local/g/a;

    invoke-virtual {v1}, Lcom/hiya/stingray/ui/local/g/a;->i1()Lcom/hiya/stingray/ui/local/g/a;

    .line 2
    sget-object v2, Lcom/hiya/stingray/util/n;->e:[Ljava/lang/String;

    const/16 v3, 0x1774

    .line 3
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/hiya/stingray/ui/login/o;->g(Landroid/app/Activity;Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)Z

    return-void

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1
.end method
