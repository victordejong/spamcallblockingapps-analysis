.class public Le/m/b/y/a/a;
.super Le/m/b/x/a/e/d/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/b/y/a/a$a;,
        Le/m/b/y/a/a$b;
    }
.end annotation


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Le/m/b/x/a/a;->a:Ljava/lang/Integer;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    sget-object v0, Le/m/b/x/a/a;->b:Ljava/lang/Integer;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0xf

    if-lt v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Le/m/b/x/a/a;->d:Ljava/lang/String;

    aput-object v3, v2, v1

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You are currently running with version %s of google-api-client. You need at least version 1.15 of google-api-client to run version 1.25.0 of the Drive API library."

    invoke-static {v1, v2}, Ln3/g0/y;->lenientFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Le/m/b/y/a/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/m/b/x/a/e/d/a;-><init>(Le/m/b/x/a/e/d/a$a;)V

    return-void
.end method
