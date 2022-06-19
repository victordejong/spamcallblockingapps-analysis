.class public final Le/a/a/c/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/a/c/a/k$a;

.field public final synthetic b:Le/a/c/r/j/a;

.field public final synthetic c:Lcom/truecaller/messaging/data/types/Message;

.field public final synthetic d:Ls1/k;

.field public final synthetic e:Z


# direct methods
.method public constructor <init>(Le/a/a/c/a/k$a;Le/a/c/r/j/a;Lcom/truecaller/messaging/data/types/Message;Ls1/k;Z)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/a/l;->a:Le/a/a/c/a/k$a;

    iput-object p2, p0, Le/a/a/c/a/l;->b:Le/a/c/r/j/a;

    iput-object p3, p0, Le/a/a/c/a/l;->c:Lcom/truecaller/messaging/data/types/Message;

    iput-object p4, p0, Le/a/a/c/a/l;->d:Ls1/k;

    iput-boolean p5, p0, Le/a/a/c/a/l;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Le/a/a/c/a/l;->a:Le/a/a/c/a/k$a;

    iget-object v0, p0, Le/a/a/c/a/l;->b:Le/a/c/r/j/a;

    iget-object v1, p0, Le/a/a/c/a/l;->c:Lcom/truecaller/messaging/data/types/Message;

    iget-object v2, p0, Le/a/a/c/a/l;->d:Ls1/k;

    iget-boolean v3, p0, Le/a/a/c/a/l;->e:Z

    invoke-interface {p1, v0, v1, v2, v3}, Le/a/a/c/a/k$a;->Q9(Le/a/c/r/j/a;Lcom/truecaller/messaging/data/types/Message;Ls1/k;Z)V

    return-void
.end method
