.class public final Lq3/a/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0016\u0010\u0002\u001a\u00020\u00038\u0000X\u0081\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0004\u0010\u0005\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "RESUMED",
        "",
        "RESUME_TOKEN",
        "Lkotlinx/coroutines/internal/Symbol;",
        "getRESUME_TOKEN$annotations",
        "()V",
        "SUSPENDED",
        "UNDECIDED",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lq3/a/y2/x;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lq3/a/y2/x;

    const-string v1, "RESUME_TOKEN"

    invoke-direct {v0, v1}, Lq3/a/y2/x;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq3/a/p;->a:Lq3/a/y2/x;

    return-void
.end method
