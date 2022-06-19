.class public final Le/a/h/g/s;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/l0/u/d/b;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/h/g/w;


# direct methods
.method public constructor <init>(Le/a/h/g/w;)V
    .locals 0

    iput-object p1, p0, Le/a/h/g/s;->b:Le/a/h/g/w;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Le/a/l0/u/d/b;

    .line 2
    iget-object v0, p0, Le/a/h/g/s;->b:Le/a/h/g/w;

    .line 3
    iput-object p1, v0, Le/a/h/g/w;->d:Le/a/l0/u/d/b;

    .line 4
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h/g/p;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Le/a/h/g/p;->q5()V

    .line 6
    :cond_0
    iget-object p1, p0, Le/a/h/g/s;->b:Le/a/h/g/w;

    .line 7
    iget-object p1, p1, Le/a/h/g/w;->d:Le/a/l0/u/d/b;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 8
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-nez p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    .line 9
    :goto_0
    iget-object v2, p0, Le/a/h/g/s;->b:Le/a/h/g/w;

    .line 10
    iget-object v2, v2, Le/a/h/g/w;->k:Le/a/p5/c0;

    const v3, 0x7f120926

    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    invoke-interface {v2, v3, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resourceProvider.getStri\u2026ng_list_empty_state_text)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v2, p0, Le/a/h/g/s;->b:Le/a/h/g/w;

    .line 13
    iget-object v3, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/h/g/p;

    if-eqz v3, :cond_2

    .line 14
    iget-object v2, v2, Le/a/h/g/w;->m:Lcom/truecaller/callrecording/CallRecordingManager;

    .line 15
    invoke-interface {v2}, Le/a/k0/a/e;->isEnabled()Z

    move-result v2

    xor-int/2addr v0, v2

    invoke-interface {v3, p1, v1, v0}, Le/a/h/g/p;->tx(ZLjava/lang/String;Z)V

    :cond_2
    if-eqz p1, :cond_3

    .line 16
    iget-object p1, p0, Le/a/h/g/s;->b:Le/a/h/g/w;

    .line 17
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h/g/p;

    if-eqz p1, :cond_4

    .line 18
    invoke-interface {p1}, Le/a/h/g/p;->e()V

    goto :goto_1

    .line 19
    :cond_3
    iget-object p1, p0, Le/a/h/g/s;->b:Le/a/h/g/w;

    .line 20
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h/g/p;

    if-eqz v0, :cond_4

    .line 21
    iget-object p1, p1, Le/a/h/g/w;->l:Le/a/k0/f;

    .line 22
    invoke-interface {p1}, Le/a/k0/f;->l2()Z

    move-result p1

    invoke-interface {v0, p1}, Le/a/h/g/p;->yn(Z)V

    .line 23
    :cond_4
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
