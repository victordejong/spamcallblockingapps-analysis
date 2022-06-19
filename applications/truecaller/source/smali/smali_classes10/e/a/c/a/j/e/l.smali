.class public final Le/a/c/a/j/e/l;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/c/a/j/e/a;


# direct methods
.method public constructor <init>(Le/a/c/a/j/e/a;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/j/e/l;->b:Le/a/c/a/j/e/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/a/j/e/l;->b:Le/a/c/a/j/e/a;

    .line 2
    sget-object v1, Le/a/c/a/j/e/a;->j:[Ls1/a/l;

    .line 3
    invoke-virtual {v0}, Le/a/c/a/j/e/a;->TA()Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "dismiss"

    .line 4
    invoke-static {v0, v3, v1, v2}, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->g(Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;Ljava/lang/String;Ljava/lang/String;I)V

    .line 5
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
