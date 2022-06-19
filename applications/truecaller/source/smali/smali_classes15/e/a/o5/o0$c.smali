.class public final Le/a/o5/o0$c;
.super Le/a/o5/o0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/o5/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Le/a/o5/o0$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/o5/o0$c;

    invoke-direct {v0}, Le/a/o5/o0$c;-><init>()V

    sput-object v0, Le/a/o5/o0$c;->a:Le/a/o5/o0$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/o5/o0;-><init>(Ls1/z/c/f;)V

    return-void
.end method
