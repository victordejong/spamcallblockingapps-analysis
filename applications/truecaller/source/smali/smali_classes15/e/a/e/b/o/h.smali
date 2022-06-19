.class public final Le/a/e/b/o/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/ui/components/ComboBase$a;


# instance fields
.field public final synthetic a:Le/a/e/b/o/i;


# direct methods
.method public constructor <init>(Le/a/e/b/o/i;)V
    .locals 0

    iput-object p1, p0, Le/a/e/b/o/h;->a:Le/a/e/b/o/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/ui/components/ComboBase;)V
    .locals 2

    const-string v0, "comboArg"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/e/b/o/h;->a:Le/a/e/b/o/i;

    invoke-virtual {v0}, Le/a/e/b/o/i;->OA()Le/a/e/b/o/m;

    move-result-object v0

    invoke-virtual {p1}, Lcom/truecaller/ui/components/ComboBase;->getSelection()Le/a/e/c2/i0;

    move-result-object p1

    const-string v1, "comboArg.selection"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Le/a/e/c2/i0;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/e/b/o/m;->L8(Ljava/lang/String;)V

    return-void
.end method
