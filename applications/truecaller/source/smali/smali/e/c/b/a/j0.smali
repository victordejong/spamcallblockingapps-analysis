.class public final synthetic Le/c/b/a/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Le/c/b/a/j0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/c/b/a/j0;

    invoke-direct {v0}, Le/c/b/a/j0;-><init>()V

    sput-object v0, Le/c/b/a/j0;->a:Le/c/b/a/j0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/amazon/device/ads/DtbDeviceRegistration;->a()V

    return-void
.end method
