.class public final Le/a/q2/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/q2/t$a;
    }
.end annotation


# instance fields
.field public a:J

.field public final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Le/a/p5/c;

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Lu3/e0;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Le/a/p5/c;Lo3/a;Ljavax/inject/Provider;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;>;",
            "Le/a/p5/c;",
            "Lo3/a<",
            "Lu3/e0;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lo3/a<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "eventsTracker"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "okhttpClient"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureEnabled"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendingThresholdMilli"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q2/t;->b:Ljavax/inject/Provider;

    iput-object p2, p0, Le/a/q2/t;->c:Le/a/p5/c;

    iput-object p3, p0, Le/a/q2/t;->d:Lo3/a;

    iput-object p4, p0, Le/a/q2/t;->e:Ljavax/inject/Provider;

    iput-object p5, p0, Le/a/q2/t;->f:Lo3/a;

    const-wide/16 p1, -0x1

    .line 2
    iput-wide p1, p0, Le/a/q2/t;->a:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    sget-object v0, Le/a/q2/t$a;->c:Le/a/q2/t$a;

    invoke-virtual {p0, v0}, Le/a/q2/t;->d(Le/a/q2/t$a;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Le/a/q2/t$a;->b:Le/a/q2/t$a;

    invoke-virtual {p0, p1}, Le/a/q2/t;->d(Le/a/q2/t$a;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    sget-object v0, Le/a/q2/t$a;->d:Le/a/q2/t$a;

    invoke-virtual {p0, v0}, Le/a/q2/t;->d(Le/a/q2/t$a;)V

    return-void
.end method

.method public final d(Le/a/q2/t$a;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/q2/t;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/q2/t;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "featureEnabled.get()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Le/a/q2/t;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Le/a/l5/a/m0;->d:Lorg/apache/avro/Schema;

    new-instance v0, Le/a/l5/a/m0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/l5/a/m0$b;-><init>(Le/a/l5/a/m0$a;)V

    .line 5
    iget-object p1, p1, Le/a/q2/t$a;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 7
    iput-object p1, v0, Le/a/l5/a/m0$b;->a:Ljava/lang/CharSequence;

    .line 8
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    const/4 v1, 0x1

    aput-boolean v1, p1, v2

    .line 9
    invoke-virtual {v0}, Le/a/l5/a/m0$b;->a()Le/a/l5/a/m0;

    move-result-object p1

    .line 10
    iget-object v0, p0, Le/a/q2/t;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a0;

    iget-object v1, p0, Le/a/q2/t;->d:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu3/e0;

    invoke-interface {v0, p1, v1}, Le/a/q2/a0;->b(Lorg/apache/avro/generic/GenericRecord;Lu3/e0;)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p1}, Le/a/r2/x;->g()V

    .line 11
    iget-object p1, p0, Le/a/q2/t;->c:Le/a/p5/c;

    invoke-interface {p1}, Le/a/p5/c;->a()J

    move-result-wide v0

    iput-wide v0, p0, Le/a/q2/t;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final e()Z
    .locals 6

    .line 1
    iget-wide v0, p0, Le/a/q2/t;->a:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v2, p0, Le/a/q2/t;->f:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    const-string v4, "sendingThresholdMilli.get()"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    add-long/2addr v4, v0

    iget-object v0, p0, Le/a/q2/t;->c:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->a()J

    move-result-wide v0

    cmp-long v0, v4, v0

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3
.end method
