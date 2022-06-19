.class public interface abstract Lg/g/a/a/i/o/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/g/a/a/i/o/i$a;
    }
.end annotation


# static fields
.field public static final ATT_SNAP_GRANT_INFO_TYPE:Ljava/lang/String; = "AttSnapTokenGrantInfo"

.field public static final ATT_SNAP_REFRESH_GRANT_INFO_TYPE:Ljava/lang/String; = "AttSnapRefreshTokenGrantInfo"

.field public static final Companion:Lg/g/a/a/i/o/i$a;

.field public static final FIREBASE_GRANT_INFO_TYPE:Ljava/lang/String; = "FirebaseTokenGrantInfo"

.field public static final HIYA_JWS_GRANT_INFO_TYPE:Ljava/lang/String; = "HiyaJWSGrant"

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lg/g/a/a/i/o/i$a;->$$INSTANCE:Lg/g/a/a/i/o/i$a;

    sput-object v0, Lg/g/a/a/i/o/i;->Companion:Lg/g/a/a/i/o/i$a;

    return-void
.end method


# virtual methods
.method public abstract getType()Ljava/lang/String;
.end method
