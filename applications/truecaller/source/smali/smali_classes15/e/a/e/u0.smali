.class public final Le/a/e/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/v3/c/a;

.field public final b:Le/a/l/a/z;


# direct methods
.method public constructor <init>(Le/a/v3/c/a;Le/a/l/a/z;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "feedbackNetworkHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumReporter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/u0;->a:Le/a/v3/c/a;

    iput-object p2, p0, Le/a/e/u0;->b:Le/a/l/a/z;

    return-void
.end method
