.class public abstract Le/i/b/c2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/criteo/publisher/annotation/Internal;
.end annotation


# instance fields
.field public final a:Le/i/b/s1/a;

.field public final b:Le/i/b/y1;

.field public final c:Le/i/b/l2/a;


# direct methods
.method public constructor <init>(Le/i/b/s1/a;Le/i/b/y1;Le/i/b/l2/a;)V
    .locals 1

    const-string v0, "bidLifecycleListener"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bidManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentData"

    invoke-static {p3, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/i/b/c2;->a:Le/i/b/s1/a;

    iput-object p2, p0, Le/i/b/c2;->b:Le/i/b/y1;

    iput-object p3, p0, Le/i/b/c2;->c:Le/i/b/l2/a;

    return-void
.end method


# virtual methods
.method public a(Le/i/b/u2/q;Le/i/b/u2/t;)V
    .locals 10

    const-string v0, "cdbRequest"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cdbResponse"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p2, Le/i/b/u2/t;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/i/b/c2;->c:Le/i/b/l2/a;

    const-string v2, "it"

    invoke-static {v0, v2}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 3
    iget-object v1, v1, Le/i/b/l2/a;->a:Landroid/content/SharedPreferences;

    .line 4
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "CRTO_ConsentGiven"

    .line 5
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 6
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7
    :cond_0
    iget-object v0, p0, Le/i/b/c2;->b:Le/i/b/y1;

    .line 8
    iget v1, p2, Le/i/b/u2/t;->b:I

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-lez v1, :cond_1

    .line 10
    iget-object v2, v0, Le/i/b/y1;->a:Le/i/b/q2/h;

    .line 11
    new-instance v9, Le/i/b/q2/f;

    const-string v3, "Silent mode is enabled, no requests will be fired for the next "

    const-string v4, " seconds"

    .line 12
    invoke-static {v3, v1, v4}, Le/d/c/a/a;->l2(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xd

    move-object v3, v9

    .line 13
    invoke-direct/range {v3 .. v8}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 14
    invoke-virtual {v2, v9}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    .line 15
    iget-object v2, v0, Le/i/b/y1;->d:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v0, v0, Le/i/b/y1;->f:Le/i/b/e2;

    invoke-interface {v0}, Le/i/b/e2;->a()J

    move-result-wide v3

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v0, v1

    add-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 16
    :cond_1
    iget-object v0, p0, Le/i/b/c2;->a:Le/i/b/s1/a;

    invoke-interface {v0, p1, p2}, Le/i/b/s1/a;->d(Le/i/b/u2/q;Le/i/b/u2/t;)V

    return-void
.end method

.method public b(Le/i/b/u2/q;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "cdbRequest"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/i/b/c2;->a:Le/i/b/s1/a;

    invoke-interface {v0, p1, p2}, Le/i/b/s1/a;->c(Le/i/b/u2/q;Ljava/lang/Exception;)V

    return-void
.end method
