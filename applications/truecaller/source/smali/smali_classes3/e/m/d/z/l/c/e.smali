.class public final synthetic Le/m/d/z/l/c/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/firebase/perf/session/gauges/GaugeManager;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Le/m/d/z/o/b;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/perf/session/gauges/GaugeManager;Ljava/lang/String;Le/m/d/z/o/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/z/l/c/e;->a:Lcom/google/firebase/perf/session/gauges/GaugeManager;

    iput-object p2, p0, Le/m/d/z/l/c/e;->b:Ljava/lang/String;

    iput-object p3, p0, Le/m/d/z/l/c/e;->c:Le/m/d/z/o/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/m/d/z/l/c/e;->a:Lcom/google/firebase/perf/session/gauges/GaugeManager;

    iget-object v1, p0, Le/m/d/z/l/c/e;->b:Ljava/lang/String;

    iget-object v2, p0, Le/m/d/z/l/c/e;->c:Le/m/d/z/o/b;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->b(Ljava/lang/String;Le/m/d/z/o/b;)V

    return-void
.end method
