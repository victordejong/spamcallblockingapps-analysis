.class public final synthetic Le/e/a/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/appnext/suggestedappswider/views/templates/a;

.field public final synthetic b:Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/appnext/suggestedappswider/views/templates/a;Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/e/a/b/a/a;->a:Lcom/appnext/suggestedappswider/views/templates/a;

    iput-object p2, p0, Le/e/a/b/a/a;->b:Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Le/e/a/b/a/a;->a:Lcom/appnext/suggestedappswider/views/templates/a;

    iget-object v1, p0, Le/e/a/b/a/a;->b:Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;

    invoke-static {v0, v1, p1}, Lcom/appnext/suggestedappswider/views/templates/a;->e(Lcom/appnext/suggestedappswider/views/templates/a;Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;Landroid/view/View;)V

    return-void
.end method
