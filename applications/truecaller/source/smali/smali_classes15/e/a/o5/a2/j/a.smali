.class public final Le/a/o5/a2/j/a;
.super Le/a/c/d0/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Le/a/c/c/f/n;Le/a/c/v/a;Le/a/c/b/j;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "stateUseCases"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reminderManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsStatusProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Le/a/c/d0/e;-><init>(Le/a/c/c/f/n;Le/a/c/v/a;Le/a/c/b/j;)V

    return-void
.end method
