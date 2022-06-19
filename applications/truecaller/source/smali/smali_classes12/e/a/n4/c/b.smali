.class public final Le/a/n4/c/b;
.super Le/a/n4/c/a;
.source "SourceFile"


# instance fields
.field public final h:Ljava/lang/String;

.field public final i:I

.field public final j:I

.field public final k:Le/a/p5/g;

.field public final l:Le/a/h5/m;


# direct methods
.method public constructor <init>(Le/a/n4/a;Le/a/u3/g;Le/a/q2/a;Le/a/p5/g;Le/a/o5/f0;Le/a/p5/c;Le/a/h5/m;)V
    .locals 6
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "settings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "roleRequester"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    .line 1
    invoke-direct/range {v0 .. v5}, Le/a/n4/c/a;-><init>(Le/a/n4/a;Le/a/u3/g;Le/a/q2/a;Le/a/o5/f0;Le/a/p5/c;)V

    iput-object p4, p0, Le/a/n4/c/b;->k:Le/a/p5/g;

    iput-object p7, p0, Le/a/n4/c/b;->l:Le/a/h5/m;

    const-string p1, "defaultdialer"

    .line 2
    iput-object p1, p0, Le/a/n4/c/b;->h:Ljava/lang/String;

    const p1, 0x7f080442

    .line 3
    iput p1, p0, Le/a/n4/c/b;->i:I

    const p1, 0x7f12023c

    .line 4
    iput p1, p0, Le/a/n4/c/b;->j:I

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "Clicked"

    .line 2
    invoke-virtual {p0, p1}, Le/a/n4/c/a;->e(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/n4/c/b;->l:Le/a/h5/m;

    invoke-interface {p1}, Le/a/h5/m;->c()V

    return-void
.end method

.method public d()Z
    .locals 2

    .line 1
    invoke-super {p0}, Le/a/n4/c/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/n4/c/b;->k:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/n4/c/b;->k:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->q()I

    move-result v0

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIcon()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/n4/c/b;->i:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/n4/c/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/n4/c/b;->j:I

    return v0
.end method
