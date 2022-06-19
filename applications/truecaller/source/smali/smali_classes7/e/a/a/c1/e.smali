.class public final Le/a/a/c1/e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/k<",
        "+",
        "Lcom/truecaller/messaging/data/types/Draft;",
        "+",
        "Lcom/truecaller/messaging/data/types/Message;",
        ">;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/a/c1/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/a/c1/e;

    invoke-direct {v0}, Le/a/a/c1/e;-><init>()V

    sput-object v0, Le/a/a/c1/e;->b:Le/a/a/c1/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ls1/k;

    const-string v0, "<name for destructuring parameter 0>"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 4
    check-cast p1, Lcom/truecaller/messaging/data/types/Draft;

    .line 5
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Draft;->e:[Lcom/truecaller/data/entity/messaging/Participant;

    array-length p1, p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
