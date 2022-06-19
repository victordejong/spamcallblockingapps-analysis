.class public final Le/a/f/a/b/w/e;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/f/a/b/w/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/f/a/b/w/c;",
        ">;",
        "Le/a/f/a/b/w/b;"
    }
.end annotation


# instance fields
.field public final d:Le/a/f/y/c;

.field public final e:Le/a/f/w/c;

.field public final f:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/f/y/c;Le/a/f/w/c;Ls1/w/f;)V
    .locals 1
    .param p3    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "callManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerInfoRepository"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p3}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/f/a/b/w/e;->d:Le/a/f/y/c;

    iput-object p2, p0, Le/a/f/a/b/w/e;->e:Le/a/f/w/c;

    iput-object p3, p0, Le/a/f/a/b/w/e;->f:Ls1/w/f;

    return-void
.end method
