.class public final Le/a/v/a/a0/d;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/u2/a/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/v/a/a0/c;",
        ">;",
        "Le/a/v/a/a0/d;"
    }
.end annotation


# instance fields
.field public final b:Le/a/v/p/d;

.field public final c:Le/a/p5/c0;


# direct methods
.method public constructor <init>(Le/a/v/p/d;Le/a/p5/c0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contactUtilHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/v/a/a0/d;->b:Le/a/v/p/d;

    iput-object p2, p0, Le/a/v/a/a0/d;->c:Le/a/p5/c0;

    return-void
.end method
