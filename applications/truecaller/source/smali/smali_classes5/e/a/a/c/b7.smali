.class public final Le/a/a/c/b7;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/c/d;

.field public final synthetic c:Lcom/truecaller/messaging/data/types/Message;


# direct methods
.method public constructor <init>(Le/a/a/c/d;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/messaging/data/types/Message;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/b7;->b:Le/a/a/c/d;

    iput-object p4, p0, Le/a/a/c/b7;->c:Lcom/truecaller/messaging/data/types/Message;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/b7;->b:Le/a/a/c/d;

    .line 2
    iget-object v0, v0, Le/a/a/c/d;->i0:Le/a/a/c/k/a/j;

    .line 3
    iget-object v1, p0, Le/a/a/c/b7;->c:Lcom/truecaller/messaging/data/types/Message;

    invoke-interface {v0, v1}, Le/a/a/c/k/a/j;->K0(Lcom/truecaller/messaging/data/types/Message;)V

    .line 4
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
