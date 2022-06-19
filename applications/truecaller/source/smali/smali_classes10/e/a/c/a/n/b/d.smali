.class public final Le/a/c/a/n/b/d;
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
.field public final a:Le/a/c/a/n/b/e;

.field public final b:Ls1/w/f;

.field public final c:Ln3/v/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/v/k0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/c/a/n/b/e;Ls1/w/f;Ln3/v/k0;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/a/n/b/e;",
            "Ls1/w/f;",
            "Ln3/v/k0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "remindersPageFlowUseCase"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ln3/z/v$b;-><init>()V

    iput-object p1, p0, Le/a/c/a/n/b/d;->a:Le/a/c/a/n/b/e;

    iput-object p2, p0, Le/a/c/a/n/b/d;->b:Ls1/w/f;

    iput-object p3, p0, Le/a/c/a/n/b/d;->c:Ln3/v/k0;

    return-void
.end method


# virtual methods
.method public a()Ln3/z/v;
    .locals 4
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
    new-instance v0, Le/a/c/a/n/b/c;

    iget-object v1, p0, Le/a/c/a/n/b/d;->a:Le/a/c/a/n/b/e;

    iget-object v2, p0, Le/a/c/a/n/b/d;->b:Ls1/w/f;

    iget-object v3, p0, Le/a/c/a/n/b/d;->c:Ln3/v/k0;

    invoke-direct {v0, v1, v2, v3}, Le/a/c/a/n/b/c;-><init>(Le/a/c/a/n/b/e;Ls1/w/f;Ln3/v/k0;)V

    return-object v0
.end method
