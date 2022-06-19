.class public final Le/k/a/c/c0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/c/c0/h$a;
    }
.end annotation


# static fields
.field public static final a:Le/k/a/c/c0/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/k/a/c/c0/h;

    sget-object v1, Le/k/a/c/c0/h$a;->c:Le/k/a/c/c0/h$a;

    invoke-direct {v0, v1}, Le/k/a/c/c0/h;-><init>(Le/k/a/c/c0/h$a;)V

    sput-object v0, Le/k/a/c/c0/h;->a:Le/k/a/c/c0/h;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/c0/h$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
