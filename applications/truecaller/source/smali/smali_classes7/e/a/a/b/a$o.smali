.class public final Le/a/a/b/a$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/b/a;->Om([Lcom/truecaller/messaging/data/types/Conversation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/b/a;

.field public final synthetic b:[Lcom/truecaller/messaging/data/types/Conversation;


# direct methods
.method public constructor <init>(Le/a/a/b/a;[Lcom/truecaller/messaging/data/types/Conversation;)V
    .locals 0

    iput-object p1, p0, Le/a/a/b/a$o;->a:Le/a/a/b/a;

    iput-object p2, p0, Le/a/a/b/a$o;->b:[Lcom/truecaller/messaging/data/types/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/a/b/a$o;->a:Le/a/a/b/a;

    invoke-virtual {p1}, Le/a/a/b/a;->QA()Le/a/a/b/p;

    move-result-object p1

    iget-object v0, p0, Le/a/a/b/a$o;->b:[Lcom/truecaller/messaging/data/types/Conversation;

    invoke-interface {p1, v0}, Le/a/a/b/p;->Ft([Lcom/truecaller/messaging/data/types/Conversation;)V

    return-void
.end method
