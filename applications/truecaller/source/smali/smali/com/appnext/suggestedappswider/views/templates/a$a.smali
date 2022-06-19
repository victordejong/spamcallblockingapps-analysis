.class public final Lcom/appnext/suggestedappswider/views/templates/a$a;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/suggestedappswider/views/templates/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/appnext/suggestedappswider/views/templates/ANSuggestedAppsWiderTemplateAdapter$ANCollectionTemplateViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateItemBinding;",
        "(Lcom/appnext/suggestedappswider/views/templates/ANSuggestedAppsWiderTemplateAdapter;Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateItemBinding;)V",
        "getBinding",
        "()Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateItemBinding;",
        "SuggestedAppsWider_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final hB:Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateItemBinding;

.field public final synthetic hC:Lcom/appnext/suggestedappswider/views/templates/a;


# direct methods
.method public constructor <init>(Lcom/appnext/suggestedappswider/views/templates/a;Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateItemBinding;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateItemBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binding"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/appnext/suggestedappswider/views/templates/a$a;->hC:Lcom/appnext/suggestedappswider/views/templates/a;

    .line 2
    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    .line 3
    iput-object p2, p0, Lcom/appnext/suggestedappswider/views/templates/a$a;->hB:Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateItemBinding;

    return-void
.end method


# virtual methods
.method public final bu()Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateItemBinding;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/suggestedappswider/views/templates/a$a;->hB:Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateItemBinding;

    return-object v0
.end method
