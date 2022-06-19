.class public final Le/a/c/a/p/d/m;
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


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/p/d/m;->a:Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    const-string v0, "isOutdated"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Le/a/c/a/p/d/m;->a:Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    .line 4
    iget-object p1, p1, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->c:Ln3/v/k0;

    .line 5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ln3/v/k0;->j(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Le/a/c/a/p/d/m;->a:Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    .line 7
    iget-object p1, p1, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->s:Le/a/c/c0/o;

    const/4 v0, 0x0

    .line 8
    invoke-interface {p1, v0}, Le/a/c/c0/o;->g(Z)V

    :cond_0
    return-void
.end method
