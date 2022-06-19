.class public final Le/a/c/f/k/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/c/f/k/b$a;
    }
.end annotation


# static fields
.field public static final a:Ls1/d0/i;

.field public static final b:Le/a/c/f/k/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ls1/d0/i;

    const/4 v1, 0x2

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ls1/d0/i;-><init>(II)V

    sput-object v0, Le/a/c/f/k/b;->a:Ls1/d0/i;

    return-void
.end method
