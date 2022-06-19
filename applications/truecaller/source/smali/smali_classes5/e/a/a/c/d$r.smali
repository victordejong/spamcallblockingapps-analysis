.class public final Le/a/a/c/d$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/d;->A3(Ljava/lang/String;Landroid/net/Uri;IILe/a/a/c/c3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/d;

.field public final synthetic b:Le/a/a/c/c3;


# direct methods
.method public constructor <init>(Le/a/a/c/d;Le/a/a/c/c3;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/d$r;->a:Le/a/a/c/d;

    iput-object p2, p0, Le/a/a/c/d$r;->b:Le/a/a/c/c3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/a/c/d$r;->a:Le/a/a/c/d;

    .line 2
    iget-object p1, p1, Le/a/a/c/d;->i0:Le/a/a/c/k/a/j;

    .line 3
    iget-object v0, p0, Le/a/a/c/d$r;->b:Le/a/a/c/c3;

    iget-object v1, v0, Le/a/a/c/c3;->d:Lcom/truecaller/messaging/data/types/Entity;

    iget-object v0, v0, Le/a/a/c/c3;->c:Lcom/truecaller/messaging/data/types/Message;

    invoke-interface {p1, v1, v0}, Le/a/a/c/k/a/j;->h1(Lcom/truecaller/messaging/data/types/Entity;Lcom/truecaller/messaging/data/types/Message;)V

    return-void
.end method
