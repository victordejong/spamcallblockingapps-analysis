.class public final Ln3/y/b/a/f;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(ILjava/lang/Throwable;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 2
    iput p1, p0, Ln3/y/b/a/f;->a:I

    .line 3
    iput-object p2, p0, Ln3/y/b/a/f;->b:Ljava/lang/Throwable;

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    return-void
.end method

.method public static a(Ljava/lang/Exception;I)Ln3/y/b/a/f;
    .locals 2

    .line 1
    new-instance v0, Ln3/y/b/a/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Ln3/y/b/a/f;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method
