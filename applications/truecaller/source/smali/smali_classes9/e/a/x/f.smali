.class public final Le/a/x/f;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/u2/a/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/x/e;",
        ">;",
        "Le/a/x/f;"
    }
.end annotation


# instance fields
.field public b:Z

.field public final c:Le/a/h5/y;


# direct methods
.method public constructor <init>(Le/a/h5/y;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "tcPermissionsView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/x/f;->c:Le/a/h5/y;

    return-void
.end method
