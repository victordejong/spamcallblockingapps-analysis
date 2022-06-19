.class public final Le/a/e/b/l/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/ui/components/ComboBase$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/b/l/c;->Lf(Ljava/util/List;Le/a/j4/b/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/e/b/l/c;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/a/e/b/l/c;Ljava/util/List;Le/a/j4/b/b/b;)V
    .locals 0

    iput-object p1, p0, Le/a/e/b/l/c$b;->a:Le/a/e/b/l/c;

    iput-object p2, p0, Le/a/e/b/l/c$b;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/ui/components/ComboBase;)V
    .locals 3

    const-string v0, "comboArg"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/ui/components/ComboBase;->getSelection()Le/a/e/c2/i0;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.truecaller.old.data.entity.Language"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/j4/b/b/b;

    .line 2
    iget-object v0, p0, Le/a/e/b/l/c$b;->a:Le/a/e/b/l/c;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Le/a/e/b/l/c$b;->a:Le/a/e/b/l/c;

    .line 4
    iget-object v1, v1, Le/a/e/b/l/c;->c:Le/a/e/b/l/d;

    if-eqz v1, :cond_0

    const-string v2, "it"

    .line 5
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0, p1}, Le/a/e/b/l/d;->La(Landroid/content/Context;Le/a/j4/b/b/b;)V

    goto :goto_0

    :cond_0
    const-string p1, "presenter"

    .line 6
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
