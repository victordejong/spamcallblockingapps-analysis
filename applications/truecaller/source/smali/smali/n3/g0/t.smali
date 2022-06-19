.class public Ln3/g0/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z

.field public static final b:Z

.field public static final c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    sput-boolean v1, Ln3/g0/t;->a:Z

    .line 2
    sput-boolean v1, Ln3/g0/t;->b:Z

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    sput-boolean v1, Ln3/g0/t;->c:Z

    return-void
.end method
