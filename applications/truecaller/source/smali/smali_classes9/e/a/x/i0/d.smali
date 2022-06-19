.class public final Le/a/x/i0/d;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/x/i0/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/x/i0/b;",
        ">;",
        "Le/a/x/i0/a;"
    }
.end annotation


# instance fields
.field public final d:Ls1/w/f;

.field public final e:Le/a/x/l;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/x/l;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ghostCallManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/x/i0/d;->d:Ls1/w/f;

    iput-object p2, p0, Le/a/x/i0/d;->e:Le/a/x/l;

    return-void
.end method


# virtual methods
.method public Y0(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Le/a/x/i0/b;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    new-instance v4, Le/a/x/i0/c;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Le/a/x/i0/c;-><init>(Le/a/x/i0/d;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
