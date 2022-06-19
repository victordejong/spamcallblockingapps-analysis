.class public final synthetic Le/a/a/c/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/a/c/y3;

.field public final synthetic b:[Lcom/truecaller/messaging/data/types/Message;


# direct methods
.method public synthetic constructor <init>(Le/a/a/c/y3;[Lcom/truecaller/messaging/data/types/Message;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/j0;->a:Le/a/a/c/y3;

    iput-object p2, p0, Le/a/a/c/j0;->b:[Lcom/truecaller/messaging/data/types/Message;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Le/a/a/c/j0;->a:Le/a/a/c/y3;

    iget-object p2, p0, Le/a/a/c/j0;->b:[Lcom/truecaller/messaging/data/types/Message;

    .line 1
    iget-object p1, p1, Le/a/a/c/y3;->d:Le/a/a/c/h3;

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Le/a/a/c/h3;->Vh([Lcom/truecaller/messaging/data/types/Message;Z)V

    return-void
.end method
