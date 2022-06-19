.class public final Le/a/h5/e;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/h5/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/h5/c;",
        ">;",
        "Le/a/h5/b;"
    }
.end annotation


# instance fields
.field public d:Le/a/h5/l;

.field public final e:Ls1/w/f;

.field public final f:Le/a/h5/y;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/h5/y;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tcPermissionsView"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/h5/e;->e:Ls1/w/f;

    iput-object p2, p0, Le/a/h5/e;->f:Le/a/h5/y;

    return-void
.end method
