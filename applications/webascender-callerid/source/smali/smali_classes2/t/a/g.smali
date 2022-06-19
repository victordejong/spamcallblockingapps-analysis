.class Lt/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt/a/g$a;,
        Lt/a/g$b;
    }
.end annotation


# direct methods
.method static a()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    new-instance v0, Lt/a/g$a;

    invoke-direct {v0}, Lt/a/g$a;-><init>()V

    return-object v0
.end method

.method static b()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    new-instance v0, Lt/a/g$b;

    invoke-direct {v0}, Lt/a/g$b;-><init>()V

    return-object v0
.end method
