.class public final Le/a/c/a/n/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/a/n/b/a;


# instance fields
.field public final a:Le/a/c/a/n/b/e;

.field public final b:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/c/a/n/b/e;Ls1/w/f;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "remindersPageFlowUseCase"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/a/n/b/b;->a:Le/a/c/a/n/b/e;

    iput-object p2, p0, Le/a/c/a/n/b/b;->b:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a(Ln3/v/k0;)Le/a/c/a/n/b/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/v/k0<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Le/a/c/a/n/b/d;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/c/a/n/b/d;

    .line 2
    iget-object v1, p0, Le/a/c/a/n/b/b;->a:Le/a/c/a/n/b/e;

    .line 3
    iget-object v2, p0, Le/a/c/a/n/b/b;->b:Ls1/w/f;

    .line 4
    invoke-direct {v0, v1, v2, p1}, Le/a/c/a/n/b/d;-><init>(Le/a/c/a/n/b/e;Ls1/w/f;Ln3/v/k0;)V

    return-object v0
.end method
