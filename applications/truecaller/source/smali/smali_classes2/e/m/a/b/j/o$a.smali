.class public final Le/m/a/b/j/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/b/j/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Le/m/a/b/j/o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/m/a/b/j/o;

    invoke-direct {v0}, Le/m/a/b/j/o;-><init>()V

    sput-object v0, Le/m/a/b/j/o$a;->a:Le/m/a/b/j/o;

    return-void
.end method
