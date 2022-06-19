.class Lzendesk/core/ZendeskUserProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/core/UserProvider;


# instance fields
.field private final userService:Lzendesk/core/UserService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lzendesk/core/UserService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/ZendeskUserProvider;->userService:Lzendesk/core/UserService;

    return-void
.end method
