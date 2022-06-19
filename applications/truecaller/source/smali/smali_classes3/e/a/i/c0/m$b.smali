.class public final Le/a/i/c0/m$b;
.super Le/a/i/c0/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/i/c0/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final c:Le/a/i/c0/m$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/i/c0/m$b;

    invoke-direct {v0}, Le/a/i/c0/m$b;-><init>()V

    sput-object v0, Le/a/i/c0/m$b;->c:Le/a/i/c0/m$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x190

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Le/a/i/c0/m;-><init>(ILs1/z/c/f;)V

    return-void
.end method
