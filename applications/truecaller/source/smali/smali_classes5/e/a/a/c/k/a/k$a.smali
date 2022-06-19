.class public final Le/a/a/c/k/a/k$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/k/a/k;->E(Lcom/truecaller/messaging/data/types/Message;Le/a/a/c/a7;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Integer;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/messaging/data/types/ReplySnippet;

.field public final synthetic c:Le/a/a/c/k/a/k;

.field public final synthetic d:Le/a/a/c/a7;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/data/types/ReplySnippet;Le/a/a/c/k/a/k;Le/a/a/c/a7;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/k/a/k$a;->b:Lcom/truecaller/messaging/data/types/ReplySnippet;

    iput-object p2, p0, Le/a/a/c/k/a/k$a;->c:Le/a/a/c/k/a/k;

    iput-object p3, p0, Le/a/a/c/k/a/k$a;->d:Le/a/a/c/a7;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 2
    iget-object p1, p0, Le/a/a/c/k/a/k$a;->c:Le/a/a/c/k/a/k;

    iget-object v0, p0, Le/a/a/c/k/a/k$a;->b:Lcom/truecaller/messaging/data/types/ReplySnippet;

    .line 3
    iget-object p1, p1, Le/a/a/c/k/a/a;->f:Le/a/a/c/k/a/j$b;

    invoke-interface {p1, v0}, Le/a/a/c/k/a/j$b;->Zg(Lcom/truecaller/messaging/data/types/ReplySnippet;)V

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
