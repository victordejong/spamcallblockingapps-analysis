.class public final Le/a/e/b/k/p$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/ui/components/ComboBase$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/b/k/p;->jh(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/e/b/k/p;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/a/e/b/k/p;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/e/b/k/p$c;->a:Le/a/e/b/k/p;

    iput-object p2, p0, Le/a/e/b/k/p$c;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/ui/components/ComboBase;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/b/k/p$c;->a:Le/a/e/b/k/p;

    invoke-virtual {v0}, Le/a/e/b/k/p;->OA()Le/a/e/b/k/t;

    move-result-object v0

    const-string v1, "combo1"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/ui/components/ComboBase;->getSelection()Le/a/e/c2/i0;

    move-result-object p1

    const-string v1, "combo1.selection"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Le/a/e/c2/i0;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/e/b/k/t;->Zi(Ljava/lang/String;)V

    return-void
.end method
