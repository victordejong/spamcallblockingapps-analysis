.class public final Le/a/v4/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/deeplinkdispatch/Parser;


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;

    .line 1
    new-instance v1, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;

    sget-object v2, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry$Type;->METHOD:Lcom/airbnb/deeplinkdispatch/DeepLinkEntry$Type;

    const-class v3, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivityKt;

    const-string v4, "truecallersdk://truesdk/mweb_verify_btmsheet"

    const-string v5, "getLaunchIntent"

    invoke-direct {v1, v4, v2, v3, v5}, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;-><init>(Ljava/lang/String;Lcom/airbnb/deeplinkdispatch/DeepLinkEntry$Type;Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;

    const-class v3, Lcom/truecaller/sdk/ConfirmProfileActivity;

    const-string v4, "truecallersdk://truesdk/mweb_verify"

    invoke-direct {v1, v4, v2, v3, v5}, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;-><init>(Ljava/lang/String;Lcom/airbnb/deeplinkdispatch/DeepLinkEntry$Type;Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Le/a/v4/w;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseUri(Ljava/lang/String;)Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;
    .locals 3

    .line 1
    sget-object v0, Le/a/v4/w;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;

    .line 2
    invoke-virtual {v1, p1}, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
