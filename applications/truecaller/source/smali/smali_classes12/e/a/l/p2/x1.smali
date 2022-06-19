.class public final Le/a/l/p2/x1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final b:Le/a/l/n2/g;

.field public final c:Le/a/l/p2/q0$a;


# direct methods
.method public constructor <init>(Le/a/l/n2/g;Le/a/l/p2/q0$a;)V
    .locals 1

    const-string v0, "webBillingClient"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/p2/x1;->b:Le/a/l/n2/g;

    iput-object p2, p0, Le/a/l/p2/x1;->c:Le/a/l/p2/q0$a;

    return-void
.end method
