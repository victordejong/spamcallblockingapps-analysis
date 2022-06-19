.class public final Le/a/c/a/n/c/d/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/c/a/n/c/d/c/b;

.field public final synthetic b:Lcom/truecaller/insights/ui/models/AdapterItem$b;


# direct methods
.method public constructor <init>(Le/a/c/a/n/c/d/c/b;Lcom/truecaller/insights/ui/models/AdapterItem$b;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/n/c/d/c/a;->a:Le/a/c/a/n/c/d/c/b;

    iput-object p2, p0, Le/a/c/a/n/c/d/c/a;->b:Lcom/truecaller/insights/ui/models/AdapterItem$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/c/a/n/c/d/c/a;->a:Le/a/c/a/n/c/d/c/b;

    .line 2
    iget-object p1, p1, Le/a/c/a/n/c/d/c/b;->f:Ls1/z/b/l;

    .line 3
    iget-object v0, p0, Le/a/c/a/n/c/d/c/a;->b:Lcom/truecaller/insights/ui/models/AdapterItem$b;

    .line 4
    iget v0, v0, Lcom/truecaller/insights/ui/models/AdapterItem$b;->b:I

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
