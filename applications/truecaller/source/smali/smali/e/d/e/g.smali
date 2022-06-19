.class public Le/d/e/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/d/e/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/d/e/g$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/d/e/g$a;

    invoke-direct {v0, p0, p1}, Le/d/e/g$a;-><init>(Le/d/e/g;Landroid/os/Handler;)V

    iput-object v0, p0, Le/d/e/g;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a(Le/d/e/o;Le/d/e/q;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/d/e/o<",
            "*>;",
            "Le/d/e/q<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/d/e/o;->markDelivered()V

    const-string v0, "post-response"

    .line 2
    invoke-virtual {p1, v0}, Le/d/e/o;->addMarker(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/d/e/g;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Le/d/e/g$b;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Le/d/e/g$b;-><init>(Le/d/e/o;Le/d/e/q;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
