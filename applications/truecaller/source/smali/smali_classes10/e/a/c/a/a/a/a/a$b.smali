.class public final Le/a/c/a/a/a/a/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/a/a/a/a;->W4(Lcom/truecaller/insights/ui/models/AdapterItem$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/c/g/b;

.field public final synthetic b:Le/a/c/a/a/a/a/a;


# direct methods
.method public constructor <init>(Le/a/c/a/c/g/b;Le/a/c/a/a/a/a/a;Lcom/truecaller/insights/ui/models/AdapterItem$i;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/a/a/a/a$b;->a:Le/a/c/a/c/g/b;

    iput-object p2, p0, Le/a/c/a/a/a/a/a$b;->b:Le/a/c/a/a/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/c/a/a/a/a/a$b;->b:Le/a/c/a/a/a/a/a;

    .line 2
    iget-object p1, p1, Le/a/c/a/a/a/a/a;->e:Le/a/c/a/g/a2;

    .line 3
    iget-object p1, p1, Le/a/c/a/g/a2;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v0, "binding.root"

    .line 4
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 5
    iget-object v0, p0, Le/a/c/a/a/a/a/a$b;->a:Le/a/c/a/c/g/b;

    .line 6
    iget-object v0, v0, Le/a/c/a/c/g/b;->c:Ls1/z/b/l;

    const-string v1, "context"

    .line 7
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
