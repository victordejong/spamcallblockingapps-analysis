.class public final Le/a/j0/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/j0/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static a:Le/a/j0/n;

.field public static b:Le/a/j0/f;

.field public static final synthetic c:Le/a/j0/l$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/j0/l$a;

    invoke-direct {v0}, Le/a/j0/l$a;-><init>()V

    sput-object v0, Le/a/j0/l$a;->c:Le/a/j0/l$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
