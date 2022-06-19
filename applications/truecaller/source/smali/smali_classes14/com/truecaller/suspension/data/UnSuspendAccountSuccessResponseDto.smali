.class public final Lcom/truecaller/suspension/data/UnSuspendAccountSuccessResponseDto;
.super Le/a/g0/l/d;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/suspension/data/UnSuspendAccountSuccessResponseDto$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\t\u0008\u0007\u0018\u0000 \u00132\u00020\u0001:\u0001\u0014B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u001b\u0010\r\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/truecaller/suspension/data/UnSuspendAccountSuccessResponseDto;",
        "Le/a/g0/l/d;",
        "",
        "success",
        "Z",
        "getSuccess",
        "()Z",
        "",
        "reason",
        "Ljava/lang/String;",
        "getReason",
        "()Ljava/lang/String;",
        "",
        "ttl",
        "Ljava/lang/Long;",
        "getTtl",
        "()Ljava/lang/Long;",
        "<init>",
        "(ZLjava/lang/String;Ljava/lang/Long;)V",
        "Companion",
        "a",
        "account-suspension_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/truecaller/suspension/data/UnSuspendAccountSuccessResponseDto$a;

.field public static final REASON_ERROR:Ljava/lang/String; = "error"

.field public static final REASON_INVALID:Ljava/lang/String; = "invalid"

.field public static final REASON_THROTTLED:Ljava/lang/String; = "throttled"


# instance fields
.field private final reason:Ljava/lang/String;

.field private final success:Z

.field private final ttl:Ljava/lang/Long;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/suspension/data/UnSuspendAccountSuccessResponseDto$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/suspension/data/UnSuspendAccountSuccessResponseDto$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/suspension/data/UnSuspendAccountSuccessResponseDto;->Companion:Lcom/truecaller/suspension/data/UnSuspendAccountSuccessResponseDto$a;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/Long;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/g0/l/d;-><init>(Ls1/z/c/f;)V

    iput-boolean p1, p0, Lcom/truecaller/suspension/data/UnSuspendAccountSuccessResponseDto;->success:Z

    iput-object p2, p0, Lcom/truecaller/suspension/data/UnSuspendAccountSuccessResponseDto;->reason:Ljava/lang/String;

    iput-object p3, p0, Lcom/truecaller/suspension/data/UnSuspendAccountSuccessResponseDto;->ttl:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final getReason()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/suspension/data/UnSuspendAccountSuccessResponseDto;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public final getSuccess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/suspension/data/UnSuspendAccountSuccessResponseDto;->success:Z

    return v0
.end method

.method public final getTtl()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/suspension/data/UnSuspendAccountSuccessResponseDto;->ttl:Ljava/lang/Long;

    return-object v0
.end method
