.class public final Le/a/d0/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/callerid/CallerIdPerformanceTracker;


# instance fields
.field public final a:Le/a/u3/g;

.field public final b:Le/a/p5/m0;


# direct methods
.method public constructor <init>(Le/a/u3/g;Le/a/p5/m0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d0/h0;->a:Le/a/u3/g;

    iput-object p2, p0, Le/a/d0/h0;->b:Le/a/p5/m0;

    return-void
.end method


# virtual methods
.method public a(Le/a/p5/l0;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "[CallerIdPerformanceTracker] stop trace"

    aput-object v2, v0, v1

    .line 1
    invoke-static {v0}, Le/a/n3/a/b;->a([Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Le/a/p5/l0;->stop()V

    :cond_0
    return-void
.end method

.method public b(Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;)Le/a/p5/l0;
    .locals 4

    const-string v0, "traceType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[CallerIdPerformanceTracker] start trace "

    .line 1
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Le/a/n3/a/b;->a([Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Le/a/d0/h0;->a:Le/a/u3/g;

    .line 3
    iget-object v1, v0, Le/a/u3/g;->i:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/d0/h0;->b:Le/a/p5/m0;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/p5/m0;->a(Ljava/lang/String;)Le/a/p5/l0;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;Ls1/z/b/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;",
            "Ls1/z/b/a<",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "traceType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Le/a/d0/h0;->b(Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;)Le/a/p5/l0;

    move-result-object p1

    .line 2
    invoke-interface {p2}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p2

    .line 3
    invoke-virtual {p0, p1}, Le/a/d0/h0;->a(Le/a/p5/l0;)V

    return-object p2
.end method
