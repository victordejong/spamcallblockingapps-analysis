.class public final Le/a/l/g/u$a$h;
.super Le/a/l/g/u$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/l/g/u$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# static fields
.field public static final b:Le/a/l/g/u$a$h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/l/g/u$a$h;

    invoke-direct {v0}, Le/a/l/g/u$a$h;-><init>()V

    sput-object v0, Le/a/l/g/u$a$h;->b:Le/a/l/g/u$a$h;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "Server error"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Le/a/l/g/u$a;-><init>(Ljava/lang/String;Ls1/z/c/f;)V

    return-void
.end method
