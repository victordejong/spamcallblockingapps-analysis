.class public final Le/a/d/c0/j$a;
.super Le/a/d/c0/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/d/c0/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Le/a/d/c0/j$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/d/c0/j$a;

    invoke-direct {v0}, Le/a/d/c0/j$a;-><init>()V

    sput-object v0, Le/a/d/c0/j$a;->a:Le/a/d/c0/j$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/d/c0/j;-><init>(Ls1/z/c/f;)V

    return-void
.end method
