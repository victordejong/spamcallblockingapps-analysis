.class public final Le/a/k/a/e/k/f;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/k/a/e/k/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/k/a/e/k/d;",
        ">;",
        "Le/a/k/a/e/k/c;"
    }
.end annotation


# instance fields
.field public final d:Le/a/k/c/h0;

.field public final e:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/k/c/h0;Ls1/w/f;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "receiveVideoSettingsManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/k/a/e/k/f;->d:Le/a/k/c/h0;

    iput-object p2, p0, Le/a/k/a/e/k/f;->e:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k/a/e/k/f;->e:Ls1/w/f;

    return-object v0
.end method
