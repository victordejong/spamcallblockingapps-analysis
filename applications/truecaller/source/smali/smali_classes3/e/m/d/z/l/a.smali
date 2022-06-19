.class public final synthetic Le/m/d/z/l/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/firebase/perf/session/SessionManager;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/google/firebase/perf/session/PerfSession;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/perf/session/SessionManager;Landroid/content/Context;Lcom/google/firebase/perf/session/PerfSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/z/l/a;->a:Lcom/google/firebase/perf/session/SessionManager;

    iput-object p2, p0, Le/m/d/z/l/a;->b:Landroid/content/Context;

    iput-object p3, p0, Le/m/d/z/l/a;->c:Lcom/google/firebase/perf/session/PerfSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/m/d/z/l/a;->a:Lcom/google/firebase/perf/session/SessionManager;

    iget-object v1, p0, Le/m/d/z/l/a;->b:Landroid/content/Context;

    iget-object v2, p0, Le/m/d/z/l/a;->c:Lcom/google/firebase/perf/session/PerfSession;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/session/SessionManager;->b(Landroid/content/Context;Lcom/google/firebase/perf/session/PerfSession;)V

    return-void
.end method
