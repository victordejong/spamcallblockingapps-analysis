.class public final Le/a/e0/e;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/u2/a/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/e0/d;",
        ">;",
        "Le/a/e0/e;"
    }
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public final c:Le/a/e0/c;

.field public final d:Le/a/u3/g;

.field public final e:Le/a/l/p2/v0;

.field public final f:Le/a/q2/a;


# direct methods
.method public constructor <init>(Le/a/e0/c;Le/a/u3/g;Le/a/l/p2/v0;Le/a/q2/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "afterBlockPromoHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/e0/e;->c:Le/a/e0/c;

    iput-object p2, p0, Le/a/e0/e;->d:Le/a/u3/g;

    iput-object p3, p0, Le/a/e0/e;->e:Le/a/l/p2/v0;

    iput-object p4, p0, Le/a/e0/e;->f:Le/a/q2/a;

    return-void
.end method
