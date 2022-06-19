.class public Le/a/q4/p0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/w/b/b;

.field public final b:Le/a/w/b/d/a;


# direct methods
.method public constructor <init>(Le/a/w/b/b;Le/a/w/b/d/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/q4/p0;->a:Le/a/w/b/b;

    .line 3
    iput-object p2, p0, Le/a/q4/p0;->b:Le/a/w/b/d/a;

    return-void
.end method


# virtual methods
.method public a(Le/a/w/b/a$a;)V
    .locals 3

    .line 1
    new-instance v0, Le/a/w/b/a;

    iget-object v1, p0, Le/a/q4/p0;->a:Le/a/w/b/b;

    iget-object v2, p0, Le/a/q4/p0;->b:Le/a/w/b/d/a;

    invoke-direct {v0, v1, v2, p1}, Le/a/w/b/a;-><init>(Le/a/w/b/b;Le/a/w/b/d/a;Le/a/w/b/a$a;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 2
    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
