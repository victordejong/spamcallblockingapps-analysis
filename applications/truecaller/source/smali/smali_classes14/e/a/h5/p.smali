.class public final Le/a/h5/p;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/u2/a/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/h5/o;",
        ">;",
        "Le/a/h5/p;"
    }
.end annotation


# instance fields
.field public b:Z

.field public final c:Le/a/h5/m;


# direct methods
.method public constructor <init>(Le/a/h5/m;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "roleRequester"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/h5/p;->c:Le/a/h5/m;

    return-void
.end method
