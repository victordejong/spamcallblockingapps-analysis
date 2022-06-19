.class public Le/q/e/c/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/q/e/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Le/q/e/c/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/q/e/c/a;

    invoke-direct {v0}, Le/q/e/c/a;-><init>()V

    sput-object v0, Le/q/e/c/a$a;->a:Le/q/e/c/a;

    return-void
.end method
