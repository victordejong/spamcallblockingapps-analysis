.class public Le/d/e/v;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final a:Le/d/e/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/d/e/v;->a:Le/d/e/l;

    return-void
.end method

.method public constructor <init>(Le/d/e/l;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 4
    iput-object p1, p0, Le/d/e/v;->a:Le/d/e/l;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Le/d/e/v;->a:Le/d/e/l;

    return-void
.end method
