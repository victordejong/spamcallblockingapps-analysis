.class public final Le/a/c/a/o/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/c/y/i;

.field public final synthetic b:Le/a/c/a/o/b;

.field public final synthetic c:Lcom/truecaller/messaging/data/types/Message;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Z


# direct methods
.method public constructor <init>(Le/a/c/y/i;Le/a/c/a/o/b;Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/o/c;->a:Le/a/c/y/i;

    iput-object p2, p0, Le/a/c/a/o/c;->b:Le/a/c/a/o/b;

    iput-object p3, p0, Le/a/c/a/o/c;->c:Lcom/truecaller/messaging/data/types/Message;

    iput-object p4, p0, Le/a/c/a/o/c;->d:Ljava/lang/String;

    iput-boolean p5, p0, Le/a/c/a/o/c;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Le/a/c/a/o/c;->a:Le/a/c/y/i;

    instance-of p1, p1, Le/a/c/y/i$f;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/c/a/o/c;->b:Le/a/c/a/o/b;

    iget-object v0, p0, Le/a/c/a/o/c;->c:Lcom/truecaller/messaging/data/types/Message;

    iget-object v1, p0, Le/a/c/a/o/c;->d:Ljava/lang/String;

    iget-boolean v2, p0, Le/a/c/a/o/c;->e:Z

    invoke-interface {p1, v0, v1, v2}, Le/a/c/a/o/b;->a3(Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
