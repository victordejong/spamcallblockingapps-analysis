.class public final Le/q/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls1/f0/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ls1/f0/h;

    const-string v1, "[. ]"

    invoke-direct {v0, v1}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/q/d/a;->a:Ls1/f0/h;

    return-void
.end method

.method public static final a(C)Z
    .locals 2

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-ge v0, p0, :cond_2

    :cond_0
    const/16 v0, 0x5a

    const/16 v1, 0x41

    if-le v1, p0, :cond_1

    goto :goto_0

    :cond_1
    if-lt v0, p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
