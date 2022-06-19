.class Lzendesk/support/request/ReducerProgress;
.super Lt/a/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt/a/n<",
        "Lzendesk/support/request/StateProgress;",
        ">;"
    }
.end annotation


# static fields
.field private static final DECREMENT_ACTION:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final INCREMENT_ACTIONS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "CREATE_COMMENT"

    const-string v2, "LOAD_SETTINGS"

    const-string v3, "LOAD_COMMENTS_FROM_CACHE"

    const-string v4, "LOAD_COMMENT_INITIAL"

    const-string v5, "LOAD_REQUEST"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lzendesk/support/request/ReducerProgress;->INCREMENT_ACTIONS:Ljava/util/Collection;

    .line 2
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "CREATE_COMMENT_ERROR"

    const-string v2, "CREATE_COMMENT_SUCCESS"

    const-string v3, "LOAD_SETTINGS_ERROR"

    const-string v4, "LOAD_SETTINGS_SUCCESS"

    const-string v5, "CREATE_REQUEST_ERROR"

    const-string v6, "CREATE_REQUEST_SUCCESS"

    const-string v7, "LOAD_COMMENTS_INITIAL_ERROR"

    const-string v8, "LOAD_COMMENTS_INITIAL_SUCCESS"

    const-string v9, "LOAD_COMMENTS_FROM_CACHE_SUCCESS"

    const-string v10, "LOAD_COMMENTS_FROM_CACHE_ERROR"

    const-string v11, "LOAD_REQUEST_ERROR"

    const-string v12, "LOAD_REQUEST_SUCCESS"

    const-string v13, "SKIP_ACTION"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lzendesk/support/request/ReducerProgress;->DECREMENT_ACTION:Ljava/util/Collection;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lt/a/n;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getInitialState()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/request/ReducerProgress;->getInitialState()Lzendesk/support/request/StateProgress;

    move-result-object v0

    return-object v0
.end method

.method public getInitialState()Lzendesk/support/request/StateProgress;
    .locals 1

    .line 2
    new-instance v0, Lzendesk/support/request/StateProgress;

    invoke-direct {v0}, Lzendesk/support/request/StateProgress;-><init>()V

    return-object v0
.end method

.method public bridge synthetic reduce(Ljava/lang/Object;Lt/a/a;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lzendesk/support/request/StateProgress;

    invoke-virtual {p0, p1, p2}, Lzendesk/support/request/ReducerProgress;->reduce(Lzendesk/support/request/StateProgress;Lt/a/a;)Lzendesk/support/request/StateProgress;

    move-result-object p1

    return-object p1
.end method

.method public reduce(Lzendesk/support/request/StateProgress;Lt/a/a;)Lzendesk/support/request/StateProgress;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/request/StateProgress;",
            "Lt/a/a<",
            "*>;)",
            "Lzendesk/support/request/StateProgress;"
        }
    .end annotation

    .line 2
    sget-object v0, Lzendesk/support/request/ReducerProgress;->INCREMENT_ACTIONS:Ljava/util/Collection;

    invoke-virtual {p2}, Lt/a/a;->getActionType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lzendesk/support/request/StateProgress;->increment()Lzendesk/support/request/StateProgress;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    sget-object v0, Lzendesk/support/request/ReducerProgress;->DECREMENT_ACTION:Ljava/util/Collection;

    invoke-virtual {p2}, Lt/a/a;->getActionType()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p1}, Lzendesk/support/request/StateProgress;->decrement()Lzendesk/support/request/StateProgress;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
