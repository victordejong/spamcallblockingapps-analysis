.class public Le/a/r2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/os/IBinder;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/r2/i;


# direct methods
.method public constructor <init>(Le/a/r2/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/r2/h;->a:Le/a/r2/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/r2/h;->a:Le/a/r2/i;

    .line 2
    iget-object v0, v0, Le/a/r2/i;->e:Landroid/os/Binder;

    return-object v0
.end method
