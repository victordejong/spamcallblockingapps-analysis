.class public final Le/a/l/o1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/l/a/z;

.field public final b:Le/a/b0/o/a;

.field public final c:Le/a/v3/c/a;

.field public final d:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/l/a/z;Le/a/b0/o/a;Le/a/v3/c/a;Ls1/w/f;)V
    .locals 1
    .param p4    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "premiumReporter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feedbackNetworkHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/o1;->a:Le/a/l/a/z;

    iput-object p2, p0, Le/a/l/o1;->b:Le/a/b0/o/a;

    iput-object p3, p0, Le/a/l/o1;->c:Le/a/v3/c/a;

    iput-object p4, p0, Le/a/l/o1;->d:Ls1/w/f;

    return-void
.end method
