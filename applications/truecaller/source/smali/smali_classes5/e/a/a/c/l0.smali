.class public final synthetic Le/a/a/c/l0;
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

    iput-object p1, p0, Le/a/a/c/l0;->a:Le/a/a/c/y3;

    iput-object p2, p0, Le/a/a/c/l0;->b:[Lcom/truecaller/messaging/data/types/Message;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Le/a/a/c/l0;->a:Le/a/a/c/y3;

    iget-object v1, p0, Le/a/a/c/l0;->b:[Lcom/truecaller/messaging/data/types/Message;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v2, :cond_1

    const/4 v3, 0x2

    if-eq p2, v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, v0, Le/a/a/c/y3;->d:Le/a/a/c/h3;

    invoke-interface {p2, v3, v1, v2}, Le/a/a/c/h3;->N4(I[Lcom/truecaller/messaging/data/types/Message;Z)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p2, v0, Le/a/a/c/y3;->d:Le/a/a/c/h3;

    const/4 v0, 0x0

    invoke-interface {p2, v0, v1, v2}, Le/a/a/c/h3;->N4(I[Lcom/truecaller/messaging/data/types/Message;Z)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p2, v0, Le/a/a/c/y3;->d:Le/a/a/c/h3;

    const/4 v0, 0x3

    invoke-interface {p2, v0, v1, v2}, Le/a/a/c/h3;->N4(I[Lcom/truecaller/messaging/data/types/Message;Z)V

    .line 5
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
