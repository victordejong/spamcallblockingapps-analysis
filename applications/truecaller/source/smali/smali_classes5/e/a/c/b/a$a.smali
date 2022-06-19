.class public final Le/a/c/b/a$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/b/a;-><init>(Le/a/b0/e/r/a;Le/a/b0/o/a;Le/a/p5/g;Le/a/b0/e/f;Lo3/a;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/c/b/a$a;->b:I

    iput-object p2, p0, Le/a/c/b/a$a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Le/a/c/b/a$a;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    .line 1
    iget-object v0, p0, Le/a/c/b/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/c/b/a;

    .line 2
    iget-object v0, v0, Le/a/c/b/a;->f:Le/a/p5/g;

    .line 3
    invoke-interface {v0}, Le/a/p5/g;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/c/b/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/c/b/a;

    .line 4
    iget-object v0, v0, Le/a/c/b/a;->f:Le/a/p5/g;

    .line 5
    invoke-interface {v0}, Le/a/p5/g;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    .line 6
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 7
    throw v0

    :cond_2
    const-string v0, "alphaRelease"

    const-string v3, "release"

    .line 8
    invoke-static {v0, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Le/a/c/b/a$a;->c:Ljava/lang/Object;

    check-cast v0, Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/h/c;

    invoke-interface {v0}, Le/a/c/h/c;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v1, v2

    .line 9
    :cond_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
