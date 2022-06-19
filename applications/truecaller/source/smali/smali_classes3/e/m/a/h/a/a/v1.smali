.class public final synthetic Le/m/a/h/a/a/v1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/h/a/a/x1;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Le/m/a/h/a/a/x1;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/a/v1;->a:Le/m/a/h/a/a/x1;

    iput p2, p0, Le/m/a/h/a/a/v1;->b:I

    iput-object p3, p0, Le/m/a/h/a/a/v1;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Le/m/a/h/a/a/v1;->a:Le/m/a/h/a/a/x1;

    iget v1, p0, Le/m/a/h/a/a/v1;->b:I

    iget-object v2, p0, Le/m/a/h/a/a/v1;->c:Ljava/lang/String;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x4

    .line 2
    :try_start_0
    invoke-virtual {v0, v1, v2, v3}, Le/m/a/h/a/a/x1;->f(ILjava/lang/String;I)Landroid/os/Bundle;
    :try_end_0
    .catch Le/m/a/h/a/b/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Le/m/a/h/a/a/x1;->g:Le/m/a/h/a/d/g;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "notifyModuleCompleted failed"

    .line 3
    invoke-virtual {v1, v0, v2}, Le/m/a/h/a/d/g;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method
