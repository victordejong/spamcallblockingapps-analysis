.class public final Le/a/g/a/a/a$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/r/a/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/a/a/a;->gm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/g/a/a/a;


# direct methods
.method public constructor <init>(Le/a/g/a/a/a;)V
    .locals 0

    iput-object p1, p0, Le/a/g/a/a/a$r;->a:Le/a/g/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/g/a/a/a$r;->a:Le/a/g/a/a/a;

    invoke-virtual {p1}, Le/a/g/a/a/a;->VA()Le/a/g/a/a/g;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Le/a/g/a/m;

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, v0, Le/a/g/a/m;->t:Z

    .line 3
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/h;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/g/a/h;->De()V

    .line 4
    :cond_0
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/h;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/g/a/h;->wg()V

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    new-instance v3, Le/a/g/a/u;

    const/4 p1, 0x0

    invoke-direct {v3, v0, p1}, Le/a/g/a/u;-><init>(Le/a/g/a/m;Ls1/w/d;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
