.class public final Le/a/g0/k/e$a;
.super Le/a/g0/k/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/g0/k/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Le/a/g0/k/a;


# direct methods
.method public constructor <init>(Le/a/g0/k/a;Le/a/d4/e;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "engine"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p2, v0}, Le/a/g0/k/e;-><init>(Le/a/d4/e;Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/g0/k/e$a;->b:Le/a/g0/k/a;

    return-void
.end method
