.class public final synthetic Le/e/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/appnext/suggestedappswider/a/a;

.field public final synthetic b:Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/appnext/suggestedappswider/a/a;Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/e/a/a/c;->a:Lcom/appnext/suggestedappswider/a/a;

    iput-object p2, p0, Le/e/a/a/c;->b:Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le/e/a/a/c;->a:Lcom/appnext/suggestedappswider/a/a;

    iget-object v1, p0, Le/e/a/a/c;->b:Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;

    invoke-static {v0, v1}, Lcom/appnext/suggestedappswider/a/a;->i(Lcom/appnext/suggestedappswider/a/a;Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;)V

    return-void
.end method
