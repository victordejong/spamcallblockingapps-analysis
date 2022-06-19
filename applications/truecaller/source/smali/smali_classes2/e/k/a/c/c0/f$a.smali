.class public final Le/k/a/c/c0/f$a;
.super Le/k/a/c/c0/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/c0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Le/k/a/c/c0/f$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/k/a/c/c0/f$a;

    invoke-direct {v0}, Le/k/a/c/c0/f$a;-><init>()V

    sput-object v0, Le/k/a/c/c0/f$a;->a:Le/k/a/c/c0/f$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/k/a/c/c0/f;-><init>()V

    return-void
.end method
