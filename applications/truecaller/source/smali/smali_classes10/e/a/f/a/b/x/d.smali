.class public final Le/a/f/a/b/x/d;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/u2/a/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Ljava/lang/Object;",
        ">;",
        "Le/a/f/a/b/x/d;"
    }
.end annotation


# instance fields
.field public final b:Le/a/f/y/c;


# direct methods
.method public constructor <init>(Le/a/f/y/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "callManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/f/a/b/x/d;->b:Le/a/f/y/c;

    return-void
.end method
