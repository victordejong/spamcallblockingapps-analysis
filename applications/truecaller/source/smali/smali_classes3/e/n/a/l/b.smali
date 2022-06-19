.class public Le/n/a/l/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/CloseableLayout$OnCloseListener;


# instance fields
.field public final synthetic a:Le/n/a/l/c;


# direct methods
.method public constructor <init>(Le/n/a/l/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/n/a/l/b;->a:Le/n/a/l/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/n/a/l/b;->a:Le/n/a/l/c;

    .line 2
    iget-object v0, v0, Le/n/a/l/c;->r:Le/n/a/l/c$b;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Le/n/a/l/c$b;->onCloseClick()V

    :cond_0
    return-void
.end method
