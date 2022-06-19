.class public final Le/a/c/a/d/d/a;
.super Le/a/c/a/i/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/c/a/i/k<",
        "Ls1/s;",
        "Le/a/c/q/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Le/a/c/q/d;

.field public final c:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/c/q/d;Ls1/w/f;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "insightsUiManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Le/a/c/a/i/k;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/c/a/d/d/a;->b:Le/a/c/q/d;

    iput-object p2, p0, Le/a/c/a/d/d/a;->c:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Le/a/c/q/i;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Le/a/c/q/i;-><init>(JJ)V

    return-object v0
.end method

.method public b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ls1/s;

    .line 2
    iget-object p1, p0, Le/a/c/a/d/d/a;->b:Le/a/c/q/d;

    invoke-interface {p1, p2}, Le/a/c/q/d;->z(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
