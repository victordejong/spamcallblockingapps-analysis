.class public final synthetic Li/a/d/f/z/f;
.super Ljava/lang/Object;
.source "SpanExporter.java"


# direct methods
.method public static a(Li/a/d/f/z/g;)V
    .locals 4
    .param p0, "_this"    # Li/a/d/f/z/g;

    .line 1
    invoke-interface {p0}, Li/a/d/f/z/g;->shutdown()Li/a/d/c/e;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3, v1}, Li/a/d/c/e;->d(JLjava/util/concurrent/TimeUnit;)Li/a/d/c/e;

    return-void
.end method
