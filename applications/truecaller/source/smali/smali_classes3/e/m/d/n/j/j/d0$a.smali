.class public Le/m/d/n/j/j/d0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/m/d/n/j/j/d0;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/m/d/n/j/j/d0;


# direct methods
.method public constructor <init>(Le/m/d/n/j/j/d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/d/n/j/j/d0$a;->a:Le/m/d/n/j/j/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    :try_start_0
    iget-object v1, p0, Le/m/d/n/j/j/d0$a;->a:Le/m/d/n/j/j/d0;

    .line 2
    iget-object v1, v1, Le/m/d/n/j/j/d0;->d:Le/m/d/n/j/j/f0;

    .line 3
    invoke-virtual {v1}, Le/m/d/n/j/j/f0;->b()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x5

    .line 4
    invoke-virtual {v0, v2}, Le/m/d/n/j/f;->a(I)Z

    .line 5
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x6

    .line 6
    invoke-virtual {v0, v1}, Le/m/d/n/j/f;->a(I)Z

    .line 7
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v0
.end method
