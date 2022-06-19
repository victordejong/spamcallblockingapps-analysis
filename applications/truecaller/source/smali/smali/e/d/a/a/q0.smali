.class public final Le/d/a/a/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Le/d/a/a/n$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Le/d/a/a/e;


# direct methods
.method public constructor <init>(Le/d/a/a/e;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/d/a/a/q0;->b:Le/d/a/a/e;

    iput-object p2, p0, Le/d/a/a/q0;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Le/d/a/a/q0;->b:Le/d/a/a/e;

    iget-object v1, p0, Le/d/a/a/q0;->a:Ljava/lang/String;

    .line 1
    invoke-static {v0, v1}, Le/d/a/a/e;->p(Le/d/a/a/e;Ljava/lang/String;)Le/d/a/a/n$a;

    move-result-object v0

    return-object v0
.end method
