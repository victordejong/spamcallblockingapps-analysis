.class public final Le/a/r/a0/i$a$a;
.super Le/a/r/a0/i$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/r/a0/i$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Le/a/r/a0/i$a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/r/a0/i$a$a;

    invoke-direct {v0}, Le/a/r/a0/i$a$a;-><init>()V

    sput-object v0, Le/a/r/a0/i$a$a;->a:Le/a/r/a0/i$a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/r/a0/i$a;-><init>(Ls1/z/c/f;)V

    return-void
.end method
