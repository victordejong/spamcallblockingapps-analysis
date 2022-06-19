.class public final synthetic Le/a/a/c/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/a/c/y3;

.field public final synthetic b:[Lcom/truecaller/messaging/data/types/Message;


# direct methods
.method public synthetic constructor <init>(Le/a/a/c/y3;[Lcom/truecaller/messaging/data/types/Message;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/h0;->a:Le/a/a/c/y3;

    iput-object p2, p0, Le/a/a/c/h0;->b:[Lcom/truecaller/messaging/data/types/Message;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Le/a/a/c/h0;->a:Le/a/a/c/y3;

    iget-object v0, p0, Le/a/a/c/h0;->b:[Lcom/truecaller/messaging/data/types/Message;

    .line 1
    iget-object p1, p1, Le/a/a/c/y3;->c:Le/a/a/c/s4;

    const-string v1, "undoToast"

    invoke-interface {p1, v0, v1}, Le/a/a/c/h3$a;->rg([Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;)V

    return-void
.end method
