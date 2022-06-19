.class public final Le/a/c/c/f/a;
.super Le/q/a/a/b/b;
.source "SourceFile"


# instance fields
.field public final a:Le/a/c/c/d/a;

.field public final b:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/c/c/d/a;Ls1/w/f;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "accountMappingRuleModelDao"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/q/a/a/b/b;-><init>()V

    iput-object p1, p0, Le/a/c/c/f/a;->a:Le/a/c/c/d/a;

    iput-object p2, p0, Le/a/c/c/f/a;->b:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a(Le/q/a/d/b;)V
    .locals 2

    const-string v0, "accountMappingRuleModel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/c/f/a;->a:Le/a/c/c/d/a;

    const-string v1, "$this$convertToInsightsAccountMappingRuleModel"

    .line 2
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    check-cast p1, Le/a/c/r/e/a/b;

    .line 4
    invoke-interface {v0, p1}, Le/a/c/c/d/a;->a(Le/a/c/r/e/a/b;)V

    return-void
.end method

.method public b(Ljava/lang/Long;)Le/q/a/d/b;
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    iget-object v0, p0, Le/a/c/c/f/a;->a:Le/a/c/c/d/a;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Le/a/c/c/d/a;->b(J)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/c/r/e/a/b;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public c(Ljava/lang/Long;)Le/q/a/d/b;
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    iget-object v0, p0, Le/a/c/c/f/a;->a:Le/a/c/c/d/a;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Le/a/c/c/d/a;->b(J)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/c/r/e/a/b;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
