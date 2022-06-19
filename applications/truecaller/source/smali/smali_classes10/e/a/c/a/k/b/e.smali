.class public final Le/a/c/a/k/b/e;
.super Le/a/c/a/i/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/c/a/i/c<",
        "Le/a/c/a/k/c/a;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Le/a/c/h/g;

.field public final c:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/c/h/g;Ls1/w/f;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "messageFetcher"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Le/a/c/a/i/c;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/c/a/k/b/e;->b:Le/a/c/h/g;

    iput-object p2, p0, Le/a/c/a/k/b/e;->c:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Lq3/a/x2/f;
    .locals 2

    .line 1
    check-cast p1, Le/a/c/a/k/c/a;

    const-string v0, "input"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/a/c/a/k/b/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Le/a/c/a/k/b/d;-><init>(Le/a/c/a/k/b/e;Le/a/c/a/k/c/a;Ls1/w/d;)V

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->P(Ls1/z/b/p;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method
