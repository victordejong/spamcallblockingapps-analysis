.class public final Le/a/e/c/a$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/c/a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/p5/u0/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/e/c/a$a;->b:I

    iput-object p2, p0, Le/a/e/c/a$a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Le/a/e/c/a$a;->b:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1
    iget-object v0, p0, Le/a/e/c/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/e/c/a;

    invoke-static {v0}, Le/a/e/c/a;->a(Le/a/e/c/a;)Le/a/w1;

    move-result-object v0

    invoke-interface {v0}, Le/a/w1;->s()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->p5()Le/a/p5/u0/a;

    move-result-object v0

    const-string v1, "graphHolder.objectsGraph.voipShowcaseUtils()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    throw v0

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/e/c/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/e/c/a;

    invoke-static {v0}, Le/a/e/c/a;->a(Le/a/e/c/a;)Le/a/w1;

    move-result-object v0

    invoke-interface {v0}, Le/a/w1;->s()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->V2()Le/a/p5/u0/a;

    move-result-object v0

    const-string v1, "graphHolder.objectsGraph\u2026ontextCallShowcaseUtils()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
