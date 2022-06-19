.class public final Le/a/a/d/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/a/d/s;

.field public final c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/a/d/s;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/d/m;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/a/d/m;->b:Le/a/a/d/s;

    iput-boolean p3, p0, Le/a/a/d/m;->c:Z

    return-void
.end method
