.class public Le/m/d/n/j/j/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Le/m/d/n/j/j/w;


# direct methods
.method public constructor <init>(Le/m/d/n/j/j/w;JLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/d/n/j/j/x;->c:Le/m/d/n/j/j/w;

    iput-wide p2, p0, Le/m/d/n/j/j/x;->a:J

    iput-object p4, p0, Le/m/d/n/j/j/x;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/d/n/j/j/x;->c:Le/m/d/n/j/j/w;

    invoke-virtual {v0}, Le/m/d/n/j/j/w;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/m/d/n/j/j/x;->c:Le/m/d/n/j/j/w;

    .line 3
    iget-object v0, v0, Le/m/d/n/j/j/w;->i:Le/m/d/n/j/k/e;

    .line 4
    iget-wide v1, p0, Le/m/d/n/j/j/x;->a:J

    iget-object v3, p0, Le/m/d/n/j/j/x;->b:Ljava/lang/String;

    .line 5
    iget-object v0, v0, Le/m/d/n/j/k/e;->b:Le/m/d/n/j/k/c;

    invoke-interface {v0, v1, v2, v3}, Le/m/d/n/j/k/c;->a(JLjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
