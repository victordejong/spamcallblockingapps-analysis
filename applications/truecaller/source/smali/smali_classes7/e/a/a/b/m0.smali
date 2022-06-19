.class public final Le/a/a/b/m0;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Lcom/truecaller/messaging/data/types/Conversation;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/b/n0;


# direct methods
.method public constructor <init>(Le/a/a/b/n0;)V
    .locals 0

    iput-object p1, p0, Le/a/a/b/m0;->b:Le/a/a/b/n0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/truecaller/messaging/data/types/Conversation;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/a/b/m0;->b:Le/a/a/b/n0;

    .line 4
    iget-object v0, v0, Le/a/a/b/n0;->d:Le/a/a/i1/b;

    .line 5
    invoke-interface {v0, p1}, Le/a/a/i1/b;->n(Lcom/truecaller/messaging/data/types/Conversation;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
