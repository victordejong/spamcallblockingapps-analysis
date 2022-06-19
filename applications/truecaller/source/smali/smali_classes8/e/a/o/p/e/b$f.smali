.class public Le/a/o/p/e/b$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/p/e/b;->e(Lcom/truecaller/contextcall/db/reason/CallReason;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/contextcall/db/reason/CallReason;

.field public final synthetic b:Le/a/o/p/e/b;


# direct methods
.method public constructor <init>(Le/a/o/p/e/b;Lcom/truecaller/contextcall/db/reason/CallReason;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/o/p/e/b$f;->b:Le/a/o/p/e/b;

    iput-object p2, p0, Le/a/o/p/e/b$f;->a:Lcom/truecaller/contextcall/db/reason/CallReason;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o/p/e/b$f;->b:Le/a/o/p/e/b;

    .line 2
    iget-object v0, v0, Le/a/o/p/e/b;->a:Ln3/c0/q;

    .line 3
    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V

    .line 4
    :try_start_0
    iget-object v0, p0, Le/a/o/p/e/b$f;->b:Le/a/o/p/e/b;

    .line 5
    iget-object v0, v0, Le/a/o/p/e/b;->d:Ln3/c0/j;

    .line 6
    iget-object v1, p0, Le/a/o/p/e/b$f;->a:Lcom/truecaller/contextcall/db/reason/CallReason;

    invoke-virtual {v0, v1}, Ln3/c0/j;->a(Ljava/lang/Object;)I

    .line 7
    iget-object v0, p0, Le/a/o/p/e/b$f;->b:Le/a/o/p/e/b;

    .line 8
    iget-object v0, v0, Le/a/o/p/e/b;->a:Ln3/c0/q;

    .line 9
    invoke-virtual {v0}, Ln3/c0/q;->setTransactionSuccessful()V

    .line 10
    sget-object v0, Ls1/s;->a:Ls1/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v1, p0, Le/a/o/p/e/b$f;->b:Le/a/o/p/e/b;

    .line 12
    iget-object v1, v1, Le/a/o/p/e/b;->a:Ln3/c0/q;

    .line 13
    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Le/a/o/p/e/b$f;->b:Le/a/o/p/e/b;

    .line 14
    iget-object v1, v1, Le/a/o/p/e/b;->a:Ln3/c0/q;

    .line 15
    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    .line 16
    throw v0
.end method
