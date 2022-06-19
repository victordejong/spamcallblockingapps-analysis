.class public final Lcom/appnext/suggestedappswider/views/templates/grid_suggestedappswider_template/ANGridSuggestedAppsWiderTemplateView$1;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/suggestedappswider/views/templates/grid_suggestedappswider_template/ANGridSuggestedAppsWiderTemplateView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/appnext/suggestedappswider/views/templates/grid_suggestedappswider_template/ANGridSuggestedAppsWiderTemplateView$1",
        "Landroidx/recyclerview/widget/GridLayoutManager;",
        "canScrollHorizontally",
        "",
        "canScrollVertically",
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
.field public final synthetic $context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/appnext/suggestedappswider/views/templates/grid_suggestedappswider_template/ANGridSuggestedAppsWiderTemplateView$1;->$context:Landroid/content/Context;

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final canScrollHorizontally()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final canScrollVertically()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
