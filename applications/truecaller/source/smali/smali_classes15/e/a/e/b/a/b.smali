.class public final Le/a/e/b/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/b/a/b;->c:Landroid/content/Context;

    const-string p1, "2394.9b8aeba005"

    .line 2
    iput-object p1, p0, Le/a/e/b/a/b;->a:Ljava/lang/String;

    const-string p1, "12.21.6"

    .line 3
    iput-object p1, p0, Le/a/e/b/a/b;->b:Ljava/lang/String;

    return-void
.end method
