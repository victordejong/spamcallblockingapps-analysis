.class public final Le/a/a/c/d$u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/d;->w0(Lcom/truecaller/messaging/data/types/Message;[Lcom/truecaller/messaging/data/types/QuickAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/messaging/data/types/QuickAction;

.field public final synthetic b:Le/a/a/c/d;

.field public final synthetic c:Lcom/truecaller/messaging/data/types/Message;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/data/types/QuickAction;Landroid/widget/LinearLayout;Le/a/a/c/d;[Lcom/truecaller/messaging/data/types/QuickAction;Lcom/truecaller/messaging/data/types/Message;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/d$u;->a:Lcom/truecaller/messaging/data/types/QuickAction;

    iput-object p3, p0, Le/a/a/c/d$u;->b:Le/a/a/c/d;

    iput-object p5, p0, Le/a/a/c/d$u;->c:Lcom/truecaller/messaging/data/types/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/a/c/d$u;->b:Le/a/a/c/d;

    .line 2
    iget-object p1, p1, Le/a/a/c/d;->i0:Le/a/a/c/k/a/j;

    .line 3
    iget-object v0, p0, Le/a/a/c/d$u;->c:Lcom/truecaller/messaging/data/types/Message;

    iget-object v1, p0, Le/a/a/c/d$u;->a:Lcom/truecaller/messaging/data/types/QuickAction;

    .line 4
    iget-object v1, v1, Lcom/truecaller/messaging/data/types/QuickAction;->d:Ljava/lang/String;

    .line 5
    invoke-interface {p1, v0, v1}, Le/a/a/c/k/a/j;->i(Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;)V

    return-void
.end method
