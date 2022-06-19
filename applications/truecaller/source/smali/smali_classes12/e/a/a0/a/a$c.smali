.class public final Le/a/a0/a/a$c;
.super Le/m/a/g/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a0/a/a;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic o:Le/a/a0/a/a;


# direct methods
.method public constructor <init>(Le/a/a0/a/a;Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a0/a/a$c;->o:Le/a/a0/a/a;

    invoke-direct {p0, p2, p3}, Le/m/a/g/e/d;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a0/a/a$c;->o:Le/a/a0/a/a;

    invoke-virtual {v0}, Le/a/a0/a/a;->WA()Le/a/a0/e;

    move-result-object v0

    check-cast v0, Le/a/a0/b;

    .line 2
    iget-object v1, v0, Le/a/a0/b;->h:Le/a/a0/g;

    if-eqz v1, :cond_2

    .line 3
    sget-object v2, Le/a/a0/g$a;->a:Le/a/a0/g$a;

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "CancelClicked"

    .line 4
    invoke-virtual {v0, v1}, Le/a/a0/b;->Lj(Ljava/lang/String;)V

    .line 5
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a0/f;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/a0/f;->cancel()V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v2, Le/a/a0/g$b;->a:Le/a/a0/g$b;

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Le/a/a0/b;->Jj()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "currentPage"

    .line 7
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
