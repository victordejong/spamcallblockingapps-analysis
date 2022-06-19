.class public final Le/a/a/k/a/j0;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Lcom/truecaller/api/services/messenger/v1/events/Event;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/k/a/m0;


# direct methods
.method public constructor <init>(Le/a/a/k/a/m0;)V
    .locals 0

    iput-object p1, p0, Le/a/a/k/a/j0;->b:Le/a/a/k/a/m0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lcom/truecaller/api/services/messenger/v1/events/Event;

    const-string v0, "event"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/a/k/a/j0;->b:Le/a/a/k/a/m0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, p1, v1, v2, v1}, Le/a/a/k/a/m0;->I(Lcom/truecaller/api/services/messenger/v1/events/Event;IZZ)V

    .line 5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
