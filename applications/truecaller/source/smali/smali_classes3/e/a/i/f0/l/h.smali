.class public final Le/a/i/f0/l/h;
.super Le/a/y2/k;
.source "SourceFile"


# instance fields
.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/f0/l/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/i/f0/l/f;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "refreshManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/y2/k;-><init>()V

    iput-object p1, p0, Le/a/i/f0/l/h;->b:Lo3/a;

    return-void
.end method


# virtual methods
.method public a()Landroidx/work/ListenableWorker$a;
    .locals 3

    .line 1
    new-instance v0, Le/a/i/f0/l/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/i/f0/l/h$a;-><init>(Le/a/i/f0/l/h;Ls1/w/d;)V

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/ListenableWorker$a;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "AdsConsentRefreshAction"

    return-object v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
