.class public final Le/a/v/p/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/v/p/i;

.field public final c:Le/a/b0/q/j0;

.field public final d:Le/a/v/a/z/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/v/p/i;Le/a/b0/q/j0;Le/a/v/a/z/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detailsOptionsMenuDelegate"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tcSearchUrlCreator"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detailsViewAnalytics"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/v/p/k;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/v/p/k;->b:Le/a/v/p/i;

    iput-object p3, p0, Le/a/v/p/k;->c:Le/a/b0/q/j0;

    iput-object p4, p0, Le/a/v/p/k;->d:Le/a/v/a/z/a;

    return-void
.end method
