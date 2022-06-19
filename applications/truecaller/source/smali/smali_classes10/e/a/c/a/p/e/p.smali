.class public final Le/a/c/a/p/e/p;
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
.field public final synthetic b:Le/a/c/a/p/e/f;


# direct methods
.method public constructor <init>(Le/a/c/a/p/e/f;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/p/e/p;->b:Le/a/c/a/p/e/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/a/p/e/p;->b:Le/a/c/a/p/e/f;

    .line 2
    sget-object v1, Le/a/c/a/p/e/f;->m:[Ls1/a/l;

    .line 3
    invoke-virtual {v0}, Le/a/c/a/p/e/f;->RA()Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    move-result-object v0

    .line 4
    iget-object v1, v0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->e:Lq3/a/x2/a1;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v2}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->w:Le/a/c/a/i/h;

    sget-object v1, Le/a/c/a/c/i/a;->i:Le/a/c/a/c/i/a;

    .line 6
    sget-object v1, Le/a/c/a/c/i/a;->b:Le/a/c/r/d/b;

    .line 7
    invoke-interface {v0, v1}, Le/a/c/a/i/h;->Zd(Le/a/c/r/d/b;)V

    .line 8
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
