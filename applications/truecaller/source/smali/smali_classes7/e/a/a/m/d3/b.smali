.class public Le/a/a/m/d3/b;
.super Le/a/a/m/i2;
.source "SourceFile"

# interfaces
.implements Le/a/a/m/w0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/a/m/i2<",
        "Le/a/a/m/a2;",
        ">;",
        "Le/a/a/m/w0;"
    }
.end annotation


# instance fields
.field public final c:Le/a/q2/a;

.field public final d:Le/a/b/c;

.field public final e:Le/a/a/m/a2$a;


# direct methods
.method public constructor <init>(Le/a/a/m/j2;Le/a/q2/a;Le/a/b/c;Le/a/a/m/a2$a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "promoProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bizmonBridge"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionListener"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/a/m/i2;-><init>(Le/a/a/m/j2;)V

    iput-object p2, p0, Le/a/a/m/d3/b;->c:Le/a/q2/a;

    iput-object p3, p0, Le/a/a/m/d3/b;->d:Le/a/b/c;

    iput-object p4, p0, Le/a/a/m/d3/b;->e:Le/a/a/m/a2$a;

    return-void
.end method


# virtual methods
.method public A(Le/a/a/m/d1;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Le/a/a/m/d1$z;

    return p1
.end method

.method public final B(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/m/d3/b;->c:Le/a/q2/a;

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Action"

    .line 3
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p1, Le/a/q2/g$b$a;

    const-string v2, "VerifiedBusinessAwarenessEvent"

    const/4 v3, 0x0

    invoke-direct {p1, v2, v3, v1, v3}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    const-string v1, "AnalyticsEvent.Builder(A\u2026\n                .build()"

    .line 5
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {v0, p1}, Le/a/q2/a;->e(Le/a/q2/g;)V

    return-void
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Le/a/a/m/a2;

    const-string p2, "itemView"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "Shown"

    .line 3
    invoke-virtual {p0, p1}, Le/a/a/m/d3/b;->B(Ljava/lang/String;)V

    return-void
.end method

.method public v(Le/a/o2/h;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Le/a/o2/h;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x1a0146cb

    if-eq v0, v1, :cond_1

    const v1, 0x6af22df6

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ItemEvent.ACTION_DISMISS_VERIFIED_BUSINESS_AWARENESS"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Dismiss"

    .line 4
    invoke-virtual {p0, p1}, Le/a/a/m/d3/b;->B(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Le/a/a/m/d3/b;->d:Le/a/b/c;

    invoke-interface {p1}, Le/a/b/c;->a()V

    .line 6
    iget-object p1, p0, Le/a/a/m/d3/b;->e:Le/a/a/m/a2$a;

    invoke-interface {p1}, Le/a/a/m/a2$a;->Td()Z

    move-result p1

    goto :goto_1

    :cond_1
    const-string v0, "ItemEvent.ACTION_VIEW_VERIFIED_BUSINESS_AWARENESS"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "View"

    .line 8
    invoke-virtual {p0, p1}, Le/a/a/m/d3/b;->B(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Le/a/a/m/d3/b;->d:Le/a/b/c;

    invoke-interface {p1}, Le/a/b/c;->a()V

    .line 10
    iget-object p1, p0, Le/a/a/m/d3/b;->e:Le/a/a/m/a2$a;

    invoke-interface {p1}, Le/a/a/m/a2$a;->U7()Z

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
