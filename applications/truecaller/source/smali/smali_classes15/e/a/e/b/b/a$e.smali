.class public final Le/a/e/b/b/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/ui/components/ComboBase$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/b/b/a;->nf(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/e/b/b/a;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/a/e/b/b/a;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/e/b/b/a$e;->a:Le/a/e/b/b/a;

    iput-object p2, p0, Le/a/e/b/b/a$e;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/ui/components/ComboBase;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/b/b/a$e;->a:Le/a/e/b/b/a;

    invoke-virtual {v0}, Le/a/e/b/b/a;->OA()Le/a/e/b/b/c;

    move-result-object v0

    const-string v1, "combo"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/ui/components/ComboBase;->getSelection()Le/a/e/c2/i0;

    move-result-object p1

    const-string v1, "combo.selection"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Le/a/e/c2/i0;->e()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Le/a/e/b/b/c;->Wh(Ljava/lang/String;)V

    return-void
.end method
