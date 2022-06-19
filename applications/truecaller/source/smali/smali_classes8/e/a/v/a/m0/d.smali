.class public final Le/a/v/a/m0/d;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/v/a/m0/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/v/a/m0/b;",
        ">;",
        "Le/a/v/a/m0/a;"
    }
.end annotation


# instance fields
.field public b:Le/a/v/a/s;

.field public final c:Le/a/j3/f;

.field public final d:Le/a/p5/h0;


# direct methods
.method public constructor <init>(Le/a/j3/f;Le/a/p5/h0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contactRequestRepository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/v/a/m0/d;->c:Le/a/j3/f;

    iput-object p2, p0, Le/a/v/a/m0/d;->d:Le/a/p5/h0;

    return-void
.end method
