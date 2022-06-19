.class public final Le/a/c/a/q/b/b;
.super Ln3/z/v$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/z/v$b<",
        "Ljava/lang/Long;",
        "Lcom/truecaller/insights/ui/models/AdapterItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/a/c/a/q/b/f;

.field public final b:Ls1/w/f;

.field public final c:Le/a/c/a/q/b/a;

.field public final d:Ln3/v/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/v/k0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/c/a/q/b/f;Ls1/w/f;Le/a/c/a/q/b/a;Ln3/v/k0;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/a/q/b/f;",
            "Ls1/w/f;",
            "Le/a/c/a/q/b/a;",
            "Ln3/v/k0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "updatesPageFlowUseCase"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatesBoundaryUseCase"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emptyStateLv"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ln3/z/v$b;-><init>()V

    iput-object p1, p0, Le/a/c/a/q/b/b;->a:Le/a/c/a/q/b/f;

    iput-object p2, p0, Le/a/c/a/q/b/b;->b:Ls1/w/f;

    iput-object p3, p0, Le/a/c/a/q/b/b;->c:Le/a/c/a/q/b/a;

    iput-object p4, p0, Le/a/c/a/q/b/b;->d:Ln3/v/k0;

    return-void
.end method


# virtual methods
.method public a()Ln3/z/v;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ln3/z/v<",
            "Ljava/lang/Long;",
            "Lcom/truecaller/insights/ui/models/AdapterItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/c/a/q/b/e;

    iget-object v1, p0, Le/a/c/a/q/b/b;->a:Le/a/c/a/q/b/f;

    iget-object v2, p0, Le/a/c/a/q/b/b;->b:Ls1/w/f;

    iget-object v3, p0, Le/a/c/a/q/b/b;->c:Le/a/c/a/q/b/a;

    iget-object v4, p0, Le/a/c/a/q/b/b;->d:Ln3/v/k0;

    invoke-direct {v0, v1, v2, v3, v4}, Le/a/c/a/q/b/e;-><init>(Le/a/c/a/q/b/f;Ls1/w/f;Le/a/c/a/q/b/a;Ln3/v/k0;)V

    return-object v0
.end method
