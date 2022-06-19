.class public final Le/a/a/c/a/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/messaging/data/types/Message;

.field public final synthetic b:Le/a/a/c/a/k$a;

.field public final synthetic c:Ls1/k;

.field public final synthetic d:Z


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/data/types/Message;Le/a/a/c/a/k$a;Ls1/k;Z)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/a/m;->a:Lcom/truecaller/messaging/data/types/Message;

    iput-object p2, p0, Le/a/a/c/a/m;->b:Le/a/a/c/a/k$a;

    iput-object p3, p0, Le/a/a/c/a/m;->c:Ls1/k;

    iput-boolean p4, p0, Le/a/a/c/a/m;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Le/a/a/c/a/m;->a:Lcom/truecaller/messaging/data/types/Message;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/a/c/a/m;->b:Le/a/a/c/a/k$a;

    iget-object v1, p0, Le/a/a/c/a/m;->c:Ls1/k;

    iget-boolean v2, p0, Le/a/a/c/a/m;->d:Z

    invoke-interface {v0, p1, v1, v2}, Le/a/a/c/a/k$a;->w7(Lcom/truecaller/messaging/data/types/Message;Ls1/k;Z)V

    :cond_0
    return-void
.end method
