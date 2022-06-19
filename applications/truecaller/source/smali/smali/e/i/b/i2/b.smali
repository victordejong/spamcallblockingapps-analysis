.class public Le/i/b/i2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/i/b/i2/d;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Le/i/b/i2/c;


# direct methods
.method public constructor <init>(Le/i/b/i2/c;Le/i/b/i2/d;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/i/b/i2/b;->c:Le/i/b/i2/c;

    iput-object p2, p0, Le/i/b/i2/b;->a:Le/i/b/i2/d;

    iput-object p3, p0, Le/i/b/i2/b;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Le/i/b/i2/b;->a:Le/i/b/i2/d;

    invoke-virtual {v0}, Le/i/b/c3;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Le/i/b/i2/b;->c:Le/i/b/i2/c;

    iget-object v1, p0, Le/i/b/i2/b;->b:Ljava/util/List;

    .line 3
    invoke-virtual {v0, v1}, Le/i/b/i2/c;->a(Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception v0

    .line 4
    iget-object v1, p0, Le/i/b/i2/b;->c:Le/i/b/i2/c;

    iget-object v2, p0, Le/i/b/i2/b;->b:Ljava/util/List;

    .line 5
    invoke-virtual {v1, v2}, Le/i/b/i2/c;->a(Ljava/util/List;)V

    .line 6
    throw v0
.end method
