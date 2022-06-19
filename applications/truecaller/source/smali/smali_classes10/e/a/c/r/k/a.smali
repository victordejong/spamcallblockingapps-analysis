.class public final Le/a/c/r/k/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/c/r/k/b;

.field public final b:Le/a/c/r/k/c;


# direct methods
.method public constructor <init>(Le/a/c/r/k/b;Le/a/c/r/k/c;)V
    .locals 1

    const-string v0, "customSmartNotification"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notifActions"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/r/k/a;->a:Le/a/c/r/k/b;

    iput-object p2, p0, Le/a/c/r/k/a;->b:Le/a/c/r/k/c;

    return-void
.end method
