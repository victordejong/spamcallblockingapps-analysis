.class public final Le/a/c/a/p/d/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

.field public final synthetic b:Ln3/v/b0;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;Ln3/v/b0;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/p/d/l;->a:Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    iput-object p2, p0, Le/a/c/a/p/d/l;->b:Ln3/v/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    iget-object v0, p0, Le/a/c/a/p/d/l;->b:Ln3/v/b0;

    invoke-interface {v0}, Ln3/v/b0;->getLifecycle()Ln3/v/u;

    move-result-object v0

    const-string v1, "lifecycleOwner.lifecycle"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ln3/v/c0;

    .line 3
    iget-object v0, v0, Ln3/v/c0;->c:Ln3/v/u$b;

    .line 4
    sget-object v1, Ln3/v/u$b;->e:Ln3/v/u$b;

    const/4 v2, 0x0

    const-string v3, "isUpdated"

    if-ne v0, v1, :cond_0

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p0, Le/a/c/a/p/d/l;->a:Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    .line 6
    iget-object p1, p1, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->s:Le/a/c/c0/o;

    invoke-interface {p1, v2}, Le/a/c/c0/o;->t(Z)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Le/a/c/a/p/d/l;->a:Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    .line 8
    iget-object v0, v0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->v:Le/a/c/h/d;

    .line 9
    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1, v2}, Le/a/c/h/d;->a(ZI)V

    :goto_0
    return-void
.end method
