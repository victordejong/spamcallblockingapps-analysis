.class public final Le/a/c/a/i/j;
.super Le/a/c/a/i/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/c/a/i/l<",
        "Le/a/c/r/d/b;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/a/c/e/c;


# direct methods
.method public constructor <init>(Le/a/c/e/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "insightsAnalyticsManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/c/a/i/l;-><init>()V

    iput-object p1, p0, Le/a/c/a/i/j;->a:Le/a/c/e/c;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Le/a/c/r/d/b;

    invoke-virtual {p0, p1}, Le/a/c/a/i/j;->b(Le/a/c/r/d/b;)V

    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public b(Le/a/c/r/d/b;)V
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/a/i/j;->a:Le/a/c/e/c;

    invoke-interface {v0, p1}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    return-void
.end method
