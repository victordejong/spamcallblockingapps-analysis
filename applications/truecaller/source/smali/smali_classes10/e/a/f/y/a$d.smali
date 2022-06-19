.class public final Le/a/f/y/a$d;
.super Le/a/f/y/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/f/y/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final a:Le/a/f/y/a$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/f/y/a$d;

    invoke-direct {v0}, Le/a/f/y/a$d;-><init>()V

    sput-object v0, Le/a/f/y/a$d;->a:Le/a/f/y/a$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/f/y/a;-><init>(Ls1/z/c/f;)V

    return-void
.end method
