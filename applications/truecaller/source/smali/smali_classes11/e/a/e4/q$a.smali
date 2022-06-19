.class public final Le/a/e4/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/e4/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/e4/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Le/a/e4/q$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/e4/q$a;

    invoke-direct {v0}, Le/a/e4/q$a;-><init>()V

    sput-object v0, Le/a/e4/q$a;->a:Le/a/e4/q$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Le/a/e4/p;
    .locals 0

    const-string p2, "context"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance p2, Le/a/e4/q;

    invoke-direct {p2, p1}, Le/a/e4/q;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method
