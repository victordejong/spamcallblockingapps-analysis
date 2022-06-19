.class public final Le/a/c/a/q/b/f;
.super Le/a/c/a/i/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/c/a/q/b/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/c/a/i/c<",
        "Le/a/c/q/f;",
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/insights/ui/models/AdapterItem;",
        ">;>;"
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

    const-string v0, "insightsUiBridge"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Le/a/c/a/i/c;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/c/a/q/b/f;->b:Le/a/c/q/d;

    iput-object p2, p0, Le/a/c/a/q/b/f;->c:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Lq3/a/x2/f;
    .locals 0

    .line 1
    check-cast p1, Le/a/c/q/f;

    invoke-virtual {p0, p1}, Le/a/c/a/q/b/f;->d(Le/a/c/q/f;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method

.method public d(Le/a/c/q/f;)Lq3/a/x2/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/q/f;",
            ")",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/ui/models/AdapterItem;",
            ">;>;"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ls1/d0/i;

    const/4 v1, 0x1

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Ls1/d0/i;-><init>(II)V

    .line 2
    new-instance v1, Lq3/a/x2/i;

    invoke-direct {v1, v0}, Lq3/a/x2/i;-><init>(Ls1/d0/i;)V

    .line 3
    new-instance v0, Le/a/c/a/q/b/g;

    invoke-direct {v0, v1}, Le/a/c/a/q/b/g;-><init>(Lq3/a/x2/f;)V

    .line 4
    new-instance v1, Le/a/c/a/q/b/f$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/c/a/q/b/f$b;-><init>(Le/a/c/a/q/b/f;Le/a/c/q/f;Ls1/w/d;)V

    invoke-static {v0, v1}, Ls1/a/a/a/v0/f/d;->R0(Lq3/a/x2/f;Ls1/z/b/p;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method
