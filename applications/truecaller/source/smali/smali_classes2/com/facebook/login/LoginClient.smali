.class public Lcom/facebook/login/LoginClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/LoginClient$c;,
        Lcom/facebook/login/LoginClient$a;,
        Lcom/facebook/login/LoginClient$Request;,
        Lcom/facebook/login/LoginClient$Result;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010$\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u0017\u0018\u0000 q2\u00020\u0001:\u0005pqrstB\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u001e\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020\u001c2\u0006\u0010!\u001a\u00020\u001c2\u0006\u0010H\u001a\u00020\u0013J \u0010I\u001a\u00020F2\u0006\u0010G\u001a\u00020\u001c2\u0006\u0010!\u001a\u00020\u001c2\u0006\u0010H\u001a\u00020\u0013H\u0002J\u0010\u0010J\u001a\u00020F2\u0008\u0010K\u001a\u0004\u0018\u00010@J\u0006\u0010L\u001a\u00020FJ\u0006\u0010M\u001a\u00020\u0013J\u000e\u0010N\u001a\u00020\u00192\u0006\u0010O\u001a\u00020\u001cJ\u000e\u0010P\u001a\u00020F2\u0006\u0010Q\u001a\u00020RJ\u000e\u0010S\u001a\u00020F2\u0006\u0010Q\u001a\u00020RJ\u0008\u0010T\u001a\u00020FH\u0002J\u0008\u0010U\u001a\u00020\u0019H\u0016J\u0008\u0010V\u001a\u0004\u0018\u00010\'J\u001d\u0010(\u001a\n\u0012\u0004\u0012\u00020\'\u0018\u00010&2\u0006\u0010K\u001a\u00020@H\u0014\u00a2\u0006\u0002\u0010WJ2\u0010X\u001a\u00020F2\u0006\u0010Y\u001a\u00020\u001c2\u0006\u0010Z\u001a\u00020R2\u0018\u00103\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u001c\u0018\u00010[H\u0002JF\u0010X\u001a\u00020F2\u0006\u0010Y\u001a\u00020\u001c2\u0006\u0010Z\u001a\u00020\u001c2\u0008\u0010\\\u001a\u0004\u0018\u00010\u001c2\u0008\u0010]\u001a\u0004\u0018\u00010\u001c2\u0018\u00103\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u001c\u0018\u00010[H\u0002J\u0006\u0010^\u001a\u00020FJ\u0006\u0010_\u001a\u00020FJ\u0010\u0010`\u001a\u00020F2\u0006\u0010Q\u001a\u00020RH\u0002J \u0010a\u001a\u00020\u00132\u0006\u0010b\u001a\u00020\u00192\u0006\u0010c\u001a\u00020\u00192\u0008\u0010d\u001a\u0004\u0018\u00010eJ\u0010\u0010f\u001a\u00020F2\u0006\u0010g\u001a\u00020\u0019H\u0004J\u0010\u0010h\u001a\u00020F2\u0008\u0010K\u001a\u0004\u0018\u00010@J\u0006\u0010i\u001a\u00020\u0013J\u0006\u0010j\u001a\u00020FJ\u000e\u0010k\u001a\u00020F2\u0006\u0010l\u001a\u00020RJ\u0018\u0010m\u001a\u00020F2\u0006\u0010n\u001a\u00020\u00062\u0006\u0010o\u001a\u00020\u0019H\u0016R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R(\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R(\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010!\u001a\u0004\u0018\u00010\u0003@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010\u0004R$\u0010%\u001a\n\u0012\u0004\u0012\u00020\'\u0018\u00010&X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010,\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\u0011\u0010-\u001a\u00020\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010\u0015R\u0014\u0010/\u001a\u0002008BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00081\u00102R(\u00103\u001a\u0010\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u0010\u001e\"\u0004\u00085\u0010 R\u0010\u00106\u001a\u0004\u0018\u000100X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00107\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00108\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u00109\u001a\u0004\u0018\u00010:X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R\u001c\u0010?\u001a\u0004\u0018\u00010@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010D\u00a8\u0006u"
    }
    d2 = {
        "Lcom/facebook/login/LoginClient;",
        "Landroid/os/Parcelable;",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "(Landroidx/fragment/app/Fragment;)V",
        "source",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
        "getActivity",
        "()Landroidx/fragment/app/FragmentActivity;",
        "backgroundProcessingListener",
        "Lcom/facebook/login/LoginClient$BackgroundProcessingListener;",
        "getBackgroundProcessingListener",
        "()Lcom/facebook/login/LoginClient$BackgroundProcessingListener;",
        "setBackgroundProcessingListener",
        "(Lcom/facebook/login/LoginClient$BackgroundProcessingListener;)V",
        "checkedInternetPermission",
        "",
        "getCheckedInternetPermission",
        "()Z",
        "setCheckedInternetPermission",
        "(Z)V",
        "currentHandler",
        "",
        "extraData",
        "",
        "",
        "getExtraData",
        "()Ljava/util/Map;",
        "setExtraData",
        "(Ljava/util/Map;)V",
        "value",
        "getFragment",
        "()Landroidx/fragment/app/Fragment;",
        "setFragment",
        "handlersToTry",
        "",
        "Lcom/facebook/login/LoginMethodHandler;",
        "getHandlersToTry",
        "()[Lcom/facebook/login/LoginMethodHandler;",
        "setHandlersToTry",
        "([Lcom/facebook/login/LoginMethodHandler;)V",
        "[Lcom/facebook/login/LoginMethodHandler;",
        "inProgress",
        "getInProgress",
        "logger",
        "Lcom/facebook/login/LoginLogger;",
        "getLogger",
        "()Lcom/facebook/login/LoginLogger;",
        "loggingExtras",
        "getLoggingExtras",
        "setLoggingExtras",
        "loginLogger",
        "numActivitiesReturned",
        "numTotalIntentsFired",
        "onCompletedListener",
        "Lcom/facebook/login/LoginClient$OnCompletedListener;",
        "getOnCompletedListener",
        "()Lcom/facebook/login/LoginClient$OnCompletedListener;",
        "setOnCompletedListener",
        "(Lcom/facebook/login/LoginClient$OnCompletedListener;)V",
        "pendingRequest",
        "Lcom/facebook/login/LoginClient$Request;",
        "getPendingRequest",
        "()Lcom/facebook/login/LoginClient$Request;",
        "setPendingRequest",
        "(Lcom/facebook/login/LoginClient$Request;)V",
        "addExtraData",
        "",
        "key",
        "accumulate",
        "addLoggingExtra",
        "authorize",
        "request",
        "cancelCurrentHandler",
        "checkInternetPermission",
        "checkPermission",
        "permission",
        "complete",
        "outcome",
        "Lcom/facebook/login/LoginClient$Result;",
        "completeAndValidate",
        "completeWithFailure",
        "describeContents",
        "getCurrentHandler",
        "(Lcom/facebook/login/LoginClient$Request;)[Lcom/facebook/login/LoginMethodHandler;",
        "logAuthorizationMethodComplete",
        "method",
        "result",
        "",
        "errorMessage",
        "errorCode",
        "notifyBackgroundProcessingStart",
        "notifyBackgroundProcessingStop",
        "notifyOnCompleteListener",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "setCurrentHandlerIndex",
        "index",
        "startOrContinueAuth",
        "tryCurrentHandler",
        "tryNextHandler",
        "validateSameFbidAndFinish",
        "pendingResult",
        "writeToParcel",
        "dest",
        "flags",
        "BackgroundProcessingListener",
        "Companion",
        "OnCompletedListener",
        "Request",
        "Result",
        "facebook-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/login/LoginClient;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:[Lcom/facebook/login/LoginMethodHandler;

.field public b:I

.field public c:Landroidx/fragment/app/Fragment;

.field public d:Lcom/facebook/login/LoginClient$c;

.field public e:Lcom/facebook/login/LoginClient$a;

.field public f:Z

.field public g:Lcom/facebook/login/LoginClient$Request;

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lcom/facebook/login/u;

.field public k:I

.field public l:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/login/LoginClient$b;

    invoke-direct {v0}, Lcom/facebook/login/LoginClient$b;-><init>()V

    sput-object v0, Lcom/facebook/login/LoginClient;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 8

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/facebook/login/LoginClient;->b:I

    .line 8
    const-class v0, Lcom/facebook/login/LoginMethodHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Landroid/os/Parcelable;

    .line 9
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    array-length v3, v0

    move v4, v1

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v3, :cond_4

    aget-object v6, v0, v4

    .line 11
    instance-of v7, v6, Lcom/facebook/login/LoginMethodHandler;

    if-eqz v7, :cond_1

    move-object v5, v6

    check-cast v5, Lcom/facebook/login/LoginMethodHandler;

    :cond_1
    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    const-string v6, "<set-?>"

    .line 12
    invoke-static {p0, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p0, v5, Lcom/facebook/login/LoginMethodHandler;->b:Lcom/facebook/login/LoginClient;

    :goto_1
    if-eqz v5, :cond_3

    .line 14
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    new-array v0, v1, [Lcom/facebook/login/LoginMethodHandler;

    .line 15
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, [Lcom/facebook/login/LoginMethodHandler;

    .line 16
    iput-object v0, p0, Lcom/facebook/login/LoginClient;->a:[Lcom/facebook/login/LoginMethodHandler;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/login/LoginClient;->b:I

    .line 18
    const-class v0, Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/LoginClient$Request;

    iput-object v0, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    .line 19
    invoke-static {p1}, Lcom/facebook/internal/q0;->L(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_5

    move-object v0, v5

    goto :goto_2

    :cond_5
    invoke-static {v0}, Ls1/u/i;->b1(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/facebook/login/LoginClient;->h:Ljava/util/Map;

    .line 20
    invoke-static {p1}, Lcom/facebook/internal/q0;->L(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {p1}, Ls1/u/i;->b1(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    :goto_3
    iput-object v5, p0, Lcom/facebook/login/LoginClient;->i:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/facebook/login/LoginClient;->b:I

    .line 3
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->c:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    .line 4
    iput-object p1, p0, Lcom/facebook/login/LoginClient;->c:Landroidx/fragment/app/Fragment;

    return-void

    .line 5
    :cond_0
    new-instance p1, Le/j/c0;

    const-string v0, "Can\'t set fragment once it is already set."

    invoke-direct {p1, v0}, Le/j/c0;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->h:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/facebook/login/LoginClient;->h:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 3
    iput-object v0, p0, Lcom/facebook/login/LoginClient;->h:Ljava/util/Map;

    .line 4
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    .line 5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6
    :cond_2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b()Z
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/facebook/login/LoginClient;->f:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "android.permission.INTERNET"

    const-string v2, "permission"

    .line 2
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->e()Ln3/r/a/l;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v0}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    :goto_0
    if-eqz v0, :cond_6

    .line 4
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->e()Ln3/r/a/l;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move-object v2, v1

    goto :goto_1

    .line 5
    :cond_2
    sget v2, Lcom/facebook/common/R$string;->com_facebook_internet_permission_error_title:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    .line 6
    :cond_3
    sget v1, Lcom/facebook/common/R$string;->com_facebook_internet_permission_error_message:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 7
    :goto_2
    iget-object v4, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    const/4 v8, 0x0

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_4

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v1, ": "

    .line 11
    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    .line 12
    new-instance v0, Lcom/facebook/login/LoginClient$Result;

    sget-object v5, Lcom/facebook/login/LoginClient$Result$a;->d:Lcom/facebook/login/LoginClient$Result$a;

    const/4 v6, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/facebook/login/LoginClient$Result;-><init>(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/login/LoginClient$Result$a;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, v0}, Lcom/facebook/login/LoginClient;->c(Lcom/facebook/login/LoginClient$Result;)V

    const/4 v0, 0x0

    return v0

    .line 14
    :cond_6
    iput-boolean v1, p0, Lcom/facebook/login/LoginClient;->f:Z

    return v1
.end method

.method public final c(Lcom/facebook/login/LoginClient$Result;)V
    .locals 8

    const-string v0, "outcome"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->f()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Lcom/facebook/login/LoginMethodHandler;->h()Ljava/lang/String;

    move-result-object v3

    .line 3
    iget-object v7, v1, Lcom/facebook/login/LoginMethodHandler;->a:Ljava/util/Map;

    .line 4
    iget-object v1, p1, Lcom/facebook/login/LoginClient$Result;->a:Lcom/facebook/login/LoginClient$Result$a;

    .line 5
    iget-object v4, v1, Lcom/facebook/login/LoginClient$Result$a;->a:Ljava/lang/String;

    .line 6
    iget-object v5, p1, Lcom/facebook/login/LoginClient$Result;->d:Ljava/lang/String;

    iget-object v6, p1, Lcom/facebook/login/LoginClient$Result;->e:Ljava/lang/String;

    move-object v2, p0

    .line 7
    invoke-virtual/range {v2 .. v7}, Lcom/facebook/login/LoginClient;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/facebook/login/LoginClient;->h:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 9
    iput-object v1, p1, Lcom/facebook/login/LoginClient$Result;->g:Ljava/util/Map;

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/facebook/login/LoginClient;->i:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 11
    iput-object v1, p1, Lcom/facebook/login/LoginClient$Result;->h:Ljava/util/Map;

    :cond_2
    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lcom/facebook/login/LoginClient;->a:[Lcom/facebook/login/LoginMethodHandler;

    const/4 v2, -0x1

    .line 13
    iput v2, p0, Lcom/facebook/login/LoginClient;->b:I

    .line 14
    iput-object v1, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    .line 15
    iput-object v1, p0, Lcom/facebook/login/LoginClient;->h:Ljava/util/Map;

    const/4 v3, 0x0

    .line 16
    iput v3, p0, Lcom/facebook/login/LoginClient;->k:I

    .line 17
    iput v3, p0, Lcom/facebook/login/LoginClient;->l:I

    .line 18
    iget-object v4, p0, Lcom/facebook/login/LoginClient;->d:Lcom/facebook/login/LoginClient$c;

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    check-cast v4, Lcom/facebook/login/c;

    .line 19
    iget-object v4, v4, Lcom/facebook/login/c;->a:Lcom/facebook/login/t;

    .line 20
    sget v5, Lcom/facebook/login/t;->d:I

    const-string v5, "this$0"

    .line 21
    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object v1, v4, Lcom/facebook/login/t;->c:Lcom/facebook/login/LoginClient$Request;

    .line 23
    iget-object v0, p1, Lcom/facebook/login/LoginClient$Result;->a:Lcom/facebook/login/LoginClient$Result$a;

    sget-object v1, Lcom/facebook/login/LoginClient$Result$a;->c:Lcom/facebook/login/LoginClient$Result$a;

    if-ne v0, v1, :cond_4

    move v2, v3

    .line 24
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.facebook.LoginFragment:Result"

    .line 25
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 26
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 28
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    .line 29
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 30
    invoke-virtual {v0, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 31
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_5
    :goto_0
    return-void
.end method

.method public final d(Lcom/facebook/login/LoginClient$Result;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    sget-object v8, Lcom/facebook/login/LoginClient$Result$a;->d:Lcom/facebook/login/LoginClient$Result$a;

    const-string v2, "outcome"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v0, Lcom/facebook/login/LoginClient$Result;->b:Lcom/facebook/AccessToken;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/facebook/AccessToken;->l:Lcom/facebook/AccessToken$c;

    invoke-static {}, Lcom/facebook/AccessToken$c;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "pendingResult"

    .line 2
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v2, v0, Lcom/facebook/login/LoginClient$Result;->b:Lcom/facebook/AccessToken;

    if-eqz v2, :cond_2

    .line 4
    invoke-static {}, Lcom/facebook/AccessToken$c;->b()Lcom/facebook/AccessToken;

    move-result-object v2

    .line 5
    iget-object v3, v0, Lcom/facebook/login/LoginClient$Result;->b:Lcom/facebook/AccessToken;

    const-string v9, ": "

    if-eqz v2, :cond_0

    .line 6
    :try_start_0
    iget-object v2, v2, Lcom/facebook/AccessToken;->i:Ljava/lang/String;

    iget-object v3, v3, Lcom/facebook/AccessToken;->i:Ljava/lang/String;

    .line 7
    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    iget-object v11, v1, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    iget-object v13, v0, Lcom/facebook/login/LoginClient$Result;->b:Lcom/facebook/AccessToken;

    iget-object v14, v0, Lcom/facebook/login/LoginClient$Result;->c:Lcom/facebook/AuthenticationToken;

    .line 9
    new-instance v0, Lcom/facebook/login/LoginClient$Result;

    sget-object v12, Lcom/facebook/login/LoginClient$Result$a;->b:Lcom/facebook/login/LoginClient$Result$a;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lcom/facebook/login/LoginClient$Result;-><init>(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/login/LoginClient$Result$a;Lcom/facebook/AccessToken;Lcom/facebook/AuthenticationToken;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v3, v1, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    const-string v0, "User logged in as different Facebook user."

    const/4 v7, 0x0

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-static {v9, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    .line 14
    new-instance v0, Lcom/facebook/login/LoginClient$Result;

    const/4 v5, 0x0

    move-object v2, v0

    move-object v4, v8

    invoke-direct/range {v2 .. v7}, Lcom/facebook/login/LoginClient$Result;-><init>(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/login/LoginClient$Result$a;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/login/LoginClient;->c(Lcom/facebook/login/LoginClient$Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 16
    iget-object v3, v1, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    .line 17
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "Caught exception"

    .line 18
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_1
    invoke-static {v9, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    .line 21
    new-instance v0, Lcom/facebook/login/LoginClient$Result;

    const/4 v5, 0x0

    move-object v2, v0

    move-object v4, v8

    invoke-direct/range {v2 .. v7}, Lcom/facebook/login/LoginClient$Result;-><init>(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/login/LoginClient$Result$a;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1, v0}, Lcom/facebook/login/LoginClient;->c(Lcom/facebook/login/LoginClient$Result;)V

    goto :goto_1

    .line 23
    :cond_2
    new-instance v0, Le/j/c0;

    const-string v2, "Can\'t validate without a token"

    invoke-direct {v0, v2}, Le/j/c0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/facebook/login/LoginClient;->c(Lcom/facebook/login/LoginClient$Result;)V

    :goto_1
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ln3/r/a/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->c:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final f()Lcom/facebook/login/LoginMethodHandler;
    .locals 3

    .line 1
    iget v0, p0, Lcom/facebook/login/LoginClient;->b:I

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/facebook/login/LoginClient;->a:[Lcom/facebook/login/LoginMethodHandler;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    aget-object v1, v2, v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public final g()Lcom/facebook/login/u;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->j:Lcom/facebook/login/u;

    if-eqz v0, :cond_2

    .line 2
    invoke-static {v0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :goto_0
    move-object v1, v2

    goto :goto_1

    .line 3
    :cond_0
    :try_start_0
    iget-object v1, v0, Lcom/facebook/login/u;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :goto_1
    iget-object v3, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    if-nez v3, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    iget-object v2, v3, Lcom/facebook/login/LoginClient$Request;->d:Ljava/lang/String;

    .line 6
    :goto_2
    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 7
    :cond_2
    new-instance v0, Lcom/facebook/login/u;

    .line 8
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->e()Ln3/r/a/l;

    move-result-object v1

    if-nez v1, :cond_3

    sget-object v1, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->a()Landroid/content/Context;

    move-result-object v1

    .line 9
    :cond_3
    iget-object v2, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    if-nez v2, :cond_4

    sget-object v2, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->b()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 10
    :cond_4
    iget-object v2, v2, Lcom/facebook/login/LoginClient$Request;->d:Ljava/lang/String;

    .line 11
    :goto_3
    invoke-direct {v0, v1, v2}, Lcom/facebook/login/u;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    iput-object v0, p0, Lcom/facebook/login/LoginClient;->j:Lcom/facebook/login/u;

    :cond_5
    return-object v0
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p0

    .line 1
    iget-object v5, v4, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    const-string v6, "fb_mobile_login_method_complete"

    if-nez v5, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/login/LoginClient;->g()Lcom/facebook/login/u;

    move-result-object v1

    const-string v2, "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest."

    invoke-virtual {v1, v6, v2, v0}, Lcom/facebook/login/u;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/login/LoginClient;->g()Lcom/facebook/login/u;

    move-result-object v7

    .line 4
    iget-object v8, v5, Lcom/facebook/login/LoginClient$Request;->e:Ljava/lang/String;

    .line 5
    iget-boolean v5, v5, Lcom/facebook/login/LoginClient$Request;->m:Z

    if-eqz v5, :cond_1

    const-string v6, "foa_mobile_login_method_complete"

    :cond_1
    const-string v5, "6_extras"

    const-string v9, "4_error_code"

    const-string v10, "5_error_message"

    const-string v11, "2_result"

    const-string v12, "3_method"

    .line 6
    invoke-static {v7}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    goto/16 :goto_2

    .line 7
    :cond_2
    :try_start_0
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-string v4, "1_timestamp_ms"

    invoke-virtual {v13, v4, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v4, "0_auth_logger_id"

    .line 9
    invoke-virtual {v13, v4, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, ""

    .line 10
    invoke-virtual {v13, v12, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v13, v11, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v13, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v13, v9, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v13, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    .line 15
    invoke-virtual {v13, v11, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v2, :cond_4

    .line 16
    invoke-virtual {v13, v10, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v3, :cond_5

    .line 17
    invoke-virtual {v13, v9, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz p5, :cond_9

    .line 18
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_9

    .line 19
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 20
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 21
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_7

    move v8, v2

    goto :goto_1

    :cond_7
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_6

    .line 22
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v8, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 23
    :cond_8
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 24
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_9
    invoke-virtual {v13, v12, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v0, v7, Lcom/facebook/login/u;->b:Lcom/facebook/appevents/d0;

    invoke-virtual {v0, v6, v13}, Lcom/facebook/appevents/d0;->a(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 27
    invoke-static {v0, v7}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public final i()V
    .locals 20

    move-object/from16 v7, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/login/LoginClient;->f()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->h()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3
    iget-object v6, v0, Lcom/facebook/login/LoginMethodHandler;->a:Ljava/util/Map;

    const-string v3, "skipped"

    move-object/from16 v1, p0

    .line 4
    invoke-virtual/range {v1 .. v6}, Lcom/facebook/login/LoginClient;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 5
    :cond_0
    iget-object v1, v7, Lcom/facebook/login/LoginClient;->a:[Lcom/facebook/login/LoginMethodHandler;

    :goto_0
    if-eqz v1, :cond_b

    .line 6
    iget v0, v7, Lcom/facebook/login/LoginClient;->b:I

    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_b

    add-int/lit8 v0, v0, 0x1

    .line 7
    iput v0, v7, Lcom/facebook/login/LoginClient;->b:I

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/login/LoginClient;->f()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v2}, Lcom/facebook/login/LoginMethodHandler;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/login/LoginClient;->b()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "no_internet_permission"

    const-string v2, "1"

    .line 10
    invoke-virtual {v7, v0, v2, v4}, Lcom/facebook/login/LoginClient;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, v7, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    if-nez v0, :cond_3

    :goto_1
    move-object/from16 v17, v1

    goto/16 :goto_a

    .line 12
    :cond_3
    invoke-virtual {v2, v0}, Lcom/facebook/login/LoginMethodHandler;->r(Lcom/facebook/login/LoginClient$Request;)I

    move-result v5

    .line 13
    iput v4, v7, Lcom/facebook/login/LoginClient;->k:I

    const-string v6, "6_extras"

    const-string v8, "4_error_code"

    const-string v9, "5_error_message"

    const-string v10, "2_result"

    const-string v11, ""

    const-string v12, "0_auth_logger_id"

    const-string v13, "1_timestamp_ms"

    const-string v14, "3_method"

    if-lez v5, :cond_6

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/login/LoginClient;->g()Lcom/facebook/login/u;

    move-result-object v15

    .line 15
    iget-object v4, v0, Lcom/facebook/login/LoginClient$Request;->e:Ljava/lang/String;

    .line 16
    invoke-virtual {v2}, Lcom/facebook/login/LoginMethodHandler;->h()Ljava/lang/String;

    move-result-object v2

    .line 17
    iget-boolean v0, v0, Lcom/facebook/login/LoginClient$Request;->m:Z

    if-eqz v0, :cond_4

    const-string v0, "foa_mobile_login_method_start"

    goto :goto_2

    :cond_4
    const-string v0, "fb_mobile_login_method_start"

    .line 18
    :goto_2
    invoke-static {v15}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    move-object/from16 v17, v1

    goto :goto_4

    .line 19
    :cond_5
    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v18, v0

    move-object/from16 v17, v1

    .line 20
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v3, v13, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 21
    invoke-virtual {v3, v12, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v3, v14, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v3, v9, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v3, v8, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v3, v6, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v3, v14, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v0, v15, Lcom/facebook/login/u;->b:Lcom/facebook/appevents/d0;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Lcom/facebook/appevents/d0;->a(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v17, v1

    .line 29
    :goto_3
    invoke-static {v0, v15}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 30
    :goto_4
    iput v5, v7, Lcom/facebook/login/LoginClient;->l:I

    const/4 v2, 0x1

    goto :goto_8

    :cond_6
    move-object/from16 v17, v1

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/login/LoginClient;->g()Lcom/facebook/login/u;

    move-result-object v1

    .line 32
    iget-object v3, v0, Lcom/facebook/login/LoginClient$Request;->e:Ljava/lang/String;

    .line 33
    invoke-virtual {v2}, Lcom/facebook/login/LoginMethodHandler;->h()Ljava/lang/String;

    move-result-object v4

    .line 34
    iget-boolean v0, v0, Lcom/facebook/login/LoginClient$Request;->m:Z

    if-eqz v0, :cond_7

    const-string v0, "foa_mobile_login_method_not_tried"

    goto :goto_5

    :cond_7
    const-string v0, "fb_mobile_login_method_not_tried"

    .line 35
    :goto_5
    invoke-static {v1}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    goto :goto_7

    .line 36
    :cond_8
    :try_start_2
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v19, v0

    move-object/from16 v18, v1

    .line 37
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v15, v13, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 38
    invoke-virtual {v15, v12, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v15, v14, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v15, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v15, v9, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v15, v8, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v15, v6, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v15, v14, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v1, v18

    .line 45
    :try_start_4
    iget-object v0, v1, Lcom/facebook/login/u;->b:Lcom/facebook/appevents/d0;

    move-object/from16 v3, v19

    invoke-virtual {v0, v3, v15}, Lcom/facebook/appevents/d0;->a(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object/from16 v1, v18

    goto :goto_6

    :catchall_3
    move-exception v0

    .line 46
    :goto_6
    invoke-static {v0, v1}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 47
    :goto_7
    invoke-virtual {v2}, Lcom/facebook/login/LoginMethodHandler;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "not_tried"

    const/4 v2, 0x1

    invoke-virtual {v7, v1, v0, v2}, Lcom/facebook/login/LoginClient;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_8
    if-lez v5, :cond_9

    move v3, v2

    goto :goto_9

    :cond_9
    const/4 v3, 0x0

    :goto_9
    move v4, v3

    :goto_a
    if-eqz v4, :cond_a

    return-void

    :cond_a
    move-object/from16 v1, v17

    goto/16 :goto_0

    .line 48
    :cond_b
    iget-object v9, v7, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    if-eqz v9, :cond_c

    const/4 v13, 0x0

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "Login attempt failed."

    .line 50
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, ": "

    .line 51
    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v12

    .line 52
    new-instance v0, Lcom/facebook/login/LoginClient$Result;

    sget-object v10, Lcom/facebook/login/LoginClient$Result$a;->d:Lcom/facebook/login/LoginClient$Result$a;

    const/4 v11, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/facebook/login/LoginClient$Result;-><init>(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/login/LoginClient$Result$a;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v7, v0}, Lcom/facebook/login/LoginClient;->c(Lcom/facebook/login/LoginClient$Result;)V

    :cond_c
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "dest"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->a:[Lcom/facebook/login/LoginMethodHandler;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 2
    iget v0, p0, Lcom/facebook/login/LoginClient;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    iget-object p2, p0, Lcom/facebook/login/LoginClient;->h:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/facebook/internal/q0;->S(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 5
    iget-object p2, p0, Lcom/facebook/login/LoginClient;->i:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/facebook/internal/q0;->S(Landroid/os/Parcel;Ljava/util/Map;)V

    return-void
.end method
