.class public final Le/a/a/c/o5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/o5;-><init>(Lcom/truecaller/messaging/conversation/ConversationMode;Ljava/lang/Long;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/truecaller/messaging/data/types/Message;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Le/a/a/c/o5$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/a/c/o5$a;

    invoke-direct {v0}, Le/a/a/c/o5$a;-><init>()V

    sput-object v0, Le/a/a/c/o5$a;->a:Le/a/a/c/o5$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lcom/truecaller/messaging/data/types/Message;

    check-cast p2, Lcom/truecaller/messaging/data/types/Message;

    .line 2
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    iget-object v1, p2, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    invoke-virtual {v0, v1}, Lw3/b/a/e0/c;->a(Lw3/b/a/z;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    .line 4
    :cond_2
    iget-wide v0, p1, Lcom/truecaller/messaging/data/types/Message;->a:J

    iget-wide p1, p2, Lcom/truecaller/messaging/data/types/Message;->a:J

    cmp-long p1, v0, p1

    :goto_2
    return p1
.end method
