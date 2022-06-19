.class public final Le/m/a/h/a/c/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/m/a/h/a/d/g;

.field public final b:Ljava/lang/String;

.field public final c:Le/m/a/h/a/d/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/d/r<",
            "Le/m/a/h/a/d/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/m/a/h/a/d/g;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/m/a/h/a/c/r;->b:Ljava/lang/String;

    iput-object p2, p0, Le/m/a/h/a/c/r;->a:Le/m/a/h/a/d/g;

    .line 2
    invoke-static {p1}, Le/m/a/h/a/d/b1;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Phonesky is not installed."

    .line 3
    invoke-virtual {p2, v0, p1}, Le/m/a/h/a/d/g;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p1, 0x0

    iput-object p1, p0, Le/m/a/h/a/c/r;->c:Le/m/a/h/a/d/r;

    return-void

    .line 4
    :cond_0
    new-instance v7, Le/m/a/h/a/d/r;

    sget-object v4, Le/m/a/h/a/c/s;->a:Landroid/content/Intent;

    sget-object v5, Le/m/a/h/a/c/o;->a:Le/m/a/h/a/c/o;

    const/4 v6, 0x0

    const-string v3, "IntegrityService"

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    .line 5
    invoke-direct/range {v0 .. v6}, Le/m/a/h/a/d/r;-><init>(Landroid/content/Context;Le/m/a/h/a/d/g;Ljava/lang/String;Landroid/content/Intent;Le/m/a/h/a/d/n;Le/m/a/h/a/d/m;)V

    iput-object v7, p0, Le/m/a/h/a/c/r;->c:Le/m/a/h/a/d/r;

    return-void
.end method
