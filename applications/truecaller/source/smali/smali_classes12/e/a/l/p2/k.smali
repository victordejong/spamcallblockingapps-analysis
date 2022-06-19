.class public final Le/a/l/p2/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Le/a/k3/j/g;

.field public final c:Le/a/l/c2;

.field public final d:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/k3/j/g;Le/a/l/c2;Ls1/w/f;)V
    .locals 1
    .param p3    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "localContactSearcher"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/p2/k;->b:Le/a/k3/j/g;

    iput-object p2, p0, Le/a/l/p2/k;->c:Le/a/l/c2;

    iput-object p3, p0, Le/a/l/p2/k;->d:Ls1/w/f;

    const-string p1, ","

    .line 2
    iput-object p1, p0, Le/a/l/p2/k;->a:Ljava/lang/String;

    return-void
.end method
