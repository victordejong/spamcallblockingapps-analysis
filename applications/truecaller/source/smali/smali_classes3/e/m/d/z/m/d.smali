.class public final synthetic Le/m/d/z/m/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/d/z/m/k;

.field public final synthetic b:Le/m/d/z/m/i;


# direct methods
.method public synthetic constructor <init>(Le/m/d/z/m/k;Le/m/d/z/m/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/z/m/d;->a:Le/m/d/z/m/k;

    iput-object p2, p0, Le/m/d/z/m/d;->b:Le/m/d/z/m/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/m/d/z/m/d;->a:Le/m/d/z/m/k;

    iget-object v1, p0, Le/m/d/z/m/d;->b:Le/m/d/z/m/i;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v2, v1, Le/m/d/z/m/i;->a:Lcom/google/firebase/perf/v1/PerfMetric$b;

    iget-object v1, v1, Le/m/d/z/m/i;->b:Le/m/d/z/o/b;

    invoke-virtual {v0, v2, v1}, Le/m/d/z/m/k;->e(Lcom/google/firebase/perf/v1/PerfMetric$b;Le/m/d/z/o/b;)V

    return-void
.end method
