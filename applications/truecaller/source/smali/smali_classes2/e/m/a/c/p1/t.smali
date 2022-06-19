.class public final Le/m/a/c/p1/t;
.super Le/m/a/c/p1/x;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Le/m/a/c/p1/f0;

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Le/m/a/c/p1/f0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/m/a/c/p1/x;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Le/m/a/c/p1/t;->b:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Le/m/a/c/p1/t;->c:Le/m/a/c/p1/f0;

    const/16 p1, 0x1f40

    .line 5
    iput p1, p0, Le/m/a/c/p1/t;->d:I

    .line 6
    iput p1, p0, Le/m/a/c/p1/t;->e:I

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
