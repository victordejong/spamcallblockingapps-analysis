.class public final Le/a/c/a/m/b/c;
.super Ln3/v/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/c/a/m/b/c$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0001\nB\u000f\u0012\u0006\u0010\u0010\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\"\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006R\u001c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0013"
    }
    d2 = {
        "Le/a/c/a/m/b/c;",
        "Ln3/v/y0;",
        "Landroidx/lifecycle/LiveData;",
        "Ln3/z/q1;",
        "Lcom/truecaller/insights/models/pdo/SmsBackupMessage;",
        "b",
        "Landroidx/lifecycle/LiveData;",
        "searchResultsLiveData",
        "Ln3/v/k0;",
        "",
        "a",
        "Ln3/v/k0;",
        "searchQueryLiveData",
        "Le/a/c/i/f/a;",
        "c",
        "Le/a/c/i/f/a;",
        "ftsRepository",
        "<init>",
        "(Le/a/c/i/f/a;)V",
        "insights-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final a:Ln3/v/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/v/k0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ln3/z/q1<",
            "Lcom/truecaller/insights/models/pdo/SmsBackupMessage;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Le/a/c/i/f/a;


# direct methods
.method public constructor <init>(Le/a/c/i/f/a;)V
    .locals 3

    const-string v0, "ftsRepository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ln3/v/y0;-><init>()V

    iput-object p1, p0, Le/a/c/a/m/b/c;->c:Le/a/c/i/f/a;

    .line 2
    new-instance p1, Ln3/v/k0;

    invoke-direct {p1}, Ln3/v/k0;-><init>()V

    iput-object p1, p0, Le/a/c/a/m/b/c;->a:Ln3/v/k0;

    .line 3
    new-instance v0, Le/a/c/a/m/b/c$b;

    invoke-direct {v0, p0}, Le/a/c/a/m/b/c$b;-><init>(Le/a/c/a/m/b/c;)V

    .line 4
    new-instance v1, Ln3/v/i0;

    invoke-direct {v1}, Ln3/v/i0;-><init>()V

    .line 5
    new-instance v2, Ln3/v/w0;

    invoke-direct {v2, v0, v1}, Ln3/v/w0;-><init>(Ln3/c/a/c/a;Ln3/v/i0;)V

    invoke-virtual {v1, p1, v2}, Ln3/v/i0;->m(Landroidx/lifecycle/LiveData;Ln3/v/l0;)V

    const-string p1, "Transformations.switchMa\u2026sWithString(it)\n        }"

    .line 6
    invoke-static {v1, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Le/a/c/a/m/b/c;->b:Landroidx/lifecycle/LiveData;

    return-void
.end method
