.class public final Le/a/n/a$c;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Lcom/truecaller/ui/components/ComboBase$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/n/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/n/a$c;->a:I

    iput-object p2, p0, Le/a/n/a$c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/ui/components/ComboBase;)V
    .locals 4

    iget v0, p0, Le/a/n/a$c;->a:I

    const-string v1, "it.selection"

    const-string v2, "it"

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 1
    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/ui/components/ComboBase;->getSelection()Le/a/e/c2/i0;

    move-result-object p1

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Le/a/e/c2/i0;->e()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Le/a/n/a$c;->b:Ljava/lang/Object;

    check-cast v0, Le/a/n/a;

    invoke-virtual {v0}, Le/a/n/a;->OA()Le/a/n/y;

    move-result-object v0

    iget-object v1, p0, Le/a/n/a$c;->b:Ljava/lang/Object;

    check-cast v1, Le/a/n/a;

    invoke-interface {v0, v1, p1}, Le/a/n/y;->r2(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Lq3/a/n0;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1

    .line 4
    :cond_1
    iget-object v0, p0, Le/a/n/a$c;->b:Ljava/lang/Object;

    check-cast v0, Le/a/n/a;

    invoke-virtual {v0}, Le/a/n/a;->OA()Le/a/n/y;

    move-result-object v0

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/ui/components/ComboBase;->getSelection()Le/a/e/c2/i0;

    move-result-object p1

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Le/a/e/c2/i0;->e()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Le/a/n/y;->W4(I)V

    return-void

    .line 5
    :cond_2
    iget-object v0, p0, Le/a/n/a$c;->b:Ljava/lang/Object;

    check-cast v0, Le/a/n/a;

    invoke-virtual {v0}, Le/a/n/a;->OA()Le/a/n/y;

    move-result-object v0

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/ui/components/ComboBase;->getSelection()Le/a/e/c2/i0;

    move-result-object p1

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Le/a/e/c2/i0;->e()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Long"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Le/a/n/y;->rj(J)V

    return-void
.end method
