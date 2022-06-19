.class public final Le/a/a0/g$b;
.super Le/a/a0/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Le/a/a0/g$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/a0/g$b;

    invoke-direct {v0}, Le/a/a0/g$b;-><init>()V

    sput-object v0, Le/a/a0/g$b;->a:Le/a/a0/g$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/a0/g;-><init>(Ls1/z/c/f;)V

    return-void
.end method
