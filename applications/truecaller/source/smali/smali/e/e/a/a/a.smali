.class public final synthetic Le/e/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;

.field public final synthetic b:Lcom/appnext/suggestedappswider/a/a;

.field public final synthetic c:I

.field public final synthetic d:Lcom/appnext/suggestedappswider/a/a$a;


# direct methods
.method public synthetic constructor <init>(Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;Lcom/appnext/suggestedappswider/a/a;ILcom/appnext/suggestedappswider/a/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/e/a/a/a;->a:Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;

    iput-object p2, p0, Le/e/a/a/a;->b:Lcom/appnext/suggestedappswider/a/a;

    iput p3, p0, Le/e/a/a/a;->c:I

    iput-object p4, p0, Le/e/a/a/a;->d:Lcom/appnext/suggestedappswider/a/a$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Le/e/a/a/a;->a:Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;

    iget-object v1, p0, Le/e/a/a/a;->b:Lcom/appnext/suggestedappswider/a/a;

    iget v2, p0, Le/e/a/a/a;->c:I

    iget-object v3, p0, Le/e/a/a/a;->d:Lcom/appnext/suggestedappswider/a/a$a;

    invoke-static {v0, v1, v2, v3}, Lcom/appnext/suggestedappswider/a/a;->f(Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;Lcom/appnext/suggestedappswider/a/a;ILcom/appnext/suggestedappswider/a/a$a;)V

    return-void
.end method
