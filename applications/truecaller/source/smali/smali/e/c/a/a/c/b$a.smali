.class public Le/c/a/a/c/b$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/c/a/a/c/b;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/c/a/a/c/b;


# direct methods
.method public constructor <init>(Le/c/a/a/c/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/c/a/a/c/b$a;->a:Le/c/a/a/c/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Le/c/a/a/c/b$a;->a:Le/c/a/a/c/b;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Le/c/a/a/c/b;->a:Z

    .line 3
    sget-object v1, Le/c/a/a/c/b;->c:Ljava/lang/String;

    .line 4
    iget-object v0, v0, Le/c/a/a/c/b;->b:Ljava/util/concurrent/ExecutorService;

    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    sget-object v0, Le/c/a/a/c/b;->c:Ljava/lang/String;

    :goto_0
    return-void
.end method
