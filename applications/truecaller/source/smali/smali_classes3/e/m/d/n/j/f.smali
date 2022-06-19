.class public Le/m/d/n/j/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le/m/d/n/j/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/m/d/n/j/f;

    const-string v1, "FirebaseCrashlytics"

    invoke-direct {v0, v1}, Le/m/d/n/j/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    const/4 v0, 0x4

    if-le v0, p1, :cond_1

    const-string v0, "FirebaseCrashlytics"

    .line 1
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    const/4 p1, 0x6

    .line 1
    invoke-virtual {p0, p1}, Le/m/d/n/j/f;->a(I)Z

    move-result p1

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    const/4 p1, 0x5

    .line 1
    invoke-virtual {p0, p1}, Le/m/d/n/j/f;->a(I)Z

    move-result p1

    return-void
.end method
