.class public final Le/a/k0/n/b/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k0/b;


# instance fields
.field public final synthetic a:Le/a/k0/n/b/k;


# direct methods
.method public constructor <init>(Le/a/k0/n/b/k;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/k0/n/b/o;->a:Le/a/k0/n/b/k;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/k0/n/b/o;->a:Le/a/k0/n/b/k;

    .line 2
    iget-object v0, p1, Le/a/k0/n/b/k;->b:Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Le/a/k0/n/b/k;->a:Le/a/k0/n/b/i;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Le/a/k0/n/b/i;->b(Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;)V

    :cond_0
    return-void
.end method
