.class public final Le/a/a/c/o/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/o/a;->bc()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/o/a;

.field public final synthetic b:[Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;


# direct methods
.method public constructor <init>(Le/a/a/c/o/a;[Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/o/a$g;->a:Le/a/a/c/o/a;

    iput-object p2, p0, Le/a/a/c/o/a$g;->b:[Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/a/c/o/a$g;->a:Le/a/a/c/o/a;

    invoke-virtual {p1}, Le/a/a/c/o/a;->PA()Le/a/a/c/o/c;

    move-result-object p1

    iget-object v0, p0, Le/a/a/c/o/a$g;->b:[Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;

    aget-object p2, v0, p2

    invoke-interface {p1, p2}, Le/a/a/c/o/c;->c2(Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;)V

    return-void
.end method
