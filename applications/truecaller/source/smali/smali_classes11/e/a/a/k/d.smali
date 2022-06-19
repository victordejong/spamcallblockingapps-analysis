.class public final synthetic Le/a/a/k/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Predicate;


# instance fields
.field public final synthetic a:Le/a/a/k/u;

.field public final synthetic b:I

.field public final synthetic c:Lcom/truecaller/messaging/data/types/Message;

.field public final synthetic d:[Lcom/truecaller/data/entity/messaging/Participant;


# direct methods
.method public synthetic constructor <init>(Le/a/a/k/u;ILcom/truecaller/messaging/data/types/Message;[Lcom/truecaller/data/entity/messaging/Participant;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/k/d;->a:Le/a/a/k/u;

    iput p2, p0, Le/a/a/k/d;->b:I

    iput-object p3, p0, Le/a/a/k/d;->c:Lcom/truecaller/messaging/data/types/Message;

    iput-object p4, p0, Le/a/a/k/d;->d:[Lcom/truecaller/data/entity/messaging/Participant;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 5

    iget-object v0, p0, Le/a/a/k/d;->a:Le/a/a/k/u;

    iget v1, p0, Le/a/a/k/d;->b:I

    iget-object v2, p0, Le/a/a/k/d;->c:Lcom/truecaller/messaging/data/types/Message;

    iget-object v3, p0, Le/a/a/k/d;->d:[Lcom/truecaller/data/entity/messaging/Participant;

    check-cast p1, Ljava/lang/Integer;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Le/a/a/k/u;->x(I)Le/a/a/k/q;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v4, 0x0

    if-eq p1, v1, :cond_3

    invoke-interface {v0, v2}, Le/a/a/k/q;->i(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    array-length p1, v3

    move v1, v4

    :goto_0
    if-ge v1, p1, :cond_2

    aget-object v2, v3, v1

    .line 5
    invoke-interface {v0, v2}, Le/a/a/k/q;->x(Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    :cond_3
    :goto_1
    return v4
.end method
