.class public final synthetic Le/m/d/z/l/c/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/d/z/l/c/l;

.field public final synthetic b:Lcom/google/firebase/perf/util/Timer;


# direct methods
.method public synthetic constructor <init>(Le/m/d/z/l/c/l;Lcom/google/firebase/perf/util/Timer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/z/l/c/h;->a:Le/m/d/z/l/c/l;

    iput-object p2, p0, Le/m/d/z/l/c/h;->b:Lcom/google/firebase/perf/util/Timer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le/m/d/z/l/c/h;->a:Le/m/d/z/l/c/l;

    iget-object v1, p0, Le/m/d/z/l/c/h;->b:Lcom/google/firebase/perf/util/Timer;

    .line 1
    invoke-virtual {v0, v1}, Le/m/d/z/l/c/l;->b(Lcom/google/firebase/perf/util/Timer;)Lcom/google/firebase/perf/v1/AndroidMemoryReading;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Le/m/d/z/l/c/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
