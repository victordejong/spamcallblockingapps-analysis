.class public final Le/a/k/a/e/i;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/k/a/e/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/k/a/e/e;",
        ">;",
        "Le/a/k/a/e/d;"
    }
.end annotation


# instance fields
.field public final d:Le/a/k/n/e/a;

.field public final e:Le/a/k/c/r0;

.field public final f:Le/a/k/j;

.field public final g:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/k/n/e/a;Le/a/k/c/r0;Le/a/k/j;Ls1/w/f;)V
    .locals 1
    .param p4    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "hiddenContactRepository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availability"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "support"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iOContext"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p4}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/k/a/e/i;->d:Le/a/k/n/e/a;

    iput-object p2, p0, Le/a/k/a/e/i;->e:Le/a/k/c/r0;

    iput-object p3, p0, Le/a/k/a/e/i;->f:Le/a/k/j;

    iput-object p4, p0, Le/a/k/a/e/i;->g:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public Y0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/k/a/e/e;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/k/a/e/i;->e:Le/a/k/c/r0;

    invoke-interface {v0}, Le/a/k/c/r0;->b()Z

    move-result v0

    invoke-interface {p1, v0}, Le/a/k/a/e/e;->n4(Z)V

    return-void
.end method
