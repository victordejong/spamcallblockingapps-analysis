.class public final Le/a/a/c/o/a$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method public constructor <init>(Le/a/a/c/o/a;[Lcom/truecaller/messaging/conversation/notifications/ConversationMutePeriod;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/o/a$h;->a:Le/a/a/c/o/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/a/c/o/a$h;->a:Le/a/a/c/o/a;

    invoke-virtual {p1}, Le/a/a/c/o/a;->PA()Le/a/a/c/o/c;

    move-result-object p1

    invoke-interface {p1}, Le/a/a/c/o/c;->U3()V

    return-void
.end method
