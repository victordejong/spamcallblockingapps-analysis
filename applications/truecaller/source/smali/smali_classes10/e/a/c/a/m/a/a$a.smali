.class public final Le/a/c/a/m/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/c/a/m/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static a:Le/a/c/a/m/a/a;

.field public static final synthetic b:Le/a/c/a/m/a/a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/c/a/m/a/a$a;

    invoke-direct {v0}, Le/a/c/a/m/a/a$a;-><init>()V

    sput-object v0, Le/a/c/a/m/a/a$a;->b:Le/a/c/a/m/a/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
