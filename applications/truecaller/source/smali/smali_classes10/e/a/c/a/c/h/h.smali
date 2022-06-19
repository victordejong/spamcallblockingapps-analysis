.class public final Le/a/c/a/c/h/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Ljava/lang/Boolean;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/activity/result/ActivityResultRegistry;Le/a/c/b/h;Ls1/z/b/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/result/ActivityResultRegistry;",
            "Le/a/c/b/h;",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "registry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Le/a/c/a/c/h/h;->a:Ls1/z/b/l;

    const/4 p3, 0x0

    .line 2
    :try_start_0
    const-class v0, Le/a/c/a/c/h/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Le/a/c/a/c/h/g;

    invoke-direct {v1, p2}, Le/a/c/a/c/h/g;-><init>(Le/a/c/b/h;)V

    .line 4
    new-instance p2, Le/a/c/a/c/h/h$a;

    invoke-direct {p2, p0}, Le/a/c/a/c/h/h$a;-><init>(Le/a/c/a/c/h/h;)V

    .line 5
    invoke-virtual {p1, v0, v1, p2}, Landroidx/activity/result/ActivityResultRegistry;->c(Ljava/lang/String;Ln3/a/e/d/a;Ln3/a/e/a;)Ln3/a/e/b;

    move-result-object p1

    .line 6
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 7
    invoke-virtual {p1, p2, p3}, Ln3/a/e/b;->a(Ljava/lang/Object;Ln3/k/a/c;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    sget-object p2, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    .line 9
    invoke-virtual {p2, p1, p3}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
