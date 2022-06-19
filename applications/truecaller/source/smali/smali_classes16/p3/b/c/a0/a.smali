.class public final Lp3/b/c/a0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lp3/a/q$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/q$e<",
            "Lp3/b/c/o;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lp3/a/q;->d:Ljava/util/logging/Logger;

    .line 2
    new-instance v0, Lp3/a/q$e;

    const-string v1, "opencensus-trace-span-key"

    invoke-direct {v0, v1}, Lp3/a/q$e;-><init>(Ljava/lang/String;)V

    .line 3
    sput-object v0, Lp3/b/c/a0/a;->a:Lp3/a/q$e;

    return-void
.end method
