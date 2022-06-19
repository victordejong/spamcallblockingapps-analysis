.class public final Le/a/c/a/n/c/d/c/b;
.super Le/a/c/a/a/a/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/c/a/a/a/a/e<",
        "Lcom/truecaller/insights/ui/models/AdapterItem$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Le/a/c/a/g/u;

.field public final f:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Ljava/lang/Integer;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Le/a/c/a/n/c/d/a;


# direct methods
.method public constructor <init>(Le/a/c/a/g/u;Le/a/c/a/i/h;Ls1/z/b/l;Le/a/c/a/n/c/d/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/a/g/u;",
            "Le/a/c/a/i/h;",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Integer;",
            "Ls1/s;",
            ">;",
            "Le/a/c/a/n/c/d/a;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifeCycleAwareAnalyticsLogger"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCollapseStateChanged"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collapseState"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/c/a/g/u;->a:Landroid/widget/FrameLayout;

    const-string v1, "binding.root"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Le/a/c/a/a/a/a/e;-><init>(Landroid/view/View;Le/a/c/a/i/h;)V

    iput-object p1, p0, Le/a/c/a/n/c/d/c/b;->e:Le/a/c/a/g/u;

    iput-object p3, p0, Le/a/c/a/n/c/d/c/b;->f:Ls1/z/b/l;

    iput-object p4, p0, Le/a/c/a/n/c/d/c/b;->g:Le/a/c/a/n/c/d/a;

    return-void
.end method


# virtual methods
.method public S4(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/truecaller/insights/ui/models/AdapterItem$b;

    const-string v0, "item"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
