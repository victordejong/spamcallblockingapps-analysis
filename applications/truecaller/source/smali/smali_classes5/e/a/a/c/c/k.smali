.class public final Le/a/a/c/c/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/conversation/draft/DraftArguments;Landroid/content/Context;)V
    .locals 1

    const-string v0, "draftArguments"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/c/k;->a:Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    iput-object p2, p0, Le/a/a/c/c/k;->b:Landroid/content/Context;

    return-void
.end method
