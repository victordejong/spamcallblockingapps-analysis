.class public final Le/a/r/a0/e;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/r/a0/e$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0000\u0018\u0000 \u00162\u00020\u0001:\u0001\u000fB\u0007\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R$\u0010\u0007\u001a\u0010\u0012\u000c\u0012\n \u0004*\u0004\u0018\u00010\u00030\u00030\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006R\u001c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR$\u0010\u0011\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0012\u0004\u0012\u00020\t0\r8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u000b\u00a8\u0006\u0017"
    }
    d2 = {
        "Le/a/r/a0/e;",
        "Landroidx/fragment/app/Fragment;",
        "Ln3/a/e/b;",
        "Landroidx/activity/result/IntentSenderRequest;",
        "kotlin.jvm.PlatformType",
        "d",
        "Ln3/a/e/b;",
        "activityResultLauncher",
        "Lkotlin/Function0;",
        "Ls1/s;",
        "b",
        "Ls1/z/b/a;",
        "onManualInputSelected",
        "Lkotlin/Function1;",
        "",
        "a",
        "Ls1/z/b/l;",
        "onPhoneNumberSelected",
        "c",
        "onNoPhoneNumbersAvailable",
        "<init>",
        "()V",
        "e",
        "wizard-tc_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final e:Le/a/r/a0/e$a;


# instance fields
.field public a:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/String;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ln3/a/e/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/a/e/b<",
            "Landroidx/activity/result/IntentSenderRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/a/r/a0/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/r/a0/e$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Le/a/r/a0/e;->e:Le/a/r/a0/e$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Ln3/a/e/d/e;

    invoke-direct {v0}, Ln3/a/e/d/e;-><init>()V

    new-instance v1, Le/a/r/a0/e$b;

    invoke-direct {v1, p0}, Le/a/r/a0/e$b;-><init>(Le/a/r/a0/e;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Ln3/a/e/d/a;Ln3/a/e/a;)Ln3/a/e/b;

    move-result-object v0

    const-string v1, "registerForActivityResul\u2026 }\n        remove()\n    }"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Le/a/r/a0/e;->d:Ln3/a/e/b;

    return-void
.end method
