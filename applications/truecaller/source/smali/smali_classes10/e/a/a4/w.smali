.class public final Le/a/a4/w;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a4/i0;

.field public final synthetic c:Lcom/truecaller/TrueApp;

.field public final synthetic d:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/a4/i0;Lcom/truecaller/TrueApp;Ls1/w/f;)V
    .locals 0

    iput-object p1, p0, Le/a/a4/w;->b:Le/a/a4/i0;

    iput-object p2, p0, Le/a/a4/w;->c:Lcom/truecaller/TrueApp;

    iput-object p3, p0, Le/a/a4/w;->d:Ls1/w/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    sget v0, Le/a/j0/l;->a:I

    new-instance v0, Le/a/j0/a;

    .line 2
    iget-object v2, p0, Le/a/a4/w;->c:Lcom/truecaller/TrueApp;

    .line 3
    iget-object v3, p0, Le/a/a4/w;->d:Ls1/w/f;

    const-string v1, "ioContext"

    invoke-static {v3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v4, Le/a/a/g/y;

    iget-object v1, p0, Le/a/a4/w;->b:Le/a/a4/i0;

    .line 5
    iget-object v1, v1, Le/a/a4/g;->f:Lo3/a;

    .line 6
    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v5, "featuresRegistry.get()"

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Le/a/u3/g;

    invoke-direct {v4, v1}, Le/a/a/g/y;-><init>(Le/a/u3/g;)V

    .line 7
    iget-object v1, p0, Le/a/a4/w;->b:Le/a/a4/i0;

    .line 8
    iget-object v1, v1, Le/a/a4/i0;->T:Lo3/a;

    .line 9
    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v5, "settings.get()"

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v1

    check-cast v5, Le/a/a/i0;

    .line 10
    iget-object v1, p0, Le/a/a4/w;->b:Le/a/a4/i0;

    .line 11
    iget-object v1, v1, Le/a/a4/i0;->U:Lo3/a;

    .line 12
    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v6, "getSmartCardsCountUseCase.get()"

    invoke-static {v1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v1

    check-cast v6, Le/a/c/a/i/d;

    move-object v1, v0

    .line 13
    invoke-direct/range {v1 .. v6}, Le/a/j0/a;-><init>(Landroid/content/Context;Ls1/w/f;Le/a/a/g/x;Le/a/a/i0;Le/a/c/a/i/d;)V

    .line 14
    sput-object v0, Le/a/j0/l$a;->a:Le/a/j0/n;

    .line 15
    new-instance v0, Le/a/j0/g;

    iget-object v1, p0, Le/a/a4/w;->b:Le/a/a4/i0;

    .line 16
    iget-object v1, v1, Le/a/a4/i0;->S:Lo3/a;

    .line 17
    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "deviceManager.get()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Le/a/o5/f0;

    invoke-direct {v0, v1}, Le/a/j0/g;-><init>(Le/a/o5/f0;)V

    .line 18
    sput-object v0, Le/a/j0/l$a;->b:Le/a/j0/f;

    .line 19
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
