.class public final Le/a/c/a/k/e/k;
.super Le/a/b0/a/w/g;
.source "SourceFile"


# instance fields
.field public final synthetic d:Le/a/c/a/k/e/e;


# direct methods
.method public constructor <init>(Le/a/c/a/k/e/e;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/k/e/k;->d:Le/a/c/a/k/e/e;

    .line 1
    invoke-direct {p0}, Le/a/b0/a/w/g;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/a/k/e/k;->d:Le/a/c/a/k/e/e;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    instance-of v1, v0, Le/a/b0/a/w/c$a;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Le/a/b0/a/w/c$a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Le/a/b0/a/w/c$a;->v7(Z)V

    :cond_1
    return-void
.end method
