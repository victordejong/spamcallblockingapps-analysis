.class public final Le/a/b0/n/h$b;
.super Le/a/b0/n/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b0/n/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final c:Le/a/b0/n/h$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/b0/n/h$b;

    invoke-direct {v0}, Le/a/b0/n/h$b;-><init>()V

    sput-object v0, Le/a/b0/n/h$b;->c:Le/a/b0/n/h$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x193

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Le/a/b0/n/h;-><init>(ILs1/z/c/f;)V

    return-void
.end method
