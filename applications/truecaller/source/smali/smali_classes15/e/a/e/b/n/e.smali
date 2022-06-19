.class public final Le/a/e/b/n/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/ui/components/ComboBase$a;


# instance fields
.field public final synthetic a:Le/a/e/b/n/h;


# direct methods
.method public constructor <init>(Le/a/e/b/n/h;)V
    .locals 0

    iput-object p1, p0, Le/a/e/b/n/e;->a:Le/a/e/b/n/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/ui/components/ComboBase;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/b/n/e;->a:Le/a/e/b/n/h;

    invoke-virtual {v0}, Le/a/e/b/n/h;->OA()Le/a/e/b/n/j;

    move-result-object v0

    const-string v1, "it"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/ui/components/ComboBase;->getSelection()Le/a/e/c2/i0;

    move-result-object p1

    const-string v1, "it.selection"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Le/a/e/c2/i0;->e()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Le/a/e/b/n/j;->Ec(Z)V

    return-void
.end method
