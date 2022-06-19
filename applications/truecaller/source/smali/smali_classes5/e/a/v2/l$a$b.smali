.class public final Le/a/v2/l$a$b;
.super Le/a/v2/l$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/v2/l$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final b:Le/a/v2/l$a$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/v2/l$a$b;

    invoke-direct {v0}, Le/a/v2/l$a$b;-><init>()V

    sput-object v0, Le/a/v2/l$a$b;->b:Le/a/v2/l$a$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Le/a/v2/l$a;-><init>(ZLs1/z/c/f;)V

    return-void
.end method
