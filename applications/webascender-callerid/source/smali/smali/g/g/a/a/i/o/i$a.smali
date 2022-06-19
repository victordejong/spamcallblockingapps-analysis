.class public final Lg/g/a/a/i/o/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/g/a/a/i/o/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lg/g/a/a/i/o/i$a;

.field public static final ATT_SNAP_GRANT_INFO_TYPE:Ljava/lang/String; = "AttSnapTokenGrantInfo"

.field public static final ATT_SNAP_REFRESH_GRANT_INFO_TYPE:Ljava/lang/String; = "AttSnapRefreshTokenGrantInfo"

.field public static final FIREBASE_GRANT_INFO_TYPE:Ljava/lang/String; = "FirebaseTokenGrantInfo"

.field public static final HIYA_JWS_GRANT_INFO_TYPE:Ljava/lang/String; = "HiyaJWSGrant"

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lg/g/a/a/i/o/i$a;

    invoke-direct {v0}, Lg/g/a/a/i/o/i$a;-><init>()V

    sput-object v0, Lg/g/a/a/i/o/i$a;->$$INSTANCE:Lg/g/a/a/i/o/i$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
