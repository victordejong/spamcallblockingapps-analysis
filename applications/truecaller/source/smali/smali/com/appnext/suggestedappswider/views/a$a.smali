.class public final Lcom/appnext/suggestedappswider/views/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/suggestedappswider/views/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdsViewFactory$Companion;",
        "",
        "()V",
        "getANCollectionViewByTemplate",
        "Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView;",
        "context",
        "Landroid/content/Context;",
        "template",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ls1/z/c/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/appnext/suggestedappswider/views/a$a;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;I)Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView;
    .locals 0

    const-string p1, "context"

    invoke-static {p0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance p1, Lcom/appnext/suggestedappswider/views/templates/grid_suggestedappswider_template/ANGridSuggestedAppsWiderTemplateView;

    invoke-direct {p1, p0}, Lcom/appnext/suggestedappswider/views/templates/grid_suggestedappswider_template/ANGridSuggestedAppsWiderTemplateView;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "ANSuggestedAppsWiderAdsViewFactory$getANCollectionViewByTemplate"

    .line 2
    invoke-static {p1, p0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
