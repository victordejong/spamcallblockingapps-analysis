.class public Lt/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt/a/i$c;,
        Lt/a/i$b;
    }
.end annotation


# static fields
.field public static final a:Lt/a/h;

.field public static final b:Lt/a/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lt/a/i$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lt/a/i$b;-><init>(Lt/a/i$a;)V

    sput-object v0, Lt/a/i;->a:Lt/a/h;

    .line 2
    new-instance v0, Lt/a/i$c;

    invoke-direct {v0, v1}, Lt/a/i$c;-><init>(Lt/a/i$a;)V

    sput-object v0, Lt/a/i;->b:Lt/a/h;

    return-void
.end method
