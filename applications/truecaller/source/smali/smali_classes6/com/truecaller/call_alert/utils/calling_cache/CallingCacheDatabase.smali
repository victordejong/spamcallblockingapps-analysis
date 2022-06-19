.class public abstract Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase;
.super Ln3/c0/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\'\u0018\u0000 \u00072\u00020\u0001:\u0001\u0008B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase;",
        "Ln3/c0/q;",
        "Le/a/e3/k/s/a;",
        "a",
        "()Le/a/e3/k/s/a;",
        "<init>",
        "()V",
        "c",
        "b",
        "call-alert_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static a:Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase;

.field public static final b:Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase$a;

.field public static final c:Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase$b;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase;->c:Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase$b;

    .line 1
    new-instance v0, Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase$a;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase$a;-><init>(II)V

    sput-object v0, Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase;->b:Lcom/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/c0/q;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Le/a/e3/k/s/a;
.end method
