.class public final Lcom/hiya/stingray/ui/local/search/e$f;
.super Landroidx/recyclerview/widget/RecyclerView$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/search/e;-><init>(Landroid/content/Context;Lcom/hiya/stingray/ui/calllog/SearchListAdapter;Lcom/hiya/stingray/ui/local/common/c;Lcom/hiya/stingray/manager/x3;Lcom/hiya/stingray/ui/login/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/ui/local/search/e;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/search/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/search/e$f;->a:Lcom/hiya/stingray/ui/local/search/e;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/e$f;->a:Lcom/hiya/stingray/ui/local/search/e;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/search/e;->c()Lcom/hiya/stingray/ui/local/common/c;

    move-result-object v0

    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/local/common/c;->h(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/e$f;->a:Lcom/hiya/stingray/ui/local/search/e;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/search/e;->c()Lcom/hiya/stingray/ui/local/common/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/local/common/c;->i(Z)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/e$f;->a:Lcom/hiya/stingray/ui/local/search/e;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method
