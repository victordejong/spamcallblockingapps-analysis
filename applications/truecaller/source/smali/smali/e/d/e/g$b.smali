.class public Le/d/e/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/d/e/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Le/d/e/o;

.field public final b:Le/d/e/q;

.field public final c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Le/d/e/o;Le/d/e/q;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/d/e/g$b;->a:Le/d/e/o;

    .line 3
    iput-object p2, p0, Le/d/e/g$b;->b:Le/d/e/q;

    .line 4
    iput-object p3, p0, Le/d/e/g$b;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/d/e/g$b;->a:Le/d/e/o;

    invoke-virtual {v0}, Le/d/e/o;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/d/e/g$b;->a:Le/d/e/o;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Le/d/e/o;->finish(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Le/d/e/g$b;->b:Le/d/e/q;

    .line 4
    iget-object v1, v0, Le/d/e/q;->c:Le/d/e/v;

    if-nez v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 5
    iget-object v1, p0, Le/d/e/g$b;->a:Le/d/e/o;

    iget-object v0, v0, Le/d/e/q;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Le/d/e/o;->deliverResponse(Ljava/lang/Object;)V

    goto :goto_1

    .line 6
    :cond_2
    iget-object v0, p0, Le/d/e/g$b;->a:Le/d/e/o;

    invoke-virtual {v0, v1}, Le/d/e/o;->deliverError(Le/d/e/v;)V

    .line 7
    :goto_1
    iget-object v0, p0, Le/d/e/g$b;->b:Le/d/e/q;

    iget-boolean v0, v0, Le/d/e/q;->d:Z

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Le/d/e/g$b;->a:Le/d/e/o;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Le/d/e/o;->addMarker(Ljava/lang/String;)V

    goto :goto_2

    .line 9
    :cond_3
    iget-object v0, p0, Le/d/e/g$b;->a:Le/d/e/o;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Le/d/e/o;->finish(Ljava/lang/String;)V

    .line 10
    :goto_2
    iget-object v0, p0, Le/d/e/g$b;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    .line 11
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_4
    return-void
.end method
