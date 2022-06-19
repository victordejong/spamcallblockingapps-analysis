.class public final Le/a/u/g$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/u/g;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/u/g$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/u/g;


# direct methods
.method public constructor <init>(Le/a/u/g;)V
    .locals 0

    iput-object p1, p0, Le/a/u/g$b;->b:Le/a/u/g;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Le/a/u/g$a;

    .line 2
    iget-object v1, p0, Le/a/u/g$b;->b:Le/a/u/g;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v1

    const-string v2, "requireActivity()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Le/a/u/g$b;->b:Le/a/u/g;

    .line 4
    iget-object v2, v2, Le/a/u/g;->b:Le/a/p5/c0;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 5
    invoke-static {v2, v3}, Le/a/p5/s0/g;->E1(Le/a/p5/c0;Z)Lcom/truecaller/yearincalling/model/StatsUiModel;

    move-result-object v2

    invoke-static {v2}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 6
    invoke-direct {v0, v1, v2}, Le/a/u/g$a;-><init>(Ln3/r/a/l;Ljava/util/List;)V

    return-object v0

    :cond_0
    const-string v0, "resourceProvider"

    .line 7
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
