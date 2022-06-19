.class public final Le/a/a/c/d$v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/d;->x3(Lcom/truecaller/messaging/data/types/Message;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/d;

.field public final synthetic b:Lcom/truecaller/messaging/data/types/Message;


# direct methods
.method public constructor <init>(Le/a/a/c/d;Lcom/truecaller/messaging/data/types/Message;Z)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/d$v;->a:Le/a/a/c/d;

    iput-object p2, p0, Le/a/a/c/d$v;->b:Lcom/truecaller/messaging/data/types/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/a/c/d$v;->a:Le/a/a/c/d;

    .line 2
    iget-object p1, p1, Le/a/a/c/d;->i0:Le/a/a/c/k/a/j;

    .line 3
    iget-object v0, p0, Le/a/a/c/d$v;->b:Lcom/truecaller/messaging/data/types/Message;

    invoke-interface {p1, v0}, Le/a/a/c/k/a/j;->x(Lcom/truecaller/messaging/data/types/Message;)V

    return-void
.end method
