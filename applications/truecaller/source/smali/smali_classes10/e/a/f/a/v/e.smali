.class public final Le/a/f/a/v/e;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/u2/a/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/f/a/v/d;",
        ">;",
        "Le/a/f/a/v/e;"
    }
.end annotation


# instance fields
.field public final b:Le/a/b0/e/f;

.field public final c:Le/a/f/z/y;

.field public final d:Le/a/q2/a;


# direct methods
.method public constructor <init>(Le/a/b0/e/f;Le/a/f/z/y;Le/a/q2/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "regionUtils"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inCallUISettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/f/a/v/e;->b:Le/a/b0/e/f;

    iput-object p2, p0, Le/a/f/a/v/e;->c:Le/a/f/z/y;

    iput-object p3, p0, Le/a/f/a/v/e;->d:Le/a/q2/a;

    return-void
.end method


# virtual methods
.method public Y0(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Le/a/f/a/v/d;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/f/a/v/e;->b:Le/a/b0/e/f;

    invoke-interface {v0}, Le/a/b0/e/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget v0, Lcom/truecaller/incallui/R$drawable;->logo_white_uk:I

    goto :goto_0

    .line 6
    :cond_0
    sget v0, Lcom/truecaller/incallui/R$drawable;->ic_truecaller_logo_white_small:I

    .line 7
    :goto_0
    invoke-interface {p1, v0}, Le/a/f/a/v/d;->w(I)V

    .line 8
    iget-object p1, p0, Le/a/f/a/v/e;->c:Le/a/f/z/y;

    const/4 v0, 0x1

    const-string v1, "infoShown"

    invoke-interface {p1, v1, v0}, Le/a/f/z/y;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "InCallUIOptInInfo"

    const-string v0, "viewId"

    .line 9
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Le/a/q2/y0/a/a;

    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, p1, v1, v1}, Le/a/q2/y0/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 12
    iget-object p1, p0, Le/a/f/a/v/e;->d:Le/a/q2/a;

    invoke-static {v0, p1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    return-void
.end method
