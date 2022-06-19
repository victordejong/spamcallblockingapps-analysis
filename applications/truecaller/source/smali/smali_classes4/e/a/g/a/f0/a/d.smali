.class public final Le/a/g/a/f0/a/d;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/u2/a/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/g/a/f0/a/c;",
        ">;",
        "Le/a/g/a/f0/a/d;"
    }
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public c:Le/a/g/a/f0/a/b;

.field public d:Z

.field public final e:Le/a/g/j/w;

.field public final f:Le/a/d4/a;

.field public final g:Le/a/u3/g;


# direct methods
.method public constructor <init>(Le/a/g/j/w;Le/a/d4/a;Le/a/u3/g;)V
    .locals 1
    .param p3    # Le/a/u3/g;
        .annotation runtime Ljavax/inject/Named;
            value = "features_registry"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "rateAppHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appMarketUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureRegistry"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/g/a/f0/a/d;->e:Le/a/g/j/w;

    iput-object p2, p0, Le/a/g/a/f0/a/d;->f:Le/a/d4/a;

    iput-object p3, p0, Le/a/g/a/f0/a/d;->g:Le/a/u3/g;

    return-void
.end method


# virtual methods
.method public final Hj()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/g/a/f0/a/d;->e:Le/a/g/j/w;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FEEDBACK_LAST_DISMISSED"

    .line 3
    invoke-static {v0}, Le/a/j4/b/a/h;->B(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Le/a/g/a/f0/a/d;->e:Le/a/g/j/w;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FEEDBACK_DISMISSED_COUNT"

    .line 6
    invoke-static {v0}, Le/a/j4/b/a/h;->l(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Le/a/j4/b/a/h;->w(Ljava/lang/String;J)V

    .line 7
    iget-object v1, p0, Le/a/g/a/f0/a/d;->e:Le/a/g/j/w;

    .line 8
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    int-to-long v1, v1

    .line 9
    invoke-static {v0, v1, v2}, Le/a/j4/b/a/h;->r(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/g/a/f0/a/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/g/a/f0/a/c;->c()V

    :cond_0
    return-void
.end method
