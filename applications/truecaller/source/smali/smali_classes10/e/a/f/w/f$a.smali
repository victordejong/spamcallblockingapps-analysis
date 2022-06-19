.class public final Le/a/f/w/f$a;
.super Le/a/f/w/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/f/w/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Le/a/f/w/f$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/f/w/f$a;

    invoke-direct {v0}, Le/a/f/w/f$a;-><init>()V

    sput-object v0, Le/a/f/w/f$a;->a:Le/a/f/w/f$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/f/w/f;-><init>(Ls1/z/c/f;)V

    return-void
.end method
