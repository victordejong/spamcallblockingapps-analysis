.class public final synthetic Le/m/d/y/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/b/e;


# static fields
.field public static final synthetic a:Le/m/d/y/f0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/d/y/f0;

    invoke-direct {v0}, Le/m/d/y/f0;-><init>()V

    sput-object v0, Le/m/d/y/f0;->a:Le/m/d/y/f0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Le/m/d/y/e1/b;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_messaging/zze;->zzc(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1
.end method
