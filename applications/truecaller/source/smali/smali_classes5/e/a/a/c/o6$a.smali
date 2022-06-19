.class public final Le/a/a/c/o6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/o6;->U3(Lcom/truecaller/messaging/conversation/adapter/loader/LoadHistoryType;Le/a/a/c/m6;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/m6;

.field public final synthetic b:Lcom/truecaller/messaging/conversation/adapter/loader/LoadHistoryType;


# direct methods
.method public constructor <init>(Le/a/a/c/m6;Lcom/truecaller/messaging/conversation/adapter/loader/LoadHistoryType;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/o6$a;->a:Le/a/a/c/m6;

    iput-object p2, p0, Le/a/a/c/o6$a;->b:Lcom/truecaller/messaging/conversation/adapter/loader/LoadHistoryType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/a/c/o6$a;->a:Le/a/a/c/m6;

    iget-object v0, p0, Le/a/a/c/o6$a;->b:Lcom/truecaller/messaging/conversation/adapter/loader/LoadHistoryType;

    invoke-interface {p1, v0}, Le/a/a/c/m6;->f9(Lcom/truecaller/messaging/conversation/adapter/loader/LoadHistoryType;)V

    return-void
.end method
