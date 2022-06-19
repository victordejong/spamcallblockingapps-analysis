.class public final Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;-><init>(Le/a/c/a/p/b/g;Le/a/c/a/j/a/b;Le/a/c/a/j/a/d;Le/a/c/c0/o;Le/a/c/a/j/a/c;Le/a/c/a/i/j;Le/a/c/h/d;Le/a/c/a/i/h;Le/a/c/a/i/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls1/z/b/l<",
        "Ljava/lang/Boolean;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel$a;->a:Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel$a;->a:Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    .line 3
    iput-boolean p1, v0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->a:Z

    .line 4
    iget-object v0, v0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->c:Ln3/v/k0;

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Ln3/v/k0;->l(Ljava/lang/Object;)V

    .line 6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
