.class public final Le/a/c/y/i$f;
.super Le/a/c/y/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/c/y/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# static fields
.field public static final b:Le/a/c/y/i$f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/c/y/i$f;

    invoke-direct {v0}, Le/a/c/y/i$f;-><init>()V

    sput-object v0, Le/a/c/y/i$f;->b:Le/a/c/y/i$f;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "Delete OTP"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Le/a/c/y/i;-><init>(Ljava/lang/String;Ls1/z/c/f;)V

    return-void
.end method
