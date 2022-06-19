.class public Le/m/a/g/u/m$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/g/u/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Le/m/a/g/u/m;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/m/a/g/u/m;

    invoke-direct {v0}, Le/m/a/g/u/m;-><init>()V

    sput-object v0, Le/m/a/g/u/m$a;->a:Le/m/a/g/u/m;

    return-void
.end method
