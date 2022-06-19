.class public final Le/a/o3/b;
.super Lcom/airbnb/deeplinkdispatch/BaseDeepLinkDelegate;
.source "SourceFile"


# direct methods
.method public constructor <init>(Le/a/o3/a;Le/a/v4/w;Le/a/i/e/i/a;Le/a/f5/g/c;)V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/airbnb/deeplinkdispatch/Parser;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    .line 1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/airbnb/deeplinkdispatch/BaseDeepLinkDelegate;-><init>(Ljava/util/List;)V

    return-void
.end method
