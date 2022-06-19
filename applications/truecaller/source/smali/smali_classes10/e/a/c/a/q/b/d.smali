.class public final Le/a/c/a/q/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/a/q/b/c;


# instance fields
.field public final a:Le/a/c/a/q/b/f;

.field public final b:Ls1/w/f;

.field public final c:Le/a/c/a/q/b/a;


# direct methods
.method public constructor <init>(Le/a/c/a/q/b/f;Ls1/w/f;Le/a/c/a/q/b/a;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "updatesPageFlowUseCase"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatesBoundaryUseCase"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/a/q/b/d;->a:Le/a/c/a/q/b/f;

    iput-object p2, p0, Le/a/c/a/q/b/d;->b:Ls1/w/f;

    iput-object p3, p0, Le/a/c/a/q/b/d;->c:Le/a/c/a/q/b/a;

    return-void
.end method


# virtual methods
.method public a(Ln3/v/k0;)Le/a/c/a/q/b/b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/v/k0<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Le/a/c/a/q/b/b;"
        }
    .end annotation

    const-string v0, "emptyStateLv"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/c/a/q/b/b;

    .line 2
    iget-object v1, p0, Le/a/c/a/q/b/d;->a:Le/a/c/a/q/b/f;

    .line 3
    iget-object v2, p0, Le/a/c/a/q/b/d;->b:Ls1/w/f;

    .line 4
    iget-object v3, p0, Le/a/c/a/q/b/d;->c:Le/a/c/a/q/b/a;

    .line 5
    invoke-direct {v0, v1, v2, v3, p1}, Le/a/c/a/q/b/b;-><init>(Le/a/c/a/q/b/f;Ls1/w/f;Le/a/c/a/q/b/a;Ln3/v/k0;)V

    return-object v0
.end method
