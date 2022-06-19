.class public final Le/a/g/f/f$d;
.super Le/a/g/f/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/g/f/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final a:Le/a/g/f/f$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/g/f/f$d;

    invoke-direct {v0}, Le/a/g/f/f$d;-><init>()V

    sput-object v0, Le/a/g/f/f$d;->a:Le/a/g/f/f$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/g/f/f;-><init>(Ls1/z/c/f;)V

    return-void
.end method
