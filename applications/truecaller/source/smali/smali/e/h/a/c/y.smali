.class public Le/h/a/c/y;
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
.field public final synthetic a:Le/h/a/c/b0;


# direct methods
.method public constructor <init>(Le/h/a/c/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/y;->a:Le/h/a/c/b0;

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
    iget-object v0, p0, Le/h/a/c/y;->a:Le/h/a/c/b0;

    .line 2
    invoke-virtual {v0}, Le/h/a/c/b0;->i()Le/h/a/c/b0$a;

    const/4 v0, 0x0

    return-object v0
.end method
