.class public Le/a/n3/a/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/n3/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Le/a/n3/a/d;


# direct methods
.method public constructor <init>(Le/a/n3/a/d;Le/a/n3/a/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/n3/a/d$b;->a:Le/a/n3/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :goto_0
    :try_start_0
    iget-object v0, p0, Le/a/n3/a/d$b;->a:Le/a/n3/a/d;

    .line 2
    iget-object v0, v0, Le/a/n3/a/d;->a:Ljava/util/concurrent/BlockingQueue;

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    iget-object v1, p0, Le/a/n3/a/d$b;->a:Le/a/n3/a/d;

    invoke-static {v1, v0}, Le/a/n3/a/d;->a(Le/a/n3/a/d;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-void
.end method
