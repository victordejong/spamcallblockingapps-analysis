.class public Le/h/a/c/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Le/h/a/c/d0;

.field public final b:Le/h/a/c/l0/a;

.field public c:Le/h/a/c/m0/a;

.field public d:Le/h/a/c/o0/b;

.field public e:Le/h/a/c/r0/h;

.field public final f:Le/h/a/c/m;

.field public g:Le/h/a/c/v0/b;

.field public final h:Le/h/a/c/k;

.field public final i:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

.field public final j:Landroid/content/Context;

.field public final k:Le/h/a/c/b0;

.field public l:Le/h/a/c/q0/b0;

.field public m:Le/h/a/c/w0/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/m;Le/h/a/c/k;Le/h/a/c/b0;Le/h/a/c/l0/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/h/a/c/v;->i:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 3
    iput-object p3, p0, Le/h/a/c/v;->f:Le/h/a/c/m;

    .line 4
    iput-object p4, p0, Le/h/a/c/v;->h:Le/h/a/c/k;

    .line 5
    iput-object p5, p0, Le/h/a/c/v;->k:Le/h/a/c/b0;

    .line 6
    iput-object p1, p0, Le/h/a/c/v;->j:Landroid/content/Context;

    .line 7
    iput-object p6, p0, Le/h/a/c/v;->b:Le/h/a/c/l0/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/h/a/c/v;->i:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    iget-boolean v1, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->e:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    iget-object v1, p0, Le/h/a/c/v;->i:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 4
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "Instance is analytics only, not initializing Notification Inbox"

    .line 5
    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-static {v0}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object v0

    invoke-virtual {v0}, Le/h/a/c/y0/b;->c()Le/h/a/c/y0/k;

    move-result-object v0

    .line 7
    new-instance v1, Le/h/a/c/v$a;

    invoke-direct {v1, p0}, Le/h/a/c/v$a;-><init>(Le/h/a/c/v;)V

    .line 8
    iget-object v2, v0, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 9
    new-instance v3, Le/h/a/c/y0/j;

    const-string v4, "initializeInbox"

    invoke-direct {v3, v0, v4, v1}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 10
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
