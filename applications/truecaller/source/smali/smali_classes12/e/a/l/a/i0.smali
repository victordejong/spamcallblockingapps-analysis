.class public final Le/a/l/a/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/a/b0/o/a;

.field public final c:Le/a/s4/a;


# direct methods
.method public constructor <init>(Le/a/r2/f;Le/a/b0/o/a;Le/a/s4/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;",
            "Le/a/b0/o/a;",
            "Le/a/s4/a;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "tcEventTracker"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteConfig"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/a/i0;->a:Le/a/r2/f;

    iput-object p2, p0, Le/a/l/a/i0;->b:Le/a/b0/o/a;

    iput-object p3, p0, Le/a/l/a/i0;->c:Le/a/s4/a;

    return-void
.end method
