.class public final Le/a/o/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o/b/d;


# instance fields
.field public a:Lcom/truecaller/contextcall/utils/SavedReasonsState;

.field public final b:Le/a/q2/a;


# direct methods
.method public constructor <init>(Le/a/q2/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "analytics"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/o/b/e;->b:Le/a/q2/a;

    .line 2
    sget-object p1, Lcom/truecaller/contextcall/utils/SavedReasonsState;->NOT_IDENTIFIED:Lcom/truecaller/contextcall/utils/SavedReasonsState;

    iput-object p1, p0, Le/a/o/b/e;->a:Lcom/truecaller/contextcall/utils/SavedReasonsState;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "eventName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/o/b/e;->b:Le/a/q2/a;

    .line 2
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 5
    :cond_0
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_1
    new-instance p2, Le/a/q2/g$b$a;

    invoke-direct {p2, p1, v1, v2, v1}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    const-string p1, "AnalyticsEvent.Builder(e\u2026\n                .build()"

    .line 7
    invoke-static {p2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {v0, p2}, Le/a/q2/a;->e(Le/a/q2/g;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "messageId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/o/b/e;->b:Le/a/q2/a;

    new-instance v1, Le/a/o/m/a;

    invoke-direct {v1, p1}, Le/a/o/m/a;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Context"

    .line 2
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Setting"

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "State"

    .line 4
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Le/a/o/b/e;->b:Le/a/q2/a;

    .line 6
    new-instance p2, Le/a/q2/g$b$a;

    const/4 p3, 0x0

    const-string v1, "SettingChanged"

    invoke-direct {p2, v1, p3, v0, p3}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    const-string p3, "event.build()"

    .line 7
    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Le/a/q2/a;->e(Le/a/q2/g;)V

    return-void
.end method

.method public e(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/o/b/e;->a:Lcom/truecaller/contextcall/utils/SavedReasonsState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "OnBoardingContextCallSettings"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_2

    const-string v0, "Disabled"

    .line 2
    invoke-virtual {p0, p1, v2, v0}, Le/a/o/b/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "Enabled"

    .line 3
    invoke-virtual {p0, p1, v2, v0}, Le/a/o/b/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 4
    sget-object p1, Lcom/truecaller/contextcall/utils/SavedReasonsState;->ENABLED:Lcom/truecaller/contextcall/utils/SavedReasonsState;

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/truecaller/contextcall/utils/SavedReasonsState;->DISABLED:Lcom/truecaller/contextcall/utils/SavedReasonsState;

    :goto_1
    iput-object p1, p0, Le/a/o/b/e;->a:Lcom/truecaller/contextcall/utils/SavedReasonsState;

    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "messageId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/o/b/e;->b:Le/a/q2/a;

    new-instance v1, Le/a/o/m/c;

    invoke-direct {v1, p1, p2}, Le/a/o/m/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void
.end method

.method public h(Lcom/truecaller/data/entity/CallContextMessage;Ljava/lang/String;)V
    .locals 2

    const-string v0, "contextCallMessage"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/o/b/e;->b:Le/a/q2/a;

    new-instance v1, Le/a/o/m/b;

    invoke-direct {v1, p1, p2}, Le/a/o/m/b;-><init>(Lcom/truecaller/data/entity/CallContextMessage;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void
.end method
