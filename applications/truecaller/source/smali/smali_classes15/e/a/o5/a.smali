.class public final synthetic Le/a/o5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/ui/components/ComboBase$a;


# instance fields
.field public final synthetic a:Le/a/o5/j0$a;


# direct methods
.method public synthetic constructor <init>(Le/a/o5/j0$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/o5/a;->a:Le/a/o5/j0$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/ui/components/ComboBase;)V
    .locals 2

    iget-object v0, p0, Le/a/o5/a;->a:Le/a/o5/j0$a;

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/ui/components/ComboBase;->getSelection()Le/a/e/c2/i0;

    move-result-object p1

    invoke-virtual {p1}, Le/a/e/c2/i0;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v0, Le/a/e/a/y0;

    .line 2
    iget-object v0, v0, Le/a/e/a/y0;->a:Le/a/e/a/k3;

    .line 3
    iget-object v0, v0, Le/a/e/a/k3;->r:Le/a/c3/d;

    const-string v1, "BUILD_KEY"

    invoke-interface {v0, v1, p1}, Le/a/c3/d;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
