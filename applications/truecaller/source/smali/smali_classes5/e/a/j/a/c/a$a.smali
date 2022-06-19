.class public final Le/a/j/a/c/a$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/j/a/c/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/j/a/c/a$a;->b:I

    iput-object p2, p0, Le/a/j/a/c/a$a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Le/a/j/a/c/a$a;->b:I

    const-string v1, "resourceProvider"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 1
    iget-object v0, p0, Le/a/j/a/c/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/j/a/c/a;

    .line 2
    iget-object v0, v0, Le/a/j/a/c/a;->g:Le/a/p5/h0;

    if-eqz v0, :cond_0

    .line 3
    sget v1, Lcom/truecaller/surveys/R$attr;->tcx_fillTertiaryBackground:I

    invoke-interface {v0, v1}, Le/a/p5/h0;->l(I)I

    move-result v0

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 6
    :cond_1
    throw v2

    .line 7
    :cond_2
    iget-object v0, p0, Le/a/j/a/c/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/j/a/c/a;

    .line 8
    iget-object v0, v0, Le/a/j/a/c/a;->g:Le/a/p5/h0;

    if-eqz v0, :cond_3

    .line 9
    sget v1, Lcom/truecaller/surveys/R$attr;->tcx_brandBackgroundBlue:I

    invoke-interface {v0, v1}, Le/a/p5/h0;->l(I)I

    move-result v0

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 11
    :cond_3
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method
