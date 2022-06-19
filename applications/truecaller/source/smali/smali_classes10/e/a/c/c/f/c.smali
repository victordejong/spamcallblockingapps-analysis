.class public final Le/a/c/c/f/c;
.super Le/q/a/a/b/c;
.source "SourceFile"


# instance fields
.field public final a:Le/a/c/c/d/e;

.field public final b:Le/a/c/c/d/c;


# direct methods
.method public constructor <init>(Le/a/c/c/d/e;Le/a/c/c/d/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "accountsRelationDAO"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountsDAO"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/q/a/a/b/c;-><init>()V

    iput-object p1, p0, Le/a/c/c/f/c;->a:Le/a/c/c/d/e;

    iput-object p2, p0, Le/a/c/c/f/c;->b:Le/a/c/c/d/c;

    return-void
.end method
