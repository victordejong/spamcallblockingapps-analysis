.class public final Le/a/v/a/i0/d;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/v/a/i0/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/v/a/i0/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/v/a/i0/c;",
        ">;",
        "Le/a/v/a/i0/b;"
    }
.end annotation


# instance fields
.field public final b:Le/a/e4/p;

.field public final c:Le/a/v/p/g;

.field public final d:Le/a/p5/h0;

.field public final e:Le/a/k3/l/f;

.field public final f:Le/a/v/a/z/a;


# direct methods
.method public constructor <init>(Le/a/e4/p;Le/a/v/p/g;Le/a/p5/h0;Le/a/k3/l/f;Le/a/v/a/z/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "multiSimManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detailsCallHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numberProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detailsViewAnalytics"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/v/a/i0/d;->b:Le/a/e4/p;

    iput-object p2, p0, Le/a/v/a/i0/d;->c:Le/a/v/p/g;

    iput-object p3, p0, Le/a/v/a/i0/d;->d:Le/a/p5/h0;

    iput-object p4, p0, Le/a/v/a/i0/d;->e:Le/a/k3/l/f;

    iput-object p5, p0, Le/a/v/a/i0/d;->f:Le/a/v/a/z/a;

    return-void
.end method
